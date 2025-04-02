####X0021 ####
 
series{title='X0021  Multi-family - New                                '
name='X0021'
file='X0021.dat'
format='datevalue'
span=(2002.1,)
modelspan=(2013.1,)
comptype=add
}
spectrum{savelog=spk
}
 
transform{function=log print=brief}
regression {variables=(td1coef)}
arima{ model=(1 1 0)(0 1 1)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types= (ao ls tc) span=(2022.10,) critical=4.0 print=(fts) save=(fts)}
check{print=all savelog=(lbq) }
forecast{maxlead=24 print=none}
 
x11{sigmalim=(1.8 3.0)
seasonalma=(s3x3)
save=d16
appendfcst=yes
savelog=(m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 q q2 fd8 ids)
print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
 
#slidingspans{savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2020.1}
