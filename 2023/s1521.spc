####S1521 ####
 
series{title='S1521  Dam-non power/Weir                                '
name='S1521'
file='S1521.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2009.1,)
comptype=add
}
spectrum{savelog=spk
}
 
 
transform {function=log print=brief}
regression {variables=(td seasonal TC2009.May AO2010.Feb AO2011.Jul)}
arima {model=(0 1 [1,3,4])}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2022.10,) critical=4.0 print=(fts) save=(fts)}
check {print=all savelog=(lbq) }
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.5 2.5)
seasonalma=(s3x5)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2020.1}
