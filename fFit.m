function [f] = fFit(lbydel,D,H, Sh_hom, Ra_hom, del)

Om = D.*(1 + (D./del)./lbydel);
Om = Om./(0.96.*H);

f = (0.01612.*exp(-8.562e-5.*Om.*Ra_hom));

end