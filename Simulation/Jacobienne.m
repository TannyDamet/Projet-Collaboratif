function [w1, w2] = fcn(u)

 q1 = u(1);

 q2 = u(2);

 dx = u(3);

 dy = u(4);

 %-------------------------------------------------------------------------
 L1 = 0 ;

 L2 = 2.3;

 L3 = 4.5;

 teta = q1;

 phi = q2 + pi/2;

 x = L3*cos(phi)*cos(teta);

 y = L3*cos(phi)*sin(teta);

 z = L3*cos(phi);   

%-------------------------------------------------------------------------

 J = [-L3*cos(phi)*sin(teta) -L3*sin(phi)*cos(teta); L3*cos(phi)*cos(teta) -L3*sin(phi)*sin(teta)];

 J_inv = inv(J);

%-------------------------------------------------------------------------

vitesse = [ dx ; dy];

w = J_inv*vitesse;

w1 = w(1);

w2 = w(2);

end
