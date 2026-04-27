--- TwoRandos
-- in1: sampling clock
-- in2: sampling clock
-- out1: random sample triggered by input 1
-- out2: random sample triggered by input 1
-- out3: random sample triggered by input 2
-- out4: random sample triggered by input 2

function init() 
  input[1]{ mode = 'change', direction = 'rising'}
  input[1].change = myChange
  input[2]{ mode = 'change', direction = 'rising'}
  input[2].change = myOtherChange
end

 myChange = function() 
  output[1].volts = math.random() * 2
  output[2].volts = math.random() * 2
end

 myOtherChange = function() 
  output[3].volts = math.random() * 2
  output[4].volts = math.random() * 2
end
