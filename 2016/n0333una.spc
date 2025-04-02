series{title='N0333UNA Shopping mall'
    file='n0333una.dat' format='datevalue'
    span=(2002.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal td ao2013.dec)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.8 2.8) seasonalma=(s3x9) appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
