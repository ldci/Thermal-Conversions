REBOL [ 
 Title: "MeteoConv" 
 Version: 1.0.0 
 Author: "Sylvain Maltais" 
 Purpose: {Conversion des unités de mesure de température.} 
] 
 
FahrToCent: function [Fahr] [Result] [
 Result: (5.0 / 9.0) * (Fahr - 32.0)
]
 
CentToFahr: function [Cent] [Result] [
 Result: 1.8 * Cent + 32.0
]
 
CentToKelvin: function [Cent] [Result] [
 Result: Cent + 273.16
]
 
KelvinToCent: function [Kelvin] [Result] [
 Result: Kelvin - 273.16
]
 
KelvinToFahr: function [Kelvin] [Result] [
 Result: 1.8 * (Kelvin - 273.16) + 32.0
]
 
RankineToCent: function [Rankine] [Result] [
 Result: (5.0 / 9.0) * (Rankine - 491.69)
]
 
CentToRankine: function [Celsius] [Result] [
 Result: (Celsius * 1.8) + 491.69
]
 
RankineToFahr: function [Rankine] [Result] [
 Result: Rankine - 459.69
]
 
ReaumurToCent: function [Reaumur] [Result] [
 Result: Reaumur * 5 / 4
]
 
NewtonToCent: function [Newton] [Result] [
 Result: Newton * 100 / 33
]
 
print ["0 Fahrenheit en Celsius: " (FahrToCent 0)]
print ["32 Fahrenheit en Celsius: " (FahrToCent 32)]
print ["80 Fahrenheit en Celsius: " (FahrToCent 80)]
print ""
print ["0 Celcius en Fahrenheit: " (CentToFahr 0)]
print ["30 Celcius en Fahrenheit: " (CentToFahr 30)]
print ["100 Celcius en Fahrenheit: " (CentToFahr 100)]
print ""
print ["-273.16 Celsius en Kelvin: " (CentToKelvin -273.16)]
print ["0 Celsius en Kelvin: " (CentToKelvin 0)]
print ["100 Celsius en Kelvin: " (CentToKelvin 100)]
print ""
print ["0 Kelvin en Celsius: " (KelvinToCent 0)]
print ["273,16 Kelvin en Celsius: " (KelvinToCent 273.16)]
print ["373,16 Kelvin en Celsius: " (KelvinToCent 373.16)]
print ""
print ["0 Kelvin en Fahrenheit: " (KelvinToFahr 0)]
print ["273,16 Kelvin en Fahrenheit: " (KelvinToFahr 273.16)]
print ["373,16 Kelvin en Fahrenheit: " (KelvinToFahr 373.16)]
print ""
print ["0 Rankine en Celsius: " (RankineToCent 0)]
print ["491,69 Rankine en Celsius: " (RankineToCent 491.69)]
print ["671,69 Rankine en Celsius: " (RankineToCent 671.69)]
print ""
print ["-273,16 Celsius en Rankine: " (CentToRankine -273.16)]
print ["0 Celcius en Rankine: " (CentToRankine 0)]
print ["100 Celcius en Rankine: " (CentToRankine 100.0)]
print ""
print ["0 Rankine en Fahrenheit: " (RankineToFahr 0)]
print ["491,69 Rankine en Fahrenheit: " (RankineToFahr 491.69)]
print ["671,69 Rankine en Fahrenheit: " (RankineToFahr 671.69)]
print ""
print ["0 Réaumur en Celsius: " (ReaumurToCent 0)]
print ["80 Réaumur en Celsius: " (ReaumurToCent 80)]
print ["100 Réaumur en Celsius: " (ReaumurToCent 100)]
print ""
print ["0 Newton en Celsius: " (NewtonToCent 0)]
print ["100 Newton en Celsius: " (NewtonToCent 100)]
print ["200 Newton en Celsius: " (NewtonToCent 200)]
