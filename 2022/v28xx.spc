####v28xx ####

 
series{title='V28XX      CHEMICAL & ALLIED  Plant                          '
name='v28xx'
file='v28xx.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2013.1,)
comptype=add
}
spectrum{savelog=spk
}
 
transform {function=log print=brief}
regression {variables=(td LS2013.Jul AO2013.Dec AO2014.Mar TC2016.Jan)}
arima {model=(0 1 [1,3])(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2021.10,) critical=4.0 print=(fts) save=(fts)}
check {print=all savelog=(lbq) }
forecast {maxlead=24 print=none}
 
x11 {sigmalim=(1.8 2.8)
seasonalma=(s3x5)
save=d16
appendfcst=yes
savelog=(m7 q2 fd8 ids m1 m2 m3 m4 m5 m6 m8 m9 m10 m11)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2019.1}
