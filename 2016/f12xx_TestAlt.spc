metadata{keys=("model.type") values=("seas.test.variation")}
series{title='F12 Highway & Street - Seasonal Test Model Alt'
    file='f12xx.dat' format='datevalue'
    span=(2002.1,)
##    modelspan=(2004.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(const seasonal td1coef)}
outlier{types=(ao ls tc)}
arima{model=(1 1 0)(0 0 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
#x11{sigmalim=(1.5 2.5)
#    seasonalma=(s3x5 s3x5 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x5)
#    appendfcst=yes savelog=all
#}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
