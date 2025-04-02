series{title='S12CCUNA  Pavement Lighting                                 '
name='s12ccuna'
file='s12ccuna.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2006.1,)
comptype=add
}
spectrum{savelog=spk
}
 
 
transform {function=log print=brief}
regression {variables=(seasonal td AO2010.Jul)}
arima {model=(0 1 [1,3])}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2017.10,) critical=4.0}
check {print=all savelog=(lbq) }
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.8 2.8)
seasonalma=(s3x5)
save=d16
appendfcst=yes
savelog=(m7 q q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2015.1}
