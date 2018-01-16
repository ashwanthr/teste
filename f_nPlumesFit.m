function [f] = f_nPlumesFit(lbydel,D,H, Sh_hom, Ra_hom, del)

Om = D.*(1 + (D./del)./lbydel);
Om = Om./(0.96.*H);

L = 76; %mm
cw = 0.3; % concentration in the plumes
nPlumes = (8.73.*exp(-1.04e-4.*Om.*Ra_hom));
x = nPlumes.*del/L;

f = cw.*x./(1 + 4.7.*(x./(1-x)));

end