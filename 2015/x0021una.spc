series{title='X0021UNA  Multi-family - New'
  name='x0021una'
  file='x0021una.dat'
  format='datevalue'
  span=(1997.1,)
  comptype=add
}
spectrum{savelog=spk}

transform{function=log print=brief}
arima{model=(0 1 [3])(1 0 0)}
regression {variables=(seasonal td1coef RP2008.Jul-2010.Mar AO1997.Jan AO2010.Aug)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check{print=all savelog=(lbq)}
forecast{maxlead=24 print=none}

x11{sigmalim=(1.8 3.0)
  seasonalma=s3x9
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans{savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
