X=[0 1 1 0;1 0 0 1;1 0 0 1;0 1 1 0];
Xc=[1 0 0 1;0 1 1 0;0 1 1 0;1 0 0 1];
B=[0 1 0;1 1 1;0 1 0];
c=ones(4,4);
Er1=imerode(X,B);
Di1=imdilate(Xc,B);
Dif1=c-Di1;
Di2=imdilate(X,B);
Er2=imerode(Xc,B);
Erf2=c-Er2;
Op3=imopen(X,B);
Cl3=imclose(Xc,B);
Clf3=c-Cl3;
Cl4=imclose(X,B);
Op4=imopen(Xc,B);
Opf4=c-Op4;
disp('Eroded image of X');
disp(Er1);
disp('Complement Dilated image of Xc');
disp(Dif1);
disp('Dilated image of X');
disp(Di2);
disp('Complement Eroded image of Xc');
disp(Erf2);
disp('Opened image of X');
disp(Op3);
disp('Complement closed image of Xc');
disp(Clf3);
disp('closed image of X');
disp(Cl4);
disp('Complement opened image of Xc');
disp(Opf4);