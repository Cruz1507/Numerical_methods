clear all
clc
p0=1.2;
tol=(1/2)^50;

[p error]=newtonraphson(p0,tol)