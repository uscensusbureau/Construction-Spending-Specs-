series{title='V30XXUNA      RUBBER/PLASTICS  Plant                            '
name='v30xxuna'
file='v30xxuna.dat'
format='datevalue'
span=(2002.1,)
comptype=add
}
spectrum{savelog=spk
}
  
transform {function=log print=brief}
regression {variables=(seasonal LS2009.May LS2010.Apr TC2011.Jul)}
arima{model=(3 1 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2017.10,) critical=4.0}
check {print=all savelog=(lbq) }
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.5 2.5)
seasonalma=(s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x5)
save=d16
savelog=(m7 q q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2015.1}
