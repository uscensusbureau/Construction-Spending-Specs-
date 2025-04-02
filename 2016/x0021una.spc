series{title='X0021UNA Multi-family - New'
    file='x0021una.dat' format='datevalue'
    span=(2002.1,)
    comptype=add
}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(td1coef rp2008.jul-2010.mar ao2009.mar ao2010.aug)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 [1,4])(0 1 1)}
forecast{maxlead=24 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5) seasonalma=(s3x5) appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2013.1}
