x = input('input experimental points x: ');
y = input('input experimental points y: ');

l = length(x);
if l==0
    disp('ERROR! Please input experimental values')
else
    for i = 1:l
        u = polyfit(x,y,i);
        v = polyval(u,x);
        e = y - (v.*x);
        Q = min(e);
    end
    disp('The experimental points')
    A = [x;y];
    fprintf('has a least-norm vector error of %.f. \n',Q)
    disp('The best fit polymial coefficients a'); disp(v)
end 
        