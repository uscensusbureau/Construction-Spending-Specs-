series{title='X0011UNA  Single family - New'
  name='x0011una'
  file='x0011una.dat'
  format='datevalue'
  span=(1997.1,)
  modelspan=(2001.1,)
  comptype=add
}
spectrum{savelog=spk}

transform{function=log print=brief}
regression {variables=(seasonal RP2006.Feb-2009.May LS2006.Mar)}
arima{model=(2 1 0)}
estimate{print=(default +roots) savelog=(afc aicc aic bic)}
outlier {types=(ao ls tc) span=(2014.10,) critical=4.0}
check{print=all savelog=(lbq)}
forecast{maxlead=24 print=none}

x11{sigmalim=(1.8 2.8)
  seasonalma=s3x9
  save=d16
  appendfcst=yes
  savelog=all
  print=(brief +b1f +c17 +d8 +d9 +d9a +rsf +d12 -tdaytype)
}

#slidingspans{savelog=percent additivesa=percent numspans=4}
#history {estimates=(fcst sadj sadjchng) savelog=(asa ach) start=2012.1}
