series{title='V111XUNA      Electrical'
  name='v111xuna'
  file='v111xuna.dat'
  format='datevalue'
  span=(1997.1,)
  modelspan=(2007.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(LS2010.Jan LS2011.Jan)}
arima {model=(3 1 0)(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.5 2.5)
  seasonalma=s3x5
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
