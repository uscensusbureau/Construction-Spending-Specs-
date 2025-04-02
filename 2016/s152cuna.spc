series{title='S152CUNA Dredging/Mine Reclamation/Wetlands'
    file='s152cuna.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2006.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal td1coef)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 [1,3])}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.8 3.0) seasonalma=(s3x9) appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
