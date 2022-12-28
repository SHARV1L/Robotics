function p = ME598_GrpR8_FwdKin(q)
%write the function for forward kinematics
l1 = 10.5;
l2 = 13.5;
l3 = 16;
l4 = 5.5;
l5 = 7;
t1 = q(1);
t2 = q(2);
t3 = q(3);
t4 = q(4);
t5 = q(5);
c1 = cosd(t1);
c2 = cosd(t2);
c3 = cosd(t3);
c4 = cosd(t4);
c5 = cosd(t5);
s1 = sind(t1);
s2 = sind(t2);
s3 = sind(t3);
s4 = sind(t4);
s5 = sind(t5);
if (t1<-130) && (t1>130)
    disp('Base Joint beyond robot workspace!');
    p = [];
    return;
end
if (t2<5) && (t2>95)
    disp('Shoulder Joint beyond workspace!');
    p =[];
    return;
end
if (t3>0) && (t3<-177)
    disp('Elbow Joint beyond workspace!');
    p = [];
    return;
end
if (t4<-5) && (t4>85)
    disp('Wrist pitch joint beyond worksapce!');
    p =[];
    return;
end
if (t5<-90) && (t5>90)
    disp('Wrist Twist angle beyond workspace!');
    p = [];
    return;
end
p1 = 7*cos((pi*t4)/180)*(cos((pi*t1)/180)*cos((pi*t2)/180)*sin((pi*t3)/180) + cos((pi*t1)/180)*cos((pi*t3)/180)*sin((pi*t2)/180)) - (11*cos((pi*t4)/180)*(cos((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180) - cos((pi*t1)/180)*cos((pi*t2)/180)*cos((pi*t3)/180)))/2 - (11*sin((pi*t4)/180)*(cos((pi*t1)/180)*cos((pi*t2)/180)*sin((pi*t3)/180) + cos((pi*t1)/180)*cos((pi*t3)/180)*sin((pi*t2)/180)))/2 - 7*sin((pi*t4)/180)*(cos((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180) - cos((pi*t1)/180)*cos((pi*t2)/180)*cos((pi*t3)/180)) + (27*cos((pi*t1)/180)*cos((pi*t2)/180))/2 - 16*cos((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180) + 16*cos((pi*t1)/180)*cos((pi*t2)/180)*cos((pi*t3)/180);
p2 = 7*cos((pi*t4)/180)*(cos((pi*t2)/180)*sin((pi*t1)/180)*sin((pi*t3)/180) + cos((pi*t3)/180)*sin((pi*t1)/180)*sin((pi*t2)/180)) + (11*cos((pi*t4)/180)*(cos((pi*t2)/180)*cos((pi*t3)/180)*sin((pi*t1)/180) - sin((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180)))/2 + (27*cos((pi*t2)/180)*sin((pi*t1)/180))/2 - (11*sin((pi*t4)/180)*(cos((pi*t2)/180)*sin((pi*t1)/180)*sin((pi*t3)/180) + cos((pi*t3)/180)*sin((pi*t1)/180)*sin((pi*t2)/180)))/2 + 7*sin((pi*t4)/180)*(cos((pi*t2)/180)*cos((pi*t3)/180)*sin((pi*t1)/180) - sin((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180)) + 16*cos((pi*t2)/180)*cos((pi*t3)/180)*sin((pi*t1)/180) - 16*sin((pi*t1)/180)*sin((pi*t2)/180)*sin((pi*t3)/180);
p3 = (27*cos((pi*t2)/180))/2 + (11*cos((pi*t4)/180)*(cos((pi*t2)/180)*sin((pi*t3)/180) + cos((pi*t3)/180)*sin((pi*t2)/180)))/2 - 7*cos((pi*t4)/180)*(cos((pi*t2)/180)*cos((pi*t3)/180) - sin((pi*t2)/180)*sin((pi*t3)/180)) + 7*sin((pi*t4)/180)*(cos((pi*t2)/180)*sin((pi*t3)/180) + cos((pi*t3)/180)*sin((pi*t2)/180)) + (11*sin((pi*t4)/180)*(cos((pi*t2)/180)*cos((pi*t3)/180) - sin((pi*t2)/180)*sin((pi*t3)/180)))/2 + 16*cos((pi*t2)/180)*sin((pi*t3)/180) + 16*cos((pi*t3)/180)*sin((pi*t2)/180) + 21/2;
p = [p1;p2;p3];
   
end

