//!< 
//!<   constants.h
//!<   SV Project
//!< 
//!<   Created by Samara Frey on 02.10.17.
//!<   Copyright © 2017 Samara Frey. All rights reserved.
//!< 

#ifndef constants_h
#define constants_h


/**
 * This file contains all the constant we use for the equations
 * All the time measurments will be in ms.
 * All the potentials are in mV.
*/

const double tau = 20;      //!< ms constant
const double h = 0.1;       //!< ms constant
const double R = 20;        //!< constant
const double treshold = 20; //!< mV potential when it spikes
const double refactime = 2; //!< ms time it takes to be able to take another spike
const double J = 0.1;       //!< mV potential given by background
//const int g = 6;           //!< ratio Ji/Je -> decided by the user
const double D = 1.5;       //!< ms delay because of distance of neurons
const int bufferSize = static_cast<int>(D/h) + 1; //!<size of buffer vector -> instead of calculating it each time

//!< specific values for in-/exhibitory neurons
const double Je = 0.1;       //!< mV potential given by a exhibitory neuron
//const double Ji = -Je * g;      //!< mv potential given by a inhibitory neuron -> decision now depending on users choice

const int Ne = 10000;        //!< amount of exhib neurons
const int Ni = 2500;         //!< amount of inhib neurons

const int Ce = Ne/10;        //!< amount of connection exhibitory
const int Ci = Ni/10;        //!< amount of connection inhibitory

//! Variables for distributions - are decided by the user
//const double frequencyTh = treshold/(Ce*Je*tau);
//const double frequencyExt = 2 * frequencyTh;
//const double lambda = frequencyExt * Ne * h * Je;

#endif /* constants_h */
