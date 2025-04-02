series{title='S0843UNA Concert hall or center'
    file='s0843una.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2004.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(ls2007.jan ls2006.jun ao2013.jun ls2015.apr td seasonal)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 1)(1 0 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5)
    seasonalma=(s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x9 s3x5 s3x5 s3x9 s3x9 s3x9)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
