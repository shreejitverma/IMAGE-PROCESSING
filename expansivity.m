close all;
clear all;
clc;
X=[0 1 1 0;1 0 0 1;1 0 0 1;0 1 1 0];
B=[0 1 0;1 1 1;0 1 0];
Erx=imerode(X,B);
Dix=imdilate(X,B);
Opx=imopen(X,B);
Clx=imclose(X,B);
disp('Eroded image of X');
disp(Erx);
disp('Dilated image of X');
disp(Dix);
disp('Opened image of X');
disp(Opx);
disp('closed image of X');
disp(Clx);
