series{title='S0925UNA Railroad track, Bridge, etc.'
    file='s0925una.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2004.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(ao2004.may tc2005.jan tc2005.mar ao2010.feb seasonal)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(1 1 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5)
    seasonalma=(s3x5 s3x9 s3x9 s3x9 s3x5 s3x5 s3x9 s3x5 s3x5 s3x9 s3x5 s3x5)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
