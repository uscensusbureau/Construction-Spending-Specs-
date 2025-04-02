####V087X ####
 
series{title='V087X  Studios                                           '
name='V087X'
file='V087X.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2013.1,)
}
spectrum{savelog=spk}
 
transform {function=log print=brief}
arima {model=(0 1 1)(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2022.10,) critical=4.0 print=(fts) save=(fts)}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.5 3.0)
seasonalma=(s3x9 s3x5 s3x5 s3x5 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9 s3x9 s3x9)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2020.1}
