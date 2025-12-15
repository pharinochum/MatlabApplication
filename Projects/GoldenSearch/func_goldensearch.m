function X = func_goldensearch(X, FX)
%{
Function: xn = func_goldensearch(X, FX)
Where X is a vector regarding the position of 4 inputs, FX is a vector of function values
corresponding the positions. The return value xn is position of new point.
%}
xl = X(1); xu = X(4); x1 = X(3); x2 = X(2);
fx1 = FX(3); fx2 = FX(2);

if fx1 > fx2
  {
    xl = x2;
    x2 = x1;
    xu = xu;
    x1 = xl  + (xu - xl)*(sqrt(5) -1)/2;
  }
else
  {
    xl = xl;
    xu = x1;
    x1 = x2;
    x2 = xu  - (xu - xl)*(sqrt(5) -1)/2;

  }
end
X = [xl,x2, x1, xu]; % return a vector
end

