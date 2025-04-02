series{title='S0843  Concert hall or center                            '
name='s0843'
file='s0843.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2006.1,)
comptype=add}
spectrum{savelog=spk}
 
transform{function=log print=brief}
regression {variables=(seasonal LS2006.Jun LS2007.Jan LS2009.Jan AO2014.Nov TC2018.Jan)}
arima{model=(1 1 0)(1 0 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2019.10,) critical=4.0 print=(fts) save=(fts)}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.5 2.5)
seasonalma=(s3x9 s3x9 s3x5 s3x5 s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x9 s3x9)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2017.1}
