scenario = "Body-scanning";

active_buttons = 2;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
button_codes = 1,2;
response_matching = simple_matching;

begin;

picture {} default;
#hieronder noem je alle geluidsstimuli die je nodig hebt in het hele experiment.
#stimuli trials
bitmap { filename = "nederland5.jpg"; } nederland;

#uitleg van de taak, moet nog auditief worden
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
#			system_memory = true;
			caption = "Welkom bij het experiment over het schatten van afstanden.
Bij deze taak krijg je steeds twee steden in Nederland kort na elkaar te lezen.
Je moet in je hoofd een voorstelling maken van de afstand tussen die steden.
Hierna krijg je nog een stedenpaar te lezen.
Ook van dit paar moet je je de afstand voorstellen.

De taak is om te beoordelen welke afstand het grootst is.

Als het eerste paar de grootste afstand is, druk je op de linker knop.
Als het tweede paar de grootste afstand is, druk je op de rechter knop.

Druk op de linkerknop om door te gaan.";	
			};
		x = 0 ; y = 0 ;		
		};
	};      

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Zorg er voor dat je tijdens de taak je echt een voorstelling maakt van de afstanden.
Om je te helpen laten we nu kort nog even de kaart van Nederland zien.

Als het eerste paar de grootste afstand is, druk je op de linker knop.
Als het tweede paar de grootste afstand is, druk je op de rechter knop.

Probeer de kaart van Nederland die je dadelijk te zien krijgt, steeds voor je te zien tijdens het maken van de taak. 

Baseer hierop je antwoorden. 
Wacht a.u.b. met antwoorden tot het laatste woord van het scherm verdwenen is!

Druk op de linkerknop om door te gaan.";
			};
		x = 0 ; y = 0 ;		
		};
	};      

trial { 
	trial_duration = 15000;
	picture {bitmap nederland;
		x = 0 ; y = 0 ;		
		};
	};      

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Dan volgen er nu een aantal oefen trials.

Als het eerste paar de grootste afstand is, druk je op de linker knop.
Als het tweede paar de grootste afstand is, druk je op de rechter knop.

Druk op de linkerknop om te beginnen.";
			};
		x = 0 ; y = 0 ;		
		};
	};      

#code nodig voor het geven van feedback
trial {
   trial_duration = 2000;
	picture {		
			text {
			font_size = 32;
			font_color = 255,0,0;
			system_memory = true;
			caption = "fout";	
			};
		x=0; y=0;};
    code = "fout";
} wrong;
trial {
   trial_duration = 2000;
	picture {		
			text {
			font_size = 32;
			font_color = 0,255,0;
			system_memory = true;
			caption = "goed";	
			};
		x=0; y=0;};
    code = "goed";
} right;

#oefentrials, moet nog uitgebreid
TEMPLATE "oefen.tem" randomize {
# zin1: naam van 1e lichaamsdeel 
# z1code: code van het 1e lichaamsdeel voor de logfile 
# zin2: naam van 2e lichaamsdeel
# z2code: code van het 2e lichaamsdeel voor de logfile 
# antw: welke knop het goede antwoord is
# trialcode: unique trial code (conditie, trialtype)
# uitbreiden naar meerdere trials trials

# oefentrials
# nog even aanpassen. Alleen duidelijke verschillen. En voorbeeld van 3 condities.
zin11			zin12 		zin21			zin22			trialcode	antwoord;  
"Eindhoven"	"Nijmegen"	"Utrecht"	"Rotterdam"	"ENURd1"		1;
"Nijmegen"	"Utrecht"	"Eindhoven"	"Rotterdam"	"NUERe2"		2;
"Eindhoven"	"Nijmegen"	"Utrecht"	"Rotterdam"	"ENURd1"		1;
"Nijmegen"	"Utrecht"	"Eindhoven"	"Rotterdam"	"NUERe2"		2;
"Eindhoven"	"Nijmegen"	"Utrecht"	"Rotterdam"	"ENURd1"		1;
"Eindhoven"	"Nijmegen"	"Utrecht"	"Rotterdam"	"ENURd1"		1;
"Nijmegen"	"Utrecht"	"Eindhoven"	"Rotterdam"	"NUERe2"		2;

 };

trial { 
	picture default;
};

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
#			system_memory = true;
			caption = "Nu volgt het eigenlijke experiment. 
Druk op de linkerknop om te beginnen. 
Succes!";	
			};
		x = 0 ; y = 0 ;		
		};
	};      


trial { 
	picture default;
};

#eignelijke experiment, moet nog aangevuld
# blok 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
TEMPLATE "steden.tem" randomize {
# zin1: naam van 1e lichaamsdeel 
# z1code: code van het 1e lichaamsdeel voor de logfile 
# zin2: naam van 2e lichaamsdeel
# z2code: code van het 2e lichaamsdeel voor de logfile 
# trialcode: unique trial code (conditie, trialtype)
# uitbreiden naar meerdere trials trials
   
# experimenttrials van marijn
 zin11		zin12 		zin21			zin22			trialcode;  
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
"Den Haag"	"Rotterdam"	"Utrecht"	"Eindhoven"	"DRUEe2";
"Rotterdam"	"Den Haag"	"Utrecht"	"Nijmegen"	"RDENe2";
"Den Haag"	"Rotterdam"	"Eindhoven"	"Nijmegen"	"DRENe2";
};



# aflsuiting experiment
trial {
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Dit is het einde van dit experiment.";	
			};
		x = 0 ; y = 0 ;		
		};
	nothing {}; delta_time = 3547;
	};


#End   
