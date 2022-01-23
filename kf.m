function kf=kf(kf,u) %%%output equals to filters two input
kf.x=kf.A*kf.x+kf.B*u;
kf.P=kf.A*kf.P*kf.A'+kf.Q;
K=kf.P*kf.H*inv(kf.H*kf.P*kf.H'+kf.R);%%%%Finding Kalman Gain K
kf.x=kf.x+K*(kf.z-kf.H*kf.x);%%Correction of x and P.
kf.P=kf.P-K*kf.H*kf.P;
end
