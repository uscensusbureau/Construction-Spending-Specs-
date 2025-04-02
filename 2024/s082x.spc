####S082X ####
 
series{title='S082X  Athletic Facilities                               '
name='S082X'
file='S082X.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2014.1,)
comptype=add
}
spectrum{savelog=spk
}
 
 
transform {function=log print=brief}
regression {variables=(seasonal AO2015.Jun TC2017.Jun TC2017.Sep)}
arima {model=(0 1 [1,4])(1 0 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2023.10,) critical=4.0 print=(fts) save=(fts)}
check {print=all savelog=(lbq) }
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.8 2.8)
seasonalma=(s3x9 s3x9 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9 s3x9 s3x9 s3x9 s3x9)
save=d16
appendfcst=yes
savelog=(m7 q q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2021.1}
