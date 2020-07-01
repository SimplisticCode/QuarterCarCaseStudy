model QuarterCarCosimScenario
  Suspension s();
  QuarterCarMass cm();
equation
  s.car_x = cm.car_x;
  s.car_v = cm.car_v;
  cm.F_suspension = s.F_suspension;  
end QuarterCarCosimScenario;
