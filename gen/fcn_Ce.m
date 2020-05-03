function [Ce] = fcn_Ce(q,qdot,p)

Ce = zeros(7,7);

  Ce(1,1)=0;
  Ce(1,2)=0;
  Ce(1,3)=p(14)*p(6)*qbhdot*sin(q(6) + q(3)) - p(13)*p(6)*qfhdot*cos(q(4) + q(3)) - p(13)*p(6)*...
         qdot(3)*cos(q(6) + q(3)) - p(13)*p(6)*qdot(3)*cos(q(4) + q(3)) - p(13)*p(6)*qbhdot*cos(q(6) + q(3)) + p(14)*...
         p(6)*qfhdot*sin(q(4) + q(3)) + p(14)*p(6)*qdot(3)*sin(q(6) + q(3)) + p(14)*p(6)*qdot(3)*sin(q(4) +...
          q(3)) - p(3)*p(7)*qbhdot*sin(q(6) + q(3)) - p(3)*p(7)*qfhdot*sin(q(4) + q(3)) - p(3)*p(7)*qdot(3)*sin(q(6) +...
          q(3)) - p(3)*p(7)*qdot(3)*sin(q(4) + q(3)) - p(11)*p(5)*qdot(3)*cos(q(3)) + p(12)*p(5)*qdot(3)*sin(q(3)) - p(15)*...
         p(7)*qbhdot*cos(q(6) + q(7) + q(3)) - p(15)*p(7)*qbkdot*cos(q(6) + q(7) + q(3)) - p(15)*p(7)*qfhdot*...
         cos(q(4) + q(5) + q(3)) - p(15)*p(7)*qfkdot*cos(q(4) + q(5) + q(3)) - p(15)*p(7)*qdot(3)*cos(q(6) + q(7) +...
          q(3)) - p(15)*p(7)*qdot(3)*cos(q(4) + q(5) + q(3)) + p(16)*p(7)*qbhdot*sin(q(6) + q(7) + q(3)) + p(16)*p(7)*...
         qbkdot*sin(q(6) + q(7) + q(3)) + p(16)*p(7)*qfhdot*sin(q(4) + q(5) + q(3)) + p(16)*p(7)*qfkdot*sin(q(4) +...
          q(5) + q(3)) + p(16)*p(7)*qdot(3)*sin(q(6) + q(7) + q(3)) + p(16)*p(7)*qdot(3)*sin(q(4) + q(5) + q(3));
  Ce(1,4)=- qfhdot*(p(15)*p(7)*cos(q(4) + q(5) + q(3)) - p(16)*p(7)*sin(q(4) + q(5) + q(3)) + p(13)*...
         p(6)*cos(q(4) + q(3)) - p(14)*p(6)*sin(q(4) + q(3)) + p(3)*p(7)*sin(q(4) + q(3))) - qdot(3)*(p(15)*p(7)*...
         cos(q(4) + q(5) + q(3)) - p(16)*p(7)*sin(q(4) + q(5) + q(3)) + p(13)*p(6)*cos(q(4) + q(3)) - p(14)*p(6)*...
         sin(q(4) + q(3)) + p(3)*p(7)*sin(q(4) + q(3))) - qfkdot*(p(15)*p(7)*cos(q(4) + q(5) + q(3)) - p(16)*p(7)*...
         sin(q(4) + q(5) + q(3)));
  Ce(1,5)=-p(7)*(p(15)*cos(q(4) + q(5) + q(3)) - p(16)*sin(q(4) + q(5) + q(3)))*(qfhdot + qfkdot + qdot(3));
  Ce(1,6)=- qbhdot*(p(15)*p(7)*cos(q(6) + q(7) + q(3)) - p(16)*p(7)*sin(q(6) + q(7) + q(3)) + p(13)*...
         p(6)*cos(q(6) + q(3)) - p(14)*p(6)*sin(q(6) + q(3)) + p(3)*p(7)*sin(q(6) + q(3))) - qdot(3)*(p(15)*p(7)*...
         cos(q(6) + q(7) + q(3)) - p(16)*p(7)*sin(q(6) + q(7) + q(3)) + p(13)*p(6)*cos(q(6) + q(3)) - p(14)*p(6)*...
         sin(q(6) + q(3)) + p(3)*p(7)*sin(q(6) + q(3))) - qbkdot*(p(15)*p(7)*cos(q(6) + q(7) + q(3)) - p(16)*p(7)*...
         sin(q(6) + q(7) + q(3)));
  Ce(1,7)=-p(7)*(p(15)*cos(q(6) + q(7) + q(3)) - p(16)*sin(q(6) + q(7) + q(3)))*(qbhdot + qbkdot + qdot(3));
  Ce(2,1)=0;
  Ce(2,2)=0;
  Ce(2,3)=p(3)*p(7)*qbhdot*cos(q(6) + q(3)) - p(14)*p(6)*qfhdot*cos(q(4) + q(3)) - p(14)*p(6)*...
         qdot(3)*cos(q(6) + q(3)) - p(14)*p(6)*qdot(3)*cos(q(4) + q(3)) - p(14)*p(6)*qbhdot*cos(q(6) + q(3)) + p(3)*...
         p(7)*qfhdot*cos(q(4) + q(3)) + p(3)*p(7)*qdot(3)*cos(q(6) + q(3)) + p(3)*p(7)*qdot(3)*cos(q(4) +...
          q(3)) - p(13)*p(6)*qbhdot*sin(q(6) + q(3)) - p(13)*p(6)*qfhdot*sin(q(4) + q(3)) - p(13)*p(6)*qdot(3)*sin(q(6) +...
          q(3)) - p(13)*p(6)*qdot(3)*sin(q(4) + q(3)) - p(12)*p(5)*qdot(3)*cos(q(3)) - p(11)*p(5)*qdot(3)*sin(q(3)) - p(16)*...
         p(7)*qbhdot*cos(q(6) + q(7) + q(3)) - p(16)*p(7)*qbkdot*cos(q(6) + q(7) + q(3)) - p(16)*p(7)*qfhdot*...
         cos(q(4) + q(5) + q(3)) - p(16)*p(7)*qfkdot*cos(q(4) + q(5) + q(3)) - p(16)*p(7)*qdot(3)*cos(q(6) + q(7) +...
          q(3)) - p(16)*p(7)*qdot(3)*cos(q(4) + q(5) + q(3)) - p(15)*p(7)*qbhdot*sin(q(6) + q(7) + q(3)) - p(15)*p(7)*...
         qbkdot*sin(q(6) + q(7) + q(3)) - p(15)*p(7)*qfhdot*sin(q(4) + q(5) + q(3)) - p(15)*p(7)*qfkdot*sin(q(4) +...
          q(5) + q(3)) - p(15)*p(7)*qdot(3)*sin(q(6) + q(7) + q(3)) - p(15)*p(7)*qdot(3)*sin(q(4) + q(5) + q(3));
  Ce(2,4)=- qfhdot*(p(16)*p(7)*cos(q(4) + q(5) + q(3)) + p(15)*p(7)*sin(q(4) + q(5) + q(3)) + p(14)*...
         p(6)*cos(q(4) + q(3)) - p(3)*p(7)*cos(q(4) + q(3)) + p(13)*p(6)*sin(q(4) + q(3))) - qdot(3)*(p(16)*p(7)*...
         cos(q(4) + q(5) + q(3)) + p(15)*p(7)*sin(q(4) + q(5) + q(3)) + p(14)*p(6)*cos(q(4) + q(3)) - p(3)*p(7)*...
         cos(q(4) + q(3)) + p(13)*p(6)*sin(q(4) + q(3))) - p(7)*qfkdot*(p(16)*cos(q(4) + q(5) + q(3)) + p(15)*...
         sin(q(4) + q(5) + q(3)));
  Ce(2,5)=-p(7)*(p(16)*cos(q(4) + q(5) + q(3)) + p(15)*sin(q(4) + q(5) + q(3)))*(qfhdot + qfkdot + qdot(3));
  Ce(2,6)=- qbhdot*(p(16)*p(7)*cos(q(6) + q(7) + q(3)) + p(15)*p(7)*sin(q(6) + q(7) + q(3)) + p(14)*...
         p(6)*cos(q(6) + q(3)) - p(3)*p(7)*cos(q(6) + q(3)) + p(13)*p(6)*sin(q(6) + q(3))) - qdot(3)*(p(16)*p(7)*...
         cos(q(6) + q(7) + q(3)) + p(15)*p(7)*sin(q(6) + q(7) + q(3)) + p(14)*p(6)*cos(q(6) + q(3)) - p(3)*p(7)*...
         cos(q(6) + q(3)) + p(13)*p(6)*sin(q(6) + q(3))) - p(7)*qbkdot*(p(16)*cos(q(6) + q(7) + q(3)) + p(15)*...
         sin(q(6) + q(7) + q(3)));
  Ce(2,7)=-p(7)*(p(16)*cos(q(6) + q(7) + q(3)) + p(15)*sin(q(6) + q(7) + q(3)))*(qbhdot + qbkdot + qdot(3));
  Ce(3,1)=0;
  Ce(3,2)=0;
  Ce(3,3)=(p(2)*qbhdot*(p(16)*p(7)*cos(q(6) + q(7)) + p(15)*p(7)*sin(q(6) + q(7)) + p(14)*p(6)*...
         cos(q(6)) - p(3)*p(7)*cos(q(6)) + p(13)*p(6)*sin(q(6))))/2 - (p(2)*qfhdot*(p(16)*p(7)*cos(q(4) + q(5)) + p(15)*p(7)*...
         sin(q(4) + q(5)) + p(14)*p(6)*cos(q(4)) - p(3)*p(7)*cos(q(4)) + p(13)*p(6)*sin(q(4))))/2 + (p(7)*qbkdot*...
         (p(16)*p(2)*cos(q(6) + q(7)) + p(15)*p(2)*sin(q(6) + q(7)) - 2*p(15)*p(3)*cos(q(7)) + 2*p(16)*p(3)*...
         sin(q(7))))/2 - (p(7)*qfkdot*(p(16)*p(2)*cos(q(4) + q(5)) + p(15)*p(2)*sin(q(4) + q(5)) + 2*p(15)*p(3)*cos(q(5)) - 2*...
         p(16)*p(3)*sin(q(5))))/2;
  Ce(3,4)=- (p(2)*qfhdot*(p(16)*p(7)*cos(q(4) + q(5)) + p(15)*p(7)*sin(q(4) + q(5)) + p(14)*p(6)*...
         cos(q(4)) - p(3)*p(7)*cos(q(4)) + p(13)*p(6)*sin(q(4))))/2 - (p(2)*qdot(3)*(p(16)*p(7)*cos(q(4) + q(5)) + p(15)*p(7)*...
         sin(q(4) + q(5)) + p(14)*p(6)*cos(q(4)) - p(3)*p(7)*cos(q(4)) + p(13)*p(6)*sin(q(4))))/2 - (p(7)*qfkdot*...
         (p(16)*p(2)*cos(q(4) + q(5)) + p(15)*p(2)*sin(q(4) + q(5)) + 2*p(15)*p(3)*cos(q(5)) - 2*p(16)*p(3)*sin(q(5))))/2;
  Ce(3,5)=-(p(7)*(qfhdot + qfkdot + qdot(3))*(p(16)*p(2)*cos(q(4) + q(5)) + p(15)*p(2)*sin(q(4) +...
          q(5)) + 2*p(15)*p(3)*cos(q(5)) - 2*p(16)*p(3)*sin(q(5))))/2;
  Ce(3,6)=(p(2)*qbhdot*(p(16)*p(7)*cos(q(6) + q(7)) + p(15)*p(7)*sin(q(6) + q(7)) + p(14)*p(6)*...
         cos(q(6)) - p(3)*p(7)*cos(q(6)) + p(13)*p(6)*sin(q(6))))/2 + (p(2)*qdot(3)*(p(16)*p(7)*cos(q(6) + q(7)) + p(15)*p(7)*...
         sin(q(6) + q(7)) + p(14)*p(6)*cos(q(6)) - p(3)*p(7)*cos(q(6)) + p(13)*p(6)*sin(q(6))))/2 + (p(7)*qbkdot*...
         (p(16)*p(2)*cos(q(6) + q(7)) + p(15)*p(2)*sin(q(6) + q(7)) - 2*p(15)*p(3)*cos(q(7)) + 2*p(16)*p(3)*sin(q(7))))/2;
  Ce(3,7)=(p(7)*(qbhdot + qbkdot + qdot(3))*(p(16)*p(2)*cos(q(6) + q(7)) + p(15)*p(2)*sin(q(6) +...
          q(7)) - 2*p(15)*p(3)*cos(q(7)) + 2*p(16)*p(3)*sin(q(7))))/2;
  Ce(4,1)=0;
  Ce(4,2)=0;
  Ce(4,3)=qdot(3)*((p(14)*p(2)*p(6)*cos(q(4)))/2 - (p(2)*p(3)*p(7)*cos(q(4)))/2 + (p(13)*p(2)*p(6)*...
         sin(q(4)))/2 + (p(16)*p(2)*p(7)*cos(q(4) + q(5)))/2 + (p(15)*p(2)*p(7)*sin(q(4) + q(5)))/2) - qfkdot*(p(15)*p(3)*...
         p(7)*cos(q(5)) - p(16)*p(3)*p(7)*sin(q(5)));
  Ce(4,4)=-p(3)*p(7)*qfkdot*(p(15)*cos(q(5)) - p(16)*sin(q(5)));
  Ce(4,5)=-p(3)*p(7)*(p(15)*cos(q(5)) - p(16)*sin(q(5)))*(qfhdot + qfkdot + qdot(3));
  Ce(4,6)=0;
  Ce(4,7)=0;
  Ce(5,1)=0;
  Ce(5,2)=0;
  Ce(5,3)=qdot(3)*(p(15)*p(3)*p(7)*cos(q(5)) - p(16)*p(3)*p(7)*sin(q(5)) + (p(16)*p(2)*p(7)*...
         cos(q(4) + q(5)))/2 + (p(15)*p(2)*p(7)*sin(q(4) + q(5)))/2) + qfhdot*(p(15)*p(3)*p(7)*cos(q(5)) - p(16)*p(3)*...
         p(7)*sin(q(5)));
  Ce(5,4)=p(3)*p(7)*(qfhdot + qdot(3))*(p(15)*cos(q(5)) - p(16)*sin(q(5)));
  Ce(5,5)=0;
  Ce(5,6)=0;
  Ce(5,7)=0;
  Ce(6,1)=0;
  Ce(6,2)=0;
  Ce(6,3)=- (p(2)*qdot(3)*(p(16)*p(7)*cos(q(6) + q(7)) + p(15)*p(7)*sin(q(6) + q(7)) + p(14)*p(6)*...
         cos(q(6)) - p(3)*p(7)*cos(q(6)) + p(13)*p(6)*sin(q(6))))/2 - p(3)*p(7)*qbkdot*(p(15)*cos(q(7)) - p(16)*sin(q(7)));
  Ce(6,4)=0;
  Ce(6,5)=0;
  Ce(6,6)=-p(3)*p(7)*qbkdot*(p(15)*cos(q(7)) - p(16)*sin(q(7)));
  Ce(6,7)=-p(3)*p(7)*(p(15)*cos(q(7)) - p(16)*sin(q(7)))*(qbhdot + qbkdot + qdot(3));
  Ce(7,1)=0;
  Ce(7,2)=0;
  Ce(7,3)=qbhdot*(p(15)*p(3)*p(7)*cos(q(7)) - p(16)*p(3)*p(7)*sin(q(7))) - qdot(3)*(p(16)*p(3)*p(7)*...
         sin(q(7)) - p(15)*p(3)*p(7)*cos(q(7)) + (p(16)*p(2)*p(7)*cos(q(6) + q(7)))/2 + (p(15)*p(2)*p(7)*sin(q(6) + q(7)))/2);
  Ce(7,4)=0;
  Ce(7,5)=0;
  Ce(7,6)=p(3)*p(7)*(qbhdot + qdot(3))*(p(15)*cos(q(7)) - p(16)*sin(q(7)));
  Ce(7,7)=0;

 