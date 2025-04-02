series{title='S0712UNA  Police/Sheriff station'
  name='s0712una'
  file='s0712una.dat'
  format='datevalue'
  span=(1993.1,)
  modelspan=(1995.1,)
  comptype=add
}
spectrum{savelog=spk}

transform {function=log print=brief}
regression {variables=(seasonal tc1995.2 ao1996.1 ls1997.3 ao1998.7 tc2012.2 ao2013.5)}
arima {model=(1 1 0)(0 0 1)}
estimate {print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check {print=all savelog=(lbq)}
forecast {maxlead=24 print=none}

x11 {sigmalim=(1.8 2.8)
  seasonalma=s3x9
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans {savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
