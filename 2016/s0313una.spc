series{title='S0313UNA Parking garage/lot'
    file='s0313una.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2003.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(td1coef tc2015.jul)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 1)(0 1 1)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.8 2.8)
    seasonalma=(s3x9 s3x9 s3x5 s3x9 s3x9 s3x9 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
