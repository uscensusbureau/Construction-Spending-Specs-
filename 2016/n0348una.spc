series{title='N0348UNA Hardware store'
    file='n0348una.dat' format='datevalue'
    span=(2002.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(seasonal ao2012.jul tc2015.apr tc2010.jun ao2012.may ao2012.dec ls2015.feb)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 1)(1 0 0)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5) seasonalma=(s3x5) appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
