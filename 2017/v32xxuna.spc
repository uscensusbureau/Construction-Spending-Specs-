series{title='V32XXUNA      STONE/CLAY/GLASS Plant'
name='v32xxuna'
file='v32xxuna.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2009.1,)
comptype=add
}
spectrum{savelog=spk
}
transform {function=log print=brief}
regression {variables=(td AO2013.4 AO2014.3)}
arima {model=(0 1 [2])(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2016.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}
x11 {sigmalim=(1.8 3.0)
seasonalma=(s3x5 s3x3 s3x5 s3x5 s3x5 s3x5 s3x5 s3x3 s3x5 s3x5 s3x3 s3x3)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2014.1}
