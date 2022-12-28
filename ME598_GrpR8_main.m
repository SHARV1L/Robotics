%ME598_GrpR8
clear all
clc

syms t1 t2 t3 t4 t5 l1 l2 l3 l4 l5;
q = [t1;t2;t3;t4;t5];
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
l1 = 10.5;
l2 = 13.5;
l3 = 16;
l4 = 5.5;
l5 = 7;
A1 = [c1 0 s1 0;s1 0 -c1 0;0 1 0 l1;0 0 0 1];
A2 = [c2 -s2 0 l2*c2;s2 c2 0 l2*c2;0 0 1 0;0 0 0 1];
A3 = [c3 -s3 0 l3*c3;s3 c3 0 l3*s3;0 0 1 0;0 0 0 1];
A4 = [c4 0 s4 l4*c4;s4 0 -c4 l4*s4;0 1 0 0;0 0 0 1];
A5 = [c5 -s5 0 0;s5 c5 0 0;0 0 1 l5;0 0 0 1];
T = A1*A2*A3*A4*A5;
function p = ME598_GrpR8_FwdKin(q);
end
function q = ME598_GrpR8_InvKin(p);
end
