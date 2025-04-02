series{title='S0853UNA  Golf course (and clubhouse)'
  name='s0853una'
  file='s0853una.dat'
  format='datevalue'
  span=(1993.1,)
  modelspan=(2005.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(seasonal td1coef TC2010.Dec AO2014.Dec AO2015.Jan)}
arima {model=(0 1 [3])(1 0 0)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.8 3.0)
  seasonalma=(s3x5 s3x5 s3x5 s3x9 s3x9 s3x9 s3x9 s3x9 s3x5 s3x5 s3x9 s3x5)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans {savelog=percent additivesa=percent}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
