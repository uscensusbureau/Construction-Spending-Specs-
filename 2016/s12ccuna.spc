series{title='S12CCUNA Pavement Lighting'
    file='s12ccuna.dat' format='datevalue'
    span=(2002.1,)
    modelspan=(2006.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal td)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 [1,3])}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5) seasonalma=(s3x5) appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
