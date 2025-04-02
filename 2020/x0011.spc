series{title='X0011  Single family - New                               '
name='x0011'
file='x0011.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2004.1,)
comptype=add
}
spectrum{savelog=spk
}
 
transform{function=log print=brief}
regression {variables=(seasonal RP2006.Feb-2009.May LS2006.Mar AO2020.Feb AO2020.Apr)}
arima{model=(3 1 0)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2019.10,) critical=4.0 print=(fts) save=(fts)}
check{print=all savelog=(lbq) }
forecast{maxlead=24 print=none}
 
x11{sigmalim=(1.5 2.5)
seasonalma=(s3x9)
save=d16
appendfcst=yes
savelog=(m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 q q2 fd8 ids)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans{savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2017.1}
