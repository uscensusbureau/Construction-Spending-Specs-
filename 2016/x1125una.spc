series{title='X1125UNA Wind energy'
    file='x1125una.dat' format='datevalue'
    span=(2004.1,)}
spectrum{savelog=all}
transform{function=log print=brief}
regression{variables=(td seasonal)}
outlier{types=(ao ls tc) span=(2015.10,) critical=4.0}
arima{model=(0 1 0)}
forecast{maxlead=12 print=none}
estimate{print=(default +roots) savelog=all}
check{print= all savelog=all}
x11{sigmalim=(1.5 2.5) seasonalma=s3x5 appendfcst=yes
    savelog=all
}
#slidingspans{savelog=percent additivesa=percent numspans=2}
#history{estimates=(fcst sadj sadjchng) savelog=all start=2012.1}
