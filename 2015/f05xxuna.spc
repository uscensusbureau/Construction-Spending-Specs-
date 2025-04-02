series{title='F05XXUNA      EDUCATION'
  name='f05xxuna'
  file='f05xxuna.dat'
  format='datevalue'
  span=(1996.1,)
  comptype=add
}
spectrum{savelog=spk}

transform{function=log print=brief}
regression {variables=(td1coef AO2004.Oct)}
arima{model=(0 1 1)(0 1 1)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check{print=all savelog=(lbq)}
forecast{maxlead=24 print=none}

x11{sigmalim=(1.8 2.8)
  seasonalma=(s3x3)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}
#slidingspans{savelog=percent additivesa=percent numspans=2}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
