series{title='V042XUNA Medical building'
    file='v042xuna.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2006.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(ls2015.jun ao2015.oct ls2015.dec seasonal)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.8 2.8)
    seasonalma=(s3x5 s3x5 s3x5 s3x9 s3x9 s3x5 s3x5 s3x5 s3x5 s3x9 s3x9 s3x5)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
