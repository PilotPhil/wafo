function test_suite=test_discretize()
  initTestSuite;
end
function test_discretize_()
   [x,y] = discretize(@(x)cos(x), 0, pi); 
  [xa, ya] = discretize(@(x)cos(x), 0, pi, 'method', 'adaptive'); 
  assert(xa(1:5), ...  
      [ 0.        ,  0.19634954,  0.39269908,  0.58904862,  0.78539816], 1e-7); 
 
  plot(x, y, xa, ya, 'r.'); 
  
  close('all');
end
