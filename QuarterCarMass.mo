model QuarterCarMass
  parameter Real quarter_car_mass = 208;
  output Real car_x, car_v;
  input Real F_suspension;
  Real F_total;
  output Real a;
  parameter Real f_gravity = 9.81 * quarter_car_mass;
initial equation
  //car_x = 0.0; // Uncoment for invalid initial state.
  a = 0.0; // Comment for invalid initial state
  car_v = 0.0;
equation
  der(car_x) = car_v;
  F_total = - F_suspension - f_gravity;
  a = (1/quarter_car_mass) * F_total;
  der(car_v) = a;
end QuarterCarMass;
