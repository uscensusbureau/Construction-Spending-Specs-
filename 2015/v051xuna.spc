series{title='V051XUNA      Preschool'
  name='v051xuna'
  file='v051xuna.dat'
  format='datevalue'
  span=(1997.1,)
  modelspan=(2006.1,)
  comptype=add
}
spectrum{savelog=spk}

transform{function=log print=brief}
regression {variables=(seasonal LS2010.Jan)}
arima{model=(0 1 [3,4])(0 0 1)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check{print=all savelog=(lbq)}
forecast{maxlead=24 print=none}

x11{sigmalim=(1.8 2.8)
  seasonalma=(s3x9 s3x5 s3x9 s3x9 s3x9 s3x9 s3x9 s3x9 s3x5 s3x9 s3x9 s3x9)
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans{savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
