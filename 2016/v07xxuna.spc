series{title='V07XXUNA PUBLIC SAFETY'
    file='v07xxuna.dat' format='datevalue'
    span=(2002.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal ao2002.mar tc2003.jan tc2015.dec ls2010.sep)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 0)(0 0 1)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5)
    seasonalma=(s3x5 s3x5 s3x5 s3x9 s3x5 s3x9 s3x5 s3x9 s3x5 s3x5 s3x9 s3x5)
    appendfcst=yes savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
