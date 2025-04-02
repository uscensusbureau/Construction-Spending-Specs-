####v091x ####


 
series{title='V091X      Air                                               '
name='v091x'
file='v091x.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2012.1,)
comptype=add
}
spectrum{savelog=spk
}
transform{function=log print=brief}
regression {variables=(seasonal AO2013.Jul AO2016.May TC2016.Jun LS2017.May)}
arima{model=(0 1 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2020.10,) critical=4.0 print=(fts) save=(fts)}
check{print=all savelog=(lbq) }
forecast{maxlead=24 print=none}
 
x11{sigmalim=(1.8 3.0)
seasonalma=(s3x9 s3x5 s3x5 s3x9 s3x9 s3x9 s3x9 s3x5 s3x5 s3x9 s3x9 s3x9)
save=d16
appendfcst=yes
savelog=(m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 q q2 fd8 ids)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans{savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2018.1}
