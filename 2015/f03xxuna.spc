series{title='F03XXUNA      COMMERCIAL'
  name='f03xxuna'
  file='f03xxuna.dat'
  format='datevalue'
  span=(1996.1,)
  modelspan=(2005.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
arima{model=(2 1 0)(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.8 2.8)
  seasonalma=(s3x5 s3x9 s3x9 s3x5 s3x5 s3x5 s3x5 s3x9 s3x9 s3x9 s3x5 s3x9)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans{savelog=percent additivesa=percent numspans=2}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
