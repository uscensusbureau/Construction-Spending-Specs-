series{title='S082XUNA Athletic Facilities'
    file='s082xuna.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2006.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal td ls2010.nov ao2015.jun ao2007.oct)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(2 1 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5)
    seasonalma=(s3x9 s3x5 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9 s3x9 s3x5 s3x9 s3x9)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
