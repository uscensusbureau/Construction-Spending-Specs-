series{title='S0921UNA  Bus passenger terminal'
name='s0921una'
file='s0921una.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2007.1,)
comptype=add
}
spectrum{savelog=spk
}
transform {function=log print=brief}
regression {variables=(seasonal td AO2007.Oct LS2008.Jan AO2009.Jul LS2009.Jan LS2014.Feb)}
arima {model=(3 1 0)(1 0 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2016.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}
x11 {sigmalim=(1.5 2.5)
seasonalma=(s3x5 s3x5 s3x9 s3x5 s3x9 s3x9 s3x5 s3x9 s3x5 s3x5 s3x9 s3x9)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2014.1}
