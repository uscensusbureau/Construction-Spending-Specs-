series {title='X1125UNA      Wind energy'
  name='x1125una'
  file='x1125una.dat'
  format='datevalue'
	span=(2004.1,)
}
spectrum{savelog=spk}

transform{function=log print=brief}
arima{model=(0 1 0)(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=12 print=none}

x11 {sigmalim=(1.5 2.5)
  seasonalma=s3x5
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent numspans=2}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
