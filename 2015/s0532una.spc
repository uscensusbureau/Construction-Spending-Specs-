series{title='S0532UNA  Parking (garage/lots)'
  name='s0532una'
  file='s0532una.dat'
  format='datevalue'
  span=(1993.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(seasonal TC1995.Nov AO1996.May TC1996.Aug AO1996.Sep AO1997.Mar LS1997.Sep AO2005.Sep AO2014.Jun)}
arima{model=(0 1 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.5 3.0)
  seasonalma=(s3x5 s3x9 s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x5 s3x5 s3x9 s3x9)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans {savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
