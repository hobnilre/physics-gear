# Conventions and fixed illustrative values

All parameters are chosen ideal-model values, not measured. Angular velocities omega are in rad/s; nu=omega/(2 pi) is in rev/s. Angles are oriented about +z. All signed powers are positive into the boundary named beside them. Internal mesh and pin sides are paired diagnostics, never extra external inputs.

In the opening geometric bound, mathsf H is a positive-definite energy matrix and mathsf O is the linear observation map. Neither is the scalar mechanical angular momentum H. The engineering decision limits are bW=1/5000000 J+(1/500000) sum abs(Wj) and bPsi=1/50000000 V s+(1/500000) sum abs(Psil); these are illustrative criteria, not certified uncertainty bounds.

## Mechanical notation

s,p,r,c denote sun, planet, ring, carrier. Z is tooth count, r pitch radius, a planet-centre radius, q=3 planets, m mass, I spin inertia. Omega is observation-frame angular velocity. H is ground angular momentum and J the total second mass moment. K^f is relative kinetic energy; U^f=-J Omega^2/2 is the effective centrifugal potential; E^f=K^f+U^f=K^0-Omega H. The centrifugal potential is a coordinate-dependent effective store, not an additional physical reservoir. Euler and explicit potential-time terms are separately retained.

Reference simple train: (Zs,Zp,Zr)=(24,18,60); module 1/500 m; r=Z/1000 m; a=21/500 m. Mass coefficient mu=490 kg/m^2 in m=mu r^2 (mu includes the disc area factor; it is not literally the areal density). Ring outer radius rr+1/250 m; disc I=mu r^4/2; annular I=mu(ro^4-rr^4)/2. Carrier disc radius a; planet orbital inertia is additional. Drive torque 47/4 N m. Steady ring-held rates (nus,nuc,nur,nup)=(7/2,1,0,-7/3) rev/s. Operation [2/5,19/10] s; preparation [0,2/5] s; relaxation [19/10,5/2] s; ramp f(z)=3z^2-2z^3. Independent count interval [0,7/2] s. Locked zero-drive control uses rate 1 rev/s and duration 3/2 s.

The ramp shaft order is sun, ring, carrier. Coefficients in tauj=aj F+bj dot F are a=(47/4,235/8,-329/8) N m and b=(0,-1639197 pi/625000000,18864657 pi/3125000000) kg m^2/s. The internal force coefficients are fs=(47/4)/(q rs), gs=-Is omegas*/(q rs), gr=gs+Ip omegap*/rp, and gt=mp a omegac*-gs-gr; Fs=fs F+gs dot F, Fr=fs F+gr dot F, Rt=-2 fs F+gt dot F. Each ramp work uses its own duration and the sign of integral F dF.

Other simple count train (24,12,48), carrier 1 rev/s, ring held, duration 1 s. General integer family Zs in {12,17,18,24,30,36,48,60,101}, Zp in {12,13,18,24,36}, Zr=Zs+2Zp; three planets require additional phasing and clearance conditions. Eight operating choices are specified in the article.

Lead-out axial length 3/25 m; cos^2 beta=L^2/(L^2+a^2). Largest illustrative a=137/1000 m gives cos^2 beta=14400/33169. Coulomb drag d=1/50 N m; imposed output torque -47/40 N m (its sign does not guarantee it is a brake). Bevel ratios kappa=1,2. Readout interval 7/2 s.

Compound configuration order (ZA,Zpa,Zpb,ZB;sA,sB): I=(24,18,18,60;-1,+1); II=(20,22,20,62;-1,+1); III=(30,20,19,31;-1,-1); IV=(62,20,21,63;+1,+1); V=(100,58,59,101;+1,+1). hX=sX ZpX/ZX, R=hA/hB. Module 1/500 m; q=3; carrier 1 rev/s; tauA=47/4 N m; interval [0,3/2] s. Four frame rates 0, omegaC, omegaA, omegaB. Equal sharing is a stipulated force model; manufacturable multiple-planet phasing is not established by pitch-radius assembly alone.

## Electrical notation

a,b,c denote tap, upper terminal, common return. v1=Va-Vc; v2=Vb-Va. i1 enters winding 1 at a; i2 enters winding 2 at b. Ia=i1-i2, Ib=i2, Ic=-i1. n=s rho, rho=N2/N1>0; s=+/-1 winding polarity; k is coupling. eta=1 tapped, eta=0 isolated. h=1 readout return a, h=0 return c. The output capacitor always returns to c. G=Gl+Gp. g(t) is a common coordinate offset, not a physical driver. lambda=L i; Psi is the signed voltage integral.

Power-preserving scale alpha=1 V/(rad/s) when numerical SI values are compared: V=alpha omega, I=tau/alpha, C=J/alpha^2. The separate kinematic scale 1 V/(rev/s) equals 1/(2 pi) V/(rad/s), and must not be used for power without its torque scaling.

Ideal examples: n=1, Gl=1 S, v1=t-2 V on [0,7/2] s, g=3 V; paired examples n=-4, Gl=1 S, v1=1 V on [0,1] s and v1=t-2 V on [0,4] s. t in seconds in these polynomial expressions. Opposed-null examples n=-1 and n=-101/100,-99/100. Reference controls g=g0+g1 t with g0 in {-3,0,3} V and g1 in {-1,0,1} V/s, and g=3+(7/10)cos(5t) V.

Finite baseline: L1=1/25 H, L2=rho^2 L1, M=s k rho L1, rho=1,s=+1,k=19/20; C=1/500 F; Rs=1/5 ohm; R1=R2=1/10 ohm; Gc=1/100 S; Gl=1/10 S, raised fourfold at t=1/5 s; Gp=0. u=2 cos(14 pi t+3/10) V, multiplied by (1-cos(10 pi t))/2 for 0<=t<=1/10 s, set to zero at 3/10 s. Four intervals [0,1/10], [1/10,1/5], [1/5,3/10], [3/10,1/2] s. Baseline initial state zero. Probe variant Gp=1/10 S. Paired finite baseline rho=4,s=-1, with both h values. Parameter and initial-state alternatives are specified in the manuscript.

Finite compound: L0=3/25 H; branch resistance (2/25)diag(hX^2,1) ohm; Rs=3/4 ohm; planet mass 3/25 kg; member inertias 3/100,7/200 kg m^2; carrier 1/50 kg m^2; each planet spin inertia 1/1250 kg m^2. Additional receiver and driver capacitances 1/100,1/200 F; reset conductance 1/2 S; amplitude 2 pi V. Physical stages end at 1/10,1/5,3/10,1/2,1 s; receiver switches between free member-to-ground and free member-to-carrier, while capacitor returns stay fixed. Finite transition widths 1/1000,1/2000,1/4000 s are conditional time-varying models, not evaluated trajectories.

## Figure colours

Blue elemA: sun/member A, primary winding or terminal a. Orange elemB: planet/member B, secondary winding or terminal b. Green elemC: carrier, reference-support or terminal c return. Purple elemD: ring, receiver/load. Grey frameline: boundary/reference axes. Multi-system schematics explicitly name every coloured component; curve colours follow their labelled port or device.
