%
% jacob.m
%
% fwdkin modified
% 
% theta: n-vector of rotational angle / translational displacement
% type: 0 = rotational  nonzero = prismatic
% H = [ h1 h2 ... hn ] axis of rotation or translation
% P = [p01 p12 p23 .. p_{n-1}n] inter-link vectors
% n: # of links (>1)
% 
function [Jn0]=jacob(theta,type,H,P,n)

if type(1) == 0
    R=expm(crossmat(H(1:3,1))*theta(1));
    %p=P(1:3,1);
    H_J_i(1:6, 1) = [zeros(3,1); H(1:3,1)];    
else
    R=eye(3,3);
    %p=P(1:3,1)+theta(1)*H(1:3,1);
    H_J_i(1:6, 1) = [H(1:3,1); zeros(3,1)];
end

Phi_last_line = [eye(6)];

for i = 2:n
    if type(i) == 0
        %p=p+R*P(1:3,i);
        R_im1_i = expm(crossmat(H(1:3,i))*theta(i));
        R=R*R_im1_i;
        H_J_i(1:6, i) = [zeros(3,1); H(1:3,i)];
    else
        %p=p+R*(P(1:3,i)+theta(i)*H(1:3,i));
        R_im1_i = eye(3);
        R=R;
        H_J_i(1:6, i) = [H(1:3,i); zeros(3,1)];
    end
    phi_i_im1 = [R_im1_i' -R_im1_i'*hat(P(1:3,i)); zeros(3) R_im1_i'];
    Phi_last_line = [phi_i_im1*Phi_last_line eye(6)];
end

for i = 1:n
    H_J((6*(i-1) + 1):(6*(i-1) + 6), i) = H_J_i(1:6, i);
end

Jnn = Phi_last_line*H_J;
Jn0 = [R zeros(3); zeros(3) R]*Jnn;