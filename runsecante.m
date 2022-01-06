clear all
clc
p0=1.2;
p1=1.5;
tol=(1/2)^50;

[p(length(p)) error(length(error))]=secante(p0,p1,tol)