//
//  main.cpp
//  SV Project
//
//  Created by Samara Frey on 02.10.17.
//  Copyright © 2017 Samara Frey. All rights reserved.
//

#include "neuron.hpp"
#include "constants.h"

#include <cmath>
#include <cassert>
#include <iostream>
#include <random>
#include <fstream>


/**
 * Here we simulate the neuron network. We connect the neurons and give them random values.
 * We have a global clock with ticks in time steps rather then h. In addition to not always redefine the constants, there is a constant.h file to make the constants more available and easier to change.
*/

using namespace std;

//! Structure for variable values in simulation.
struct VaryValues{
    double g;
    double lambda;
};

//! Structure for Interval. Since we enter an interval for our time limitations.
struct Interval{
    double start;
    double end;
};

VaryValues askValues();
Interval setInterval();
void checkValue(const double value);
void explainValues(const VaryValues& charc, const double& Ji);

vector<int> getRandom(int nbrChoose, int i);

int main() {
    //! Ask user for different variables, to recreate desired graph
    VaryValues characteristics = askValues();
    Interval enteredI = setInterval();
    
    const double Ji = -Je * characteristics.g;
    
    //! Make sure the User knows with which values he deals with
    explainValues(characteristics, Ji);
    
    vector<Neuron> allNeuron; //!< vectors with all the neurons ex and in
    
    //! Creating a set of Neurons
    
    /*!
     Simplicitywise first store all ex (Ne) and then all in (Ni) in the allNeuron vector.
     Start with pushing back Ne exhibitory neurons, then Ni inhibitory neurons.
     */
    
    //! Pushback exhibitorys
    for(int i = 0; i < Ne; ++i){
        Neuron neuron(Je);
        allNeuron.push_back(neuron);
    }
    
    //Pushback inhibitorys
    for(int i = 0; i < Ni; ++i){
        Neuron neuron(Ji);
        allNeuron.push_back(neuron);
    }
    
    for(int j = 0; j < Ne; ++j){

        //!< generate vector (size Ce) with random nbrs from 0 to Ne-1 for exhib connections
        vector<int> randomVector1(getRandom(Ne, j));
        for(size_t p = 0; p < randomVector1.size() ; ++p){
            int neuronNbr1 = randomVector1[p];
            
            //!< having exhibitory neurons from 0th element on
            allNeuron[j].addConnect(& allNeuron[neuronNbr1]);
        }

        
        //!< generate vector (size Ci) with random nbrs from 0 to Ni-1 for inhib connections
        vector<int> randomVector2(getRandom(Ni, j));
        for(size_t k = 0; k < randomVector2.size(); ++k){
            int neuronNbr2 = randomVector2[k];
            
            //!< start having inhibitory neurons from 10'000th element on
            allNeuron[j].addConnect(& allNeuron[Ne + neuronNbr2]);
        }

    }
    
    /*!
     Connect each neuron to Ci inhib neurons.
     Start with connection exhib neurons (they are the first in the allNeuron vector, then connect inhib neurons.
     
     Attention: inhibitory neurons start from the Ne's value on and we want to go till the end which is at Ne+Ni (vector starts with 0)
    */

    for(int a = Ne; a < Ni+Ne; ++a){
       
        //!< Generate vector (size Ce) with random nbrs from 0 to Ne-1 for exhib connections
        vector<int> randomVector1(getRandom(Ne, a));
        for(size_t p = 0; p < randomVector1.size(); ++p){
            int neuronNbr1 = randomVector1[p];
            
            //!< Having exhibitory neurons from 0th element on
            allNeuron[a].addConnect(& allNeuron[neuronNbr1]);
        }
        
        //!< Generate vector (size Ci) with random nbrs from 0 to Ni-1 for inhib connections
        vector<int> randomVector2(getRandom(Ni, a));
        for(size_t k = 0; k < randomVector2.size(); ++k){
            int neuronNbr2 = randomVector2[k];
            
            //!< Start having inhibitory neurons from 10'000th element on
            allNeuron[a].addConnect(& allNeuron[Ne + neuronNbr2]);
        }
    }

    //! Start of global clock
    int time = 0;
    
    //! Time interval is user defined, external current is 0
    //! Attention: Time interval entered is in ms, we work with 0.1ms time steps
    double extCurr = 0.0;
    
    int timeStop;
    //double val = enteredI.end - enteredI.start;
    
    //! Programm works with time steps, convert time
    timeStop = enteredI.end/h;
    
    //! Open a new file
    ofstream spikes;
    spikes.open("spikes.txt");

    //! Check that file are open
    
    if(spikes.is_open()){
        cout << "The spike file is open now." << endl;
    } else {
        cout << "The spike file is still closed." << endl;
    }
    
    
    //! Check that opening of file didn't fail
    if (spikes.fail() == true){
        cout << "Error, I could not open a the spike file for you." << endl;
        return 0;
    }


    //! Entering simulation which runs for the entered time Interval
    
    /*!
     This simulation iterates for the time we entered before. It works with 0.1ms time steps and updates each neuron of the allNeuron vector for each time step. It is responsible to coordinate the receiving and giving of time spikes to connected neurons. In addition to this, we store the new generated membrane potential in a seperate file which has been opened before.
    */
    
    while(time <= timeStop){
        for(size_t i = 0; i < allNeuron.size(); ++i){
            bool spiked;
            spiked = allNeuron[i].update(time, extCurr, characteristics.lambda);
            
            //! Check if neuron spiked -> if yes tell its connected neurons
            if(spiked){
                //!< If spiked tell to buffers of connected neurons
                //!< p starts from 1 because nullptr is first element
                for(size_t p = 1; p < allNeuron[i].getConnecSize(); ++p){
                    bool worked = allNeuron[i].getConnectNeuron(static_cast<int>(p))->receive(time+(D/h)); //!< Delay added
                    
                    assert(worked == true);
                }
            }
            
        }

        ++time;
    }
    
    
    //! Store and delete data generated
    
    /*!
     Here we store the data of the spikes in a seperate file which has been opened before. We need this for being able to recreate the histogramm and other graphs. In the iteration we also free and delete the pointers of the connection vector of each neuron. The destructor of the neuron will be called automatically at the end of the programm -> no need to call it manually.
    */
    
    for(size_t i = 0; i < allNeuron.size(); ++i){
        
        //!< store the spike times for requested time interval in file
        for(size_t j = 0; j < allNeuron[i].getSpikeVectSize(); ++j){
            double val = allNeuron[i].getSpikeVect(j);
            if(val <= enteredI.end and val >= enteredI.start){
                spikes << val << '\t' << i << '\n';
            }
        }
        
        //!< free pointers and delete them
        for(size_t a = 0; allNeuron[i].getConnecSize(); ++a){
            bool destroyed = allNeuron[i].destroyConnection();
            assert(destroyed == true);
        }
    }

    //! Close the file that we have written into
    spikes.close();
    
    return 0;
}


/**
 * Getting the specific values from the user, which are characteristic to the graph. Therefore the user can create different graphs with different parameters.
 * @return characterstic: is of type VaryValues (structure) which defines the different parameters used.
 */

VaryValues askValues(){
    VaryValues characteristic;
    double val;
    cout << "Enter the a positive double for g (the ratio of Ji/Je): " << endl;
    cin >> val;
    assert(!cin.fail());
    
    double val2;
    cout << "Enter the a positive double for lambda (the value for the poisson distribution): " << endl;
    cin >> val2;
    assert(!cin.fail());
    
    checkValue(val);
    checkValue(val2);
    characteristic.g  = val;
    characteristic.lambda = val2;
    
    return characteristic;
}


/**
 * Setting the Interval bonds. Interval is a structure that has been created.
 * Entered values will always be checked.
 * @return  interval which has been entered.
 */

Interval setInterval(){
    cout << "For generating the appropriate graph, please enter the Interval you want to look at." << endl;
    double val;
    cout << "Please enter the time (ms) for the Start of the time Interval:   ";
    cin >> val;
    
    assert(!cin.fail());
    checkValue(val);
    
    double val2;
    cout << "Please enter the time (ms) for the End of the time Interval:     ";
    cin >> val2;
    
    assert(!cin.fail());
    checkValue(val2);
    
    Interval interval = {val, val2};
    return interval;
}


/**
 * Checking values. If vaules are not as expected, cout a warning message before ending programm.
 * @param value: the value that has to be checked.
*/

void checkValue(const double value){
    if (value < 0){
        cout << "Your value is impossible." << endl;
        EXIT_FAILURE;
    }
}


/**
 * This function is responsible to tell the User with which values he is dealing with.
 */

void explainValues(const VaryValues& charc, const double& Ji){
    cout << "Your are running the simulation with the following values: " << endl;
    cout << "-- g: " << charc.g << endl;
    cout << "-- lambda: " << charc.lambda << endl;
    cout << endl;
    
    cout << "Therefore your values are Je = " << Je << " and Ji = " << Ji << " ." << endl;
}


/**
 * This function is responsible to create x random numbers and store then in a vector.
 * We always need to create nbrChoose/10. Which would be Ce or Ci depending on which neuron I want to connect.
 * ATTENTION: the random number can't be i, because the neuron can technically not be connected to itself.
 * @param nbrChoose: is the "pot" of numbers where we can choose from
 * @param i: is the only number we should not generate
*/

vector<int> getRandom(int nbrChoose, int i){
    vector<int> randomNbrs (nbrChoose/10); //!< Size is 10th of nbrs to choose from (10'000 -> 1'000; 2'500 -> 250)
    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> d(0, nbrChoose-1);

    
    for(size_t k = 0; k < randomNbrs.size(); ++k){
        randomNbrs[k] = d(gen);
        assert(randomNbrs[k] >= 0);
        
        //!< Exclude the option to be connected with itself
        while(d(gen) == i){
            randomNbrs[k] = d(gen);
        }
    }
    return randomNbrs;
}







