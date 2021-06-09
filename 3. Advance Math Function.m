>> a= sym(3/2)
 
a =
 
3/2
 
>> syms a
>> a
 
a =
 
a
 
>> syms 3/2
Error using syms (line 260)
Invalid variable name.
 
>> a = sym('3/2')
 
a =
 
3/2
 
>> a = sym('a')
 
a =
 
a
 a= (1 +sqrt(sym(9)))/2
 
a =
 
2
 
>> a= (1 +sqrt(sym(5)))/2
 
a =
 
5^(1/2)/2 + 1/2
 
>> a= sqrt(sym(9))
 
a =
 
3
 
>> a= sqrt(sym(5))
 
a =
 
5^(1/2)
 >> phi=a;
>> phi
 
phi =
 
5^(1/2)
 
>> phi = (1 +sqrt(sym(5)))/2
 
phi =
 
5^(1/2)/2 + 1/2
 
>> f=phi^2 + phi
 
f =
 
5^(1/2)/2 + (5^(1/2)/2 + 1/2)^2 + 1/2
 
>> syms a b c x;
>> f=a*x^2 + b*x + c
 
f =
 
a*x^2 + b*x + c
 
>> f
 
f =
 
a*x^2 + b*x + c
 
 >> syms x
>> x
 
x =
 
x
 
>> f= sin(x)
 
f =
 
sin(x)
 
>> diff(f)
 
ans =
 
cos(x)
 
>> f= sin(x)^2
 
f =
 
sin(x)^2
 
>> diff(f)
 
ans =
 
2*cos(x)*sin(x)
 
>> syms x y
>> f= sin(x)^2 + cos(y)^2
 
f =
 
cos(y)^2 + sin(x)^2
 
>> diff(f)
 
ans =
 
2*cos(x)*sin(x)
 
>> diff(f, y)
 
ans =
 
-2*cos(y)*sin(y)
 
>> diff(f, 2)
 
ans =
 
2*cos(x)^2 - 2*sin(x)^2
 
>> diff(diff(f))
 
ans =
 
2*cos(x)^2 - 2*sin(x)^2
 
 >> f
 
f =
 
cos(y)^2 + sin(x)^2
 
>> int(f)
 
ans =
 
- sin(2*x)/4 - x*(sin(y)^2 - 3/2)
 
>> int(f, y)
 
ans =
 
sin(2*y)/4 + y*(sin(x)^2 + 1/2)
 
>> int(f,1, 10)
 
ans =
 
sin(2)/4 - sin(20)/4 + 9*cos(y)^2 + 9/2
 
>> int(f,1,10)
 
ans =
 
sin(2)/4 - sin(20)/4 + 9*cos(y)^2 + 9/2
 
>> f=sin(x)
 
f =
 
sin(x)
 
>> int(f)
 
ans =
 
-cos(x)
 
>> 
>> int(f,1,10)
 
ans =
 
cos(1) - cos(10)
 
>> int(f,y)
 
ans =
 
y*sin(x)
 
>> int(f,y, 1,10)
 
ans =
 
9*sin(x)
 
>> 
>> 

>> syms x;
>> f= x^3+4*x^2 == 11-3*x+x^2
 
f =
 
x^3 + 4*x^2 == x^2 - 3*x + 11
 
>> solve(f)
 
ans =
 
 root(z^3 + 3*z^2 + 3*z - 11, z, 1)
 root(z^3 + 3*z^2 + 3*z - 11, z, 2)
 root(z^3 + 3*z^2 + 3*z - 11, z, 3)
 
>> f= x^3+4*x^2+11-3*x+x^2
 
f =
 
x^3 + 5*x^2 - 3*x + 11
 
>> solve(f)
 
ans =
 
 root(z^3 + 5*z^2 - 3*z + 11, z, 1)
 root(z^3 + 5*z^2 - 3*z + 11, z, 2)
 root(z^3 + 5*z^2 - 3*z + 11, z, 3)
 
>> syms y
>> f= x^3+4*x^2 == 11-3*y+y^2
 
f =
 
x^3 + 4*x^2 == y^2 - 3*y + 11
 
>> solve(f)
 
ans =
 
 root(z^3 + 4*z^2 + 3*y - y^2 - 11, z, 1)
 root(z^3 + 4*z^2 + 3*y - y^2 - 11, z, 2)
 root(z^3 + 4*z^2 + 3*y - y^2 - 11, z, 3)
 
>> solve(f, y)
 
ans =
 
 3/2 - (4*x^3 + 16*x^2 - 35)^(1/2)/2
 (4*x^3 + 16*x^2 - 35)^(1/2)/2 + 3/2
 
>> syms x y z
>> f= x == 2*y
 
f =
 
x == 2*y
 
>> f1 = z == 3*y^2;
>> f3= x == z^3;
>> 
>> [x y z]=solve(f, f1, f2)
Unrecognized function or variable 'f2'.
 
>> [x y z]=solve(f, f1, f3)
 
x =
 
                                                                             0
 -(3^(2/5)*4^(3/5)*(1/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 5^(1/2)/4)^3)/3
  (3^(2/5)*4^(3/5)*(5^(1/2)/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 1/4)^3)/3
 -(3^(2/5)*4^(3/5)*(5^(1/2)/4 - (2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 1/4)^3)/3
 -(3^(2/5)*4^(3/5)*((2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 5^(1/2)/4 + 1/4)^3)/3
                                                           (3^(2/5)*4^(3/5))/3
 
 
y =
 
                                                                             0
 -(3^(2/5)*4^(3/5)*(1/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 5^(1/2)/4)^3)/6
  (3^(2/5)*4^(3/5)*(5^(1/2)/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 1/4)^3)/6
 -(3^(2/5)*4^(3/5)*(5^(1/2)/4 - (2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 1/4)^3)/6
 -(3^(2/5)*4^(3/5)*((2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 5^(1/2)/4 + 1/4)^3)/6
                                                           (3^(2/5)*4^(3/5))/6
 
 
z =
 
                                                                           0
 -(3^(4/5)*4^(1/5)*(1/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 5^(1/2)/4))/3
  (3^(4/5)*4^(1/5)*(5^(1/2)/4 + (2^(1/2)*(5^(1/2) + 5)^(1/2)*1i)/4 - 1/4))/3
 -(3^(4/5)*4^(1/5)*(5^(1/2)/4 - (2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 1/4))/3
 -(3^(4/5)*4^(1/5)*((2^(1/2)*(5 - 5^(1/2))^(1/2)*1i)/4 + 5^(1/2)/4 + 1/4))/3
                                                         (3^(4/5)*4^(1/5))/3
 
 >> syms x y z
>> f1= z == 4*x;
f2= x == y;
f3= z == x^2+y^2;
>> solve(f1,f2,f3)

ans = 

  struct with fields:

    x: [2�1 sym]
    y: [2�1 sym]
    z: [2�1 sym]

>> [x y z]=solve(f1,f2,f3)
 
x =
 
 0
 2
 
 
y =
 
 0
 2
 
 
z =
 
 0
 8
 
>> >> syms f x
>> f= 4*x + x^3;
>> subs(f)
 
ans =
 
x^3 + 4*x
 
>> subs(f, 2)
 
ans =
 
16
 
>> syms f x y
>> f= y^2 + x^2;
>> subs(f)
 
ans =
 
x^2 + y^2
 
>> subs(f, 2)
 
ans =
 
y^2 + 4
 
>> subs(f,y, 2)
 
ans =
 
x^2 + 4
 
>> subs(f,y, x)
 
ans =
 
2*x^2
 
>> f=23*x^3 + 9*x^2
 
f =
 
23*x^3 + 9*x^2
 
>> sym2poly(f)

ans =

    23     9     0     0

>>  syms f x y
>> f(x,y)=x^2 + y^3;
>> diff(f(x,y))
 
ans =
 
2*x
 
>> diff(f(x,y), y)
 
ans =
 
3*y^2
 >> diff(f(x,y), 2, y)
 
ans =
 
6*y
 
>> diff(f(x,y), 2)
 
ans =
 
2
 
>> >> f
 
f(x, y) =
 
x^2 + y^3
 
>> f(y+1, y)
 
ans =
 
(y + 1)^2 + y^3
 
>> f(2, 3)
 
ans =
 
31
 
>> f
 
f(x, y) =
 
x^2 + y^3
 
>> 