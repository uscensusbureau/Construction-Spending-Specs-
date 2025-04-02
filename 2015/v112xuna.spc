series{title='V112XUNA      Other electrical'
  name='v112xuna'
  file='v112xuna.dat'
  format='datevalue'
  span=(1997.1,)
  modelspan=(2005.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(seasonal LS2006.Apr LS2008.Jan AO2008.Dec TC2011.Jan)}
arima {model=(0 1 3)(0 0 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.8 2.8)
  seasonalma=(s3x3 s3x3 s3x3 s3x5 s3x5 s3x3 s3x3 s3x3 s3x3 s3x5 s3x5 s3x3)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
