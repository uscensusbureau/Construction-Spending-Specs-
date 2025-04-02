series{title='V092X      Land'
name='v092x'
file='v092x.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2011.1,)
comptype=add
}
spectrum{savelog=spk
}
transform{function=log print=brief}
regression {variables=(AO2012.Feb seasonal td1coef AO2011.Dec)}
arima{model=(0 1 2)(1 0 0)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2018.10,) critical=4.0}
check{print=all savelog=(lbq) }
forecast{maxlead=24 print=none}
x11{sigmalim=(1.8 2.8)
seasonalma=(s3x5 s3x5 s3x5 s3x5 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9)
save=d16
appendfcst=yes
savelog=(m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 q q2 fd8 ids)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans{savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2016.1}
