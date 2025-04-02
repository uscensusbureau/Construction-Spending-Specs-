series{title='S052CUNA  Other School'
  name='s052cuna'
  file='s052cuna.dat'
  format='datevalue'
  span=(1993.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(LS2003.Jan LS2003.Apr TC2011.Jun AO2012.Apr LS2013.Oct AO2014.Jan)}
arima {model=(0 1 1)(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.8 3.0)
  seasonalma=(s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x9 s3x5 s3x5 s3x9 s3x9 s3x9)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans {savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
