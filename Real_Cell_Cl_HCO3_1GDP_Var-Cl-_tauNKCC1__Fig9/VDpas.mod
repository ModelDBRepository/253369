COMMENT

A voltage dependent passive conductance

This passive conductance encompass the experimentally determined voltage dependency of immature hippocampal CA3 neurons
The voltage dependenvy of the resistance was fitted with a Bolzmann function of the expression

g = (gmax/(1+exp(Em-E50)/slope))+gmin) * f

mit gmax = 2300 microsiemens
    gmin = 760 microsimens
    E50 = -36 mV (=Voltage at Halfmaximal Resistance)
    Em = Membrane potential
    slope = -6 
   
    f = Faktor to normalize rel conductance (siemens/cm2) to total input resistance values

ENDCOMMENT

NEURON {
	SUFFIX VDpas

	NONSPECIFIC_CURRENT i
	
        RANGE i, e, e50, g, gmin, gmax, s, f 
	
}

UNITS {
   (S) = (siemens)
   (mV) = (millivolt)
   (mA) = (milliamp)
}

PARAMETER {
      
	gmax = 0.002800 (S/cm2)
        gmin = 0.000660 (S/cm2)
        e50 = -31 (mV)
        s = -6
        f = 0.051 
        e = -60  :reversal potential of passive current
}

ASSIGNED {
	v	(mV)		: membrane potential
	i	(nA)		: total current generated by this mechanism
	g 	(uS)		: total conductance
}


BREAKPOINT {
          
        g = f*(gmax/(1+exp((v-e50)/s))+gmin)
        
	i = g * (v-e)
}


