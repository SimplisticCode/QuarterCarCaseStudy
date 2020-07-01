model Suspension
  parameter Real rubber_stiffness = 127200;
  parameter Real rubber_damping = 10;
  parameter Real tire_mass = 28;
  parameter Real suspension_stiffness = 18709;
  parameter Real suspension_damping = 1300;
  parameter Real f_gravity = 9.81 * tire_mass;
  Real tire_x, tire_v, F_rubber;
  input Real car_x, car_v;
  output Real F_suspension;
  output Real a;
  Real F_total;
initial equation
  //tire_x = 0.0; // Uncoment for invalid initial state.
  a = 0.0; // Comment for invalid initial state
  tire_v = 0.0;
equation
  der(tire_x) = tire_v;
  F_total = F_rubber + F_suspension - f_gravity;
  a = (1/tire_mass) * F_total;
  der(tire_v) = a;
  F_rubber = - rubber_stiffness*tire_x - rubber_damping * tire_v;
  F_suspension = suspension_stiffness*(car_x - tire_x) + suspension_damping*(car_v - tire_v);
end Suspension;
