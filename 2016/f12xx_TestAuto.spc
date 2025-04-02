metadata{keys=("model.type") values=("seas.test.automodel")}
series{title='F12 Highway & Street - Seasonality Test Model'
    file='f12xx.dat' format='datevalue'
    span=(2002.1,)
##    modelspan=(2004.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
automdl{savelog=amd}
regression{variables=(const seasonal)
  aictest=td savelog=aictest
}
outlier{types=(ao ls tc)}
##arima{model=(1 1 0)(0 1 1)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
#x11{sigmalim=(1.5 2.5)
#    seasonalma=(s3x5 s3x5 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x5)
#    appendfcst=yes savelog=all
#}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
