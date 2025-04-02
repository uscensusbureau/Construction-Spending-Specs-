series{title='X0013UNA  Single family - Alterations'
  name='x0013una'
  file='x0013una.dat'
  format='datevalue'
  span=(1997.1,)
  modelspan=(2002.1,)
  comptype=add
}
spectrum{savelog=spk}

transform{function=log print=brief}
arima{model=(0 1 [3])(0 1 1)}
regression {variables=(td1coef)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check{print=all savelog=(lbq)}
forecast{maxlead=24 print=none}

x11{sigmalim=(1.5 3.0)
  seasonalma=(s3x3)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans{savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
