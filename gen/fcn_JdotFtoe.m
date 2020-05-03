function [JdotFtoe] = fcn_JdotFtoe(q,p)

JdotFtoe = zeros(2,7);

  JdotFtoe(1,1)=0;
  JdotFtoe(1,2)=0;
  JdotFtoe(1,3)=- qfhdot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*...
         sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) + p(3)*cos(q(4))*sin(q(3)) + p(3)*cos(q(3))*...
         sin(q(4))) - qfkdot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*...
         cos(q(3)) - sin(q(4))*sin(q(3)))) - thetadot*((p(2)*cos(q(3)))/2 + p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*...
         sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) + p(3)*cos(q(4))*sin(q(3)) + p(3)*...
         cos(q(3))*sin(q(4)));
  JdotFtoe(1,4)=- qfhdot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*...
         sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) + p(3)*cos(q(4))*sin(q(3)) + p(3)*cos(q(3))*...
         sin(q(4))) - thetadot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*...
         cos(q(3)) - sin(q(4))*sin(q(3))) + p(3)*cos(q(4))*sin(q(3)) + p(3)*cos(q(3))*sin(q(4))) - qfkdot*(p(4)*cos(q(5))*...
         (cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))));
  JdotFtoe(1,5)=- qfhdot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*...
         sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3)))) - qfkdot*(p(4)*cos(q(5))*(cos(q(4))*sin(q(3)) +...
          cos(q(3))*sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3)))) - thetadot*(p(4)*cos(q(5))*...
         (cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(4)*sin(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))));
  JdotFtoe(1,6)=0;
  JdotFtoe(1,7)=0;
  JdotFtoe(2,1)=0;
  JdotFtoe(2,2)=0;
  JdotFtoe(2,3)=qfhdot*(p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*...
         (cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(3)*cos(q(4))*cos(q(3)) - p(3)*sin(q(4))*sin(q(3))) + qfkdot*...
         (p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) +...
          cos(q(3))*sin(q(4)))) - thetadot*((p(2)*sin(q(3)))/2 - p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*...
         sin(q(3))) + p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) - p(3)*cos(q(4))*cos(q(3)) + p(3)*...
         sin(q(4))*sin(q(3)));
  JdotFtoe(2,4)=qfhdot*(p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*...
         (cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))) + p(3)*cos(q(4))*cos(q(3)) - p(3)*sin(q(4))*sin(q(3))) + thetadot*...
         (p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) +...
          cos(q(3))*sin(q(4))) + p(3)*cos(q(4))*cos(q(3)) - p(3)*sin(q(4))*sin(q(3))) + qfkdot*(p(4)*cos(q(5))*...
         (cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))));
  JdotFtoe(2,5)=qfhdot*(p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*...
         (cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4)))) + qfkdot*(p(4)*cos(q(5))*(cos(q(4))*cos(q(3)) - sin(q(4))*...
         sin(q(3))) - p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4)))) + thetadot*(p(4)*cos(q(5))*(cos(q(4))*...
         cos(q(3)) - sin(q(4))*sin(q(3))) - p(4)*sin(q(5))*(cos(q(4))*sin(q(3)) + cos(q(3))*sin(q(4))));
  JdotFtoe(2,6)=0;
  JdotFtoe(2,7)=0;

 