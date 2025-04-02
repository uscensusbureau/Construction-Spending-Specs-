series{title='N0322UNA Liquor/Beer store'
    file='n0322una.dat' format='datevalue'
    span=(2002.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal tc2009.jun ao2011.dec)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 [2,3])(1 0 0)}
forecast{maxlead=24 print=brief}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 3.0)
    seasonalma=(s3x9 s3x5 s3x9 s3x9 s3x5 s3x9 s3x9 s3x5 s3x9 s3x9 s3x9 s3x9)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
