% self emission = BBp * emissivity
% reflectivity = 1-emissivity
c=299792458; % speed of light
h_bar=105457180e-42; % reduced Planck's constant
kb=138064852e-31; % Boltzmann's constant
h=2*pi*h_bar; % Planck's constant
cB=h*c/kb;
n2p=@(nv)1e2*h*c.*nv;
BBn=@(nv,Te)2e6*c.*nv.^2./(exp(cB*1e2.*nv/Te)-1);
BBp=@(nv,Te)n2p(nv).*BBn(nv,Te); % main function for computing thermal radiation
% BBp is the radiance in unit of W*cm/m^2/sr
% parameter nv is the wavenumber in unit of 1/cm;
% Te is the object's temperature in Kelvin: 273.15 + celsius degree