function test_identifier_error()
%
n1 = 2; n2 = 73; n3 = 8; n4 = 8; n5 = 1; n6 = 1; n7 = 2; n8 = 39; n9 = 922721; n10 = 29; n11 = 19; n12 = 405; n13 = 1627; n14 = 27037;
n26=n2*6; n6n13=n6*n13; n81 = n8+1; n81s = n81^2; n82p1 = n8*2+1; n6n12 = n6*n12;
%
d1 = 0.15; d2 = 0.15;
%
narr1 = randi(10,n3,1); narr2 = randi(10,8,n2); narr3 = randi(10,2,n2); narr4 = randi(10,n10,1); narr5 = randi(10,n10,1); 
%
darr1 = rand(3,n2); darr2 = rand(n9,1); darr3 = rand(n10,1); darr4 = rand(n10,1); darr5 = rand(n81s,n82p1); darr6 = rand(n81s,n82p1); darr7 = rand(5,n13); darr8 = rand(n81s,n10); darr9 = rand(n81,1); 
%
dcarr1 = complex(rand(n6n13,n26)); dcarr2 = complex(rand(n6,n13)); dcarr3 = complex(rand(n6,n13)); dcarr4 = complex(rand(n6n13,16)); dcarr5 = complex(rand(11,n13)); dcarr6 = complex(rand(11,n13)); dcarr7 = complex(rand(n14,1)); dcarr8 = complex(rand(n6n12,2)); dcarr9 = complex(rand(n6,n12));
%
identifier_error_mex(...
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,...
  d1,d2,...
  narr1,narr2,narr3,narr4,narr5,...
  darr1,darr2,darr3,darr4,darr5,darr6,darr7,darr8,darr9,...
  dcarr1,dcarr2,dcarr3,dcarr4,dcarr5,dcarr6,dcarr7,dcarr8,dcarr9); 
end