---
title: "Frames, Returns, and Port Power"
subtitle: "Four central shafts, loaded reactions, and electrical counterparts"
author: "Hob Nilre & Bo C. Herlin"
date: "2026-09-29"
abstract: |
  A planet's rotating stub is brought to a separate central output through two
  correctly phased universal joints. Together with sun, carrier and ring,
  this gives four accessible shafts with two independent speeds. Contact
  constraints and attached free bodies determine the two-coordinate steady
  load family and every signed port work. One loaded-planet control delivers
  7/3 joule in one second and changes carrier work by the same amount, while
  a held ring retains a nonzero reaction. Two ideal transformer pairs and one
  four-tap common-flux winding independently reproduce the complete terminal
  relations, including the planet receiver. A specified initialized compliant
  extension maps inertial and elastic stores to capacitive and magnetic
  states. Coin and spoke controls distinguish counts from physical loads;
  switched returns and prepared capacitor states expose the additional laws
  needed for finite connections. Frame-dependent effective stores, compound
  ratios, supplied references and prepared limits delimit the correspondence.
  A companion develops joint, switching, material and observation questions,
  with independent uncertainties for work and endpoint stores. All worked
  results are exact or explicitly conditional within declared models.
keywords:
  - epicyclic gearing
  - signed port work
  - rotating frames
  - autotransformer
  - physical return paths
  - electromechanical analogy
documentclass: article
classoption:
  - 11pt
geometry:
  - margin=1.1in
mainfont: "TeX Gyre Termes"
sansfont: "TeX Gyre Heros"
monofont: "TeX Gyre Cursor"
mathfont: "TeX Gyre Termes Math"
numbersections: true
secnumdepth: 3
indent: true
linestretch: 1.05
colorlinks: true
linkcolor: MidnightBlue
urlcolor: MidnightBlue
citecolor: MidnightBlue
---

\begingroup\scriptsize\noindent PDF created: \pdfbuildtimestamp\par\noindent Latest on GitHub: \url{https://github.com/hobnilre/physics-gear}\par\endgroup

# Four shafts and a loaded planet
\label{sec:construction}

Bring the rotation of a planet gear to the centre of a planetary train through
two correctly phased universal joints. The sun, carrier, ring and planet
output then have four separately accessible shafts. Which motions and loads
can those shafts sustain, and which electrical connections reproduce their
signed powers? This construction organizes the article. The two meshes leave
two independent speeds; attached free bodies determine two independent steady
load coordinates. An ideal four-tap winding and a two-transformer network
realize those same terminal relations, including a loaded planet output.

Figure \ref{fig:four-shafts} fixes the physical meaning of the fourth shaft.
The rotating planet body is keyed to a stub that turns in a bearing carried
by the carrier. Its support pin and the stub are different parts. Two joint
centres connect that orbiting stub to a separate central output, $o$; the
output shares the sun's axis without being connected to the sun. Throughout,
$p$ denotes the orbiting body. The equality $\omega_o=\omega_p$ follows from
the specified joint geometry and phasing.

![Schematic four-shaft construction, shown in a carrier-dependent axial plane. Separate sun, carrier and ring sleeves terminate before the illustrated joint sweep; their connections continue to their respective gear members. The planet stub rotates in a carrier-mounted bearing. Crosses and paired yoke marks show the two joints and the relative phasing fixed by the intermediate shaft. Dashed lines bound the swept centreline; real yokes, shaft radii, bearing loads and collision clearances require a separate design.](figures/four-shafts.pdf){#fig:four-shafts width=100%}

\FloatBarrier

For the reference teeth $(Z_s,Z_p,Z_r)=(24,18,60)$ and module
$m_0=1/500\,\mathrm m$, the pitch radii are
$(3/125,9/500,3/50)\,\mathrm m$ and the offset is $a=21/500\,\mathrm m$.
With carrier angle $\phi$, take joint centres
$J_1=(a\cos\phi,a\sin\phi,z_1)$ and
$J_2=(0,0,z_1+L)$, where $L=3/25\,\mathrm m$.
The intermediate member has length $\sqrt{a^2+L^2}$ and equal joint angles
$\beta=\arctan(a/L)$. Its centreline sweeps radius $a(1-\lambda)$ at fraction
$\lambda$ along the member. These dimensions specify a kinematic layout;
the drawing does not establish a manufacturing clearance or a spatial
joint-force solution. Equal operating angles and correct relative phasing
are also requirements in ordinary double-joint practice [Belden][joints].
Here the joint plane turns with the carrier, and the rigid intermediate
shaft fixes the yokes relative to that plane.

The central worked comparison holds the ring and uses shaft speeds
$(7/2,1,0,-7/3)\,\mathrm{rad/s}$. Adding a $+1\,\mathrm{N\,m}$ receiver
torque at the negative-running planet output changes carrier work by
$+7/3\,\mathrm J$ over one second and delivers $7/3\,\mathrm J$ to that
receiver. The held-ring reaction changes as well, although its ground work
remains zero. Both changes follow from the attached free bodies, before
any work balance is formed.

The companion, [*Finite Transfers and Open Energy Balances*][companion],
develops the corresponding physical questions: loaded joint forces, support
and phase supplies, winding commutation, prepared cell states, and calibrated
observations of each transfer. It includes a separate switched tapped-secondary
apparatus motivated by SERPS. The main derivations below establish the
four-shaft construction and its electrical realization; finite state models
and exact controls state what extends beyond the ideal terminal relation.
The later sections and appendix retain the detailed compound, reference,
preparation and event arguments needed to delimit those claims.


## Ports, states, and signed observations

All angular components are positive by the right-hand rule about the common
$+z$ axis. We use angular rates $\omega$ in radians per second and
$\nu=\omega/(2\pi)$ in revolutions per second. A frame rotating at $\Omega$
reports $\omega^f=\omega-\Omega$. A port power is positive into its stated
system. For an interval with event times $t_e$, define
\begin{align}
 W_j(t_0,t_1)&=\int_{t_0}^{t_1}P_j(t)\,dt,
 &P_j&=e_j f_j,\label{eq:work}\\
 r_E&=E(x(t_1))-E(x(t_0))-\sum_j W_j-\sum_e W_e^{\rm imp}.
 \label{eq:balance}
\end{align}
Here $e_j f_j$ means torque times angular rate, force dotted with velocity,
or voltage times current; an exported heat channel can equivalently be
written $-T\dot S_{\rm out}$ for a reservoir at fixed temperature $T$.
Each port is integrated separately before the sum is formed. A constitutive
endpoint energy does not specify the work of an unmodelled preparation path.
Positive $r_E$ means that the stored-energy increase exceeds the accounted
net inward work; negative $r_E$ means that it falls short. Both signs remain
eligible outcomes. For a physical discrepancy, the interval, boundary, event
states, signed magnitude, uncertainty, and completed checks must accompany
the result. An absent measurement leaves the sign and magnitude unknown.

| Symbol | Meaning |
|-----------------------|-------------------------------------------------------|
| $q$ | Number of planets |
| $\chi=F'(x)$ | Instantaneous lead-out transmission factor |
| $\mathcal T$ | Coupling torque in the lead-out |
| $\tau_*$ | Applied torque scale in the compound train |
| $T$ | Duration of an integration interval |
| $\mathfrak p_j=V_jI_j$ | Single-terminal power contribution |
| $W_j$, $\lvert W_j\rvert$, $\int\lvert P_j\rvert dt$ | Signed work, its magnitude, and integrated absolute power |

: Notation used across the mechanical and electrical models. Subscripts distinguish local states from these scalar quantities.

We distinguish a whole-system boundary from component boundaries. A mesh or
pin has two sides; they are indispensable when examining a planet but internal
to an enclosure containing both connected bodies. Similarly, winding powers
and terminal contributions must not be added again to the source, receiver,
and heat powers of a complete circuit. Ideal constraints below have no energy
coordinates; their empty store is zero by definition. Finite bodies and
windings have explicit nonempty stores evaluated at both endpoints.

Signed sums also differ from absolute observations. For oriented coordinates
$y_j$ and positive weights $w_j$, $\sum_j w_j\lvert y_j\rvert$ depends on the
observation map, units, and weights. A linear constraint on the signed
coordinates does not make their absolute sum conserved, nor make it energy.
For example, if $E=x^T\mathsf Hx/2$ with positive definite $\mathsf H$ and
$y=\mathsf Ox$,
Cauchy–Schwarz gives the exact instantaneous geometric bound
\begin{equation}
 \sum_j w_j\lvert y_j\rvert\leq
 \sqrt{2E(x)\max_{\sigma_j=\pm1}
 (w\mathbin{\odot}\sigma)^T\mathsf O\mathsf H^{-1}\mathsf O^T
 (w\mathbin{\odot}\sigma)}.
 \label{eq:geometry}
\end{equation}
It uses the current state energy, not a presumption that the initial energy
persists. Extra conserved linear functionals restrict the admissible set only
when actually derived. Neither a gear turn count nor a raw winding-linkage sum
is automatically eligible for a conserved-sum growth claim.

## Resolving a transfer and resolving a remainder

Let measured effort and flow be $\widehat e,\widehat f$, with independently
established pointwise errors $|e-\widehat e|\leq u_e$ and
$|f-\widehat f|\leq u_f$ on the declared interval. Expanding their product,
then integrating its three error terms, gives the exact bound
\begin{equation}
 |W-\widehat W|\leq
 \int_{t_0}^{t_1}
 (|\widehat e|u_f+|\widehat f|u_e+u_eu_f)\,dt,
 \qquad \widehat W=\int_{t_0}^{t_1}\widehat e\widehat f\,dt.
 \label{eq:product-uncertainty}
\end{equation}
The errors must refer to the actual conjugate port quantities at common times.
Additional bounds cover channel timing, finite bandwidth, integration of
recorded signals, and interval endpoints. For example, if a time displacement
is at most $u_t$ and the displaced flow satisfies $|\dot f|\leq L_f$, the
additional product error with an aligned effort bounded by $E_*$ is at most
$E_*L_fu_t(t_1-t_0)$. This follows by integrating
$|f(t+\delta t)-f(t)|\leq L_fu_t$; it does not bound an unobserved fast
transient without such a derivative bound. Endpoint-time errors also need
bounds on the omitted terminal intervals. Count a timing contribution only
once if it is already included in the pointwise errors.

For a complete measured balance, a conservative enclosure is
\begin{equation}
 u_r=u_{E,0}+u_{E,1}+\sum_j u_{W,j}+\sum_e u_{{\rm imp},e},
 \qquad r_E\in[\widehat r_E-u_r,\widehat r_E+u_r].
 \label{eq:residual-uncertainty}
\end{equation}
Here each work bound includes its justified observation errors; resolved
finite edges and ideal impulses describe disjoint transfers. Endpoint
correlation can reduce this enclosure only when established independently.
An unknown thermal state, magnetic state, or missing port is an undetermined
physical contribution, not an uncertainty allowance. All evaluated model
integrals in this article are exact, so their numerical integration residual
is zero. This says nothing about the uncertainty of physical observations.

# Rolling constraints and three kinds of count

## A coin, a spoke, and an independently loaded output
\label{sec:coin}

A marked body carried once around a centre makes the reference distinction
visible. Let $\phi$ be the orbital angle and $\theta$ its orientation relative
to fixed axes. With $\Omega=\dot\phi$ and $\omega=\dot\theta$, integrating
$\omega=(\omega-\Omega)+\Omega$ gives the fixed-axis count as the
carrier-relative count plus the carrier count, including reversals.

| Constraint during one positive orbit | Fixed-axis turns | Carrier-relative turns |
|--------------------------------------|-----------------:|-----------------------:|
| Free pivot, initially zero spin and zero centre torque | $0$ | $-1$ |
| Rigid lock to a spoke | $1$ | $0$ |
| Equal circles, exterior rolling without slip | $2$ | $1$ |

: Three different constraints on a marked body. Counts are unwrapped signed angles, not final photographs.

For exterior rolling around a fixed circle of radius $R$, a moving circle
of radius $r$ has centre radius $a=R+r$. Its contact velocity is
$a\Omega-r\omega$, so
\begin{equation}
 \omega=(1+R/r)\Omega,\qquad \omega-\Omega=(R/r)\Omega.
 \label{eq:coin-exterior}
\end{equation}
Interior rolling at $R>r$ instead gives
$(R-r)\Omega+r\omega=0$ and $\omega=(1-R/r)\Omega$.
The degenerate $R=r$ interior case has no orbit phase. A toothed exterior
realization with $Z_s=Z_p$ also needs $Z_r=3Z_s$ if a ring is added:
a held sun then requires $\omega_r=4\Omega/3$. Holding both sun and ring
would force $\Omega=0$. Each contact contributes its own constraint.

The centre-of-mass identity
$\int\boldsymbol\rho\,dm=0$ in the rigid velocity field
$\mathbf v=\mathbf V_C+\omega\mathbf e_z\times\boldsymbol\rho$ gives
\begin{equation}
 K^0=\frac12Ma^2\Omega^2+\frac12I_C\omega^2,\qquad
 H_{C,z}=I_C\omega.
 \label{eq:particle-store}
\end{equation}
A spoke-locked body has nonzero inertial spin when $\Omega\ne0$.
The free-pivot and clamped-body comparisons in Tesla's 1919 discussion
[Tesla (1919)][tesla] make this distinction concrete. Writing a total energy
using a radius of gyration includes its second moment; that effective radius
does not change the actual centre velocity $a\Omega$. An impulse-free release
preserves the body's instantaneous velocity field. Torque and work of any
physical locking or release device are additional laws.

For a loaded exterior roller at constant $\Omega>0$, apply a
ground-referenced receiver couple $-\mathcal T$, $\mathcal T>0$.
With contact tangent force $F_t$ and carrier drive force $F_d$, the
independent spin and centre equations are
$-rF_t-\mathcal T=0$ and $F_d+F_t=0$. Thus the drive torque is
$(1+R/r)\mathcal T$, and the held central support torque is
$-R\mathcal T/r$. Separate integrals over one orbit give
\begin{equation}
 W_d=2\pi(1+R/r)\mathcal T,\quad
 W_{\rm rec}=-2\pi(1+R/r)\mathcal T,\quad W_s=0.
 \label{eq:coin-load}
\end{equation}
The contact point has zero ground velocity; its centre and spin powers
$F_ta\Omega$ and $-rF_t\omega$ cancel after both are evaluated.
Both endpoints of \eqref{eq:particle-store} agree for the stipulated steady
motion. The model residual is therefore zero. The assumed ideal torque
connection, adequate traction and lossless support do not specify an actual
planet lead-out.

As a dimensioned control take $R=2\,\mathrm m$, $r=1\,\mathrm m$,
$M=1\,\mathrm{kg}$, $I_C=2/5\,\mathrm{kg\,m^2}$,
$\Omega=1/2\,\mathrm{rad/s}$ and $\mathcal T=1\,\mathrm{N\,m}$.
On $[0,2]\,\mathrm s$, the separate works are $(3,-3,0)\,\mathrm J$,
and each kinetic endpoint is $63/40\,\mathrm J$. Unloaded preparation with
$\Omega=t/2$ on the same time interval instead gives
$F_t=-3/5\,\mathrm N$, $F_d=21/10\,\mathrm N$ and
$W_d=63/10\,\mathrm J$. Direct endpoint evaluation gives orbital
$9/2\,\mathrm J$ and spin $9/5\,\mathrm J$. Preparation and steady receipt
are separate histories.


## A parallel-axis train

Expressing mesh motion relative to the carrier is the standard kinematic
construction illustrated by [Culpepper (2002)][gears]. Here the two contact
constraints are retained separately before deriving the train relation.

Let $Z_s,Z_p,Z_r$ be positive integer tooth counts of the sun, each planet,
and the internal ring. For common module $m_0$, the pitch radii are
$r_j=m_0Z_j/2$. The planet centre is at radius $a$. The simple train requires
\begin{equation}
 a=r_s+r_p=r_r-r_p,\qquad Z_r=Z_s+2Z_p.
 \label{eq:assembly}
\end{equation}
Pure rolling at the two pitch points gives two independently defined planet
rates:
\begin{align}
 \omega_p&=\omega_c-\frac{Z_s}{Z_p}(\omega_s-\omega_c),\\
 \omega_p&=\omega_c+\frac{Z_r}{Z_p}(\omega_r-\omega_c).
 \label{eq:meshes}
\end{align}
Eliminating $\omega_p$ yields the division-free Willis relation
\begin{equation}
 Z_s(\omega_s-\omega_c)+Z_r(\omega_r-\omega_c)=0.
 \label{eq:willis}
\end{equation}
The ratio form is valid only when its denominator is nonzero. Equation
\eqref{eq:willis} also covers the locked train.

![Schematic pitch geometry and forces on one planet. Blue identifies the sun, orange the planet, green the carrier, and purple the ring. Tangential mesh forces on the planet have signed components $F_s,F_r$; its pin force is $R_t\mathbf e_\theta+R_r\mathbf e_r$. Only one of the three planets is drawn.](figures/gear-ports.pdf){#fig:gear width=87%}

\FloatBarrier

The geometry of Figure \ref{fig:gear} permits scalar subtraction of rates
because all rotation axes are parallel. Helical thrust, bevel geometry, and
frames rotating about other axes require vector kinematics and additional
force components. Positive pitch radii alone do not establish manufacturability:
equally spaced multiple planets also require compatible tooth phasing and
clearance. For the simple train with $q$ equally spaced planets, a familiar
phase condition follows by advancing adjacent mesh phases through $2\pi/q$:
$(Z_s+Z_r)/q$ must be an integer. All algebra below can instead describe a
single planet or a stipulated equal-load assembly; it is not proof that every
integer pair admits three equally spaced, noninterfering planets.

## Signed displacement, tooth passage, and a shaft readout

On the same explicit interval define
\begin{equation}
 N_p^f=\frac1{2\pi}\int_{t_0}^{t_1}(\omega_p-\Omega)\,dt,
 \qquad Q_p=\frac{Z_p}{2\pi}\int_{t_0}^{t_1}(\omega_p-\omega_c)\,dt.
 \label{eq:counts}
\end{equation}
$Q_p$ is an oriented tooth-pitch passage at a named mesh; integer crossing
counts additionally need an initial tooth phase. The sign at the other mesh
can be chosen oppositely, but that choice must be retained. Absolute traffic
is $Z_p\int\lvert\omega_p-\omega_c\rvert dt/(2\pi)$, which equals
$\lvert Q_p\rvert$ only without a reversal. The magnitude of the net body
count $\lvert N_p^f\rvert$ is another observable again.

| Observable | Definition | Dependence |
|-----------------------|----------------------------------------|------------------------------|
| Body displacement | $N_p^f$ | Observation frame |
| Tooth-pitch passage | $Q_p$ at a named mesh | Relative motion; invariant under a common frame change |
| Output displacement | $(\Delta\theta_o-\Delta\theta_\sigma)/(2\pi)$ | Linkage and stator $\sigma$ |

: Three distinct meanings of a planet's accumulated rotation.

Subtracting the integrands, without any dynamical assumption, proves
\begin{equation}
 N_p^0-N_p^c=N_c^0,\qquad N_p^r=N_p^c+N_c^r.
 \label{eq:count-addition}
\end{equation}
A common frame subtraction leaves every relative rate unchanged and hence
leaves $Q_p$ unchanged. These identities apply to arbitrary integrable paths,
including reversals; rational constant rates are only a convenient example.

For specificity, take the positive-integer family
$$
Z_s\in\{12,17,18,24,30,36,48,60,101\},\qquad
Z_p\in\{12,13,18,24,36\}.
$$
It has $36\leq Z_r\leq173$ under
\eqref{eq:assembly}. Over $[0,7/2]\,\mathrm s$, eight distinct rate choices
are described by the following complete definitions, with the other rates
obtained from \eqref{eq:meshes}–\eqref{eq:willis}.

| Choice | $(\nu_s,\nu_c)$ in $\mathrm{rev/s}$ | Defining feature |
|-----------|---------------------------------------------|-------------------------|
| 1 | $(7/3,5/4)$ | Forward motion |
| 2 | $(-2,3)$ | Counterrotation |
| 3 | $(1+Z_r/Z_s,1)$ | Ring held |
| 4 | $(0,1)$ | Sun held |
| 5 | $(1,0)$ | Carrier held |
| 6 | $(1,1)$ | Locked relative motion |
| 7 | $(1+Z_p/Z_s,1)$ | Planet stationary in ground |
| 8 | $(1,Z_s/(Z_s+Z_p))$ | Same stationary condition with sun rate fixed |

: Rate choices for ground, carrier, sun, and ring observations. The interval is not one second, so rates and accumulated counts must not be interchanged.

Write $d=\omega_s-\omega_c$ and
$(k_s,k_c,k_r,k_p)=(1,0,-Z_s/Z_r,-Z_s/Z_p)$. Every rate is
$\omega_j=\omega_c+k_jd$, and every interbody relative rate is
$(k_j-k_l)d$. The four $k_j$ are distinct, so all relative rates vanish if
and only if $d=0$. In the full $(\omega_s,\omega_c)$ plane, the four
absolute-rate zeros and this relative-rate zero are **five lines** through
the origin, not five rays. A transverse passage through a nontrivial linear
zero reverses sign; a tangency or the identically zero path does not.

# Forces, torques, and moving-frame work

## Free bodies before power

Use $q=3$ equally loaded planets, no pin couple, and inertias $I_s,I_r,I_c,I_p$;
$m_p$ is one planet's mass. Mesh forces $F_s,F_r$ are tangential components
on one planet, with the signs in Figure \ref{fig:gear}. The following
Newton–Euler equations determine the remaining forces and shaft torques from
a prescribed $\tau_s$ and kinematically compatible accelerations:
\begin{align}
 F_s&=\frac{\tau_s-I_s\dot\omega_s}{q r_s},&
 F_r&=F_s+\frac{I_p\dot\omega_p}{r_p},\\
 \tau_r&=I_r\dot\omega_r+q r_rF_r,&
 R_t&=m_pa\dot\omega_c-F_s-F_r,\\
 R_r&=-m_pa\omega_c^2,&
 \tau_c&=I_c\dot\omega_c+q aR_t.
 \label{eq:free-bodies}
\end{align}
The radial equation assumes fixed $a$ and neglects other radial mesh forces;
it isolates the declared tangential pitch-contact model. A pressure-angle
model would change the radial reaction.

When all rates are constant, \eqref{eq:free-bodies} gives
\begin{equation}
 F_r=F_s=\frac{\tau_s}{q r_s},\quad
 \tau_r=\frac{Z_r}{Z_s}\tau_s,\quad
 \tau_c=-\frac{Z_s+Z_r}{Z_s}\tau_s,\quad
 \tau_s+\tau_r+\tau_c=0.
 \label{eq:statics}
\end{equation}
These are consequences of the free bodies. The planet's real axial couple
$r_p(F_r-F_s)=I_p\dot\omega_p$ vanishes exactly when
$\dot\omega_c=(Z_s/Z_p)(\dot\omega_s-\dot\omega_c)$ for $I_p>0$.
Thus a steady idler has zero net spin-couple work in either frame, although
its body count differs. Its separate contact and pin powers need not vanish.

Let
\begin{align}
 J&=I_s+I_r+I_c+q(I_p+m_pa^2),\\
 H&=I_s\omega_s+I_r\omega_r+(I_c+q m_p a^2)\omega_c+qI_p\omega_p
   =J\omega_c+B d,\\
 B&=I_s-I_rZ_s/Z_r-q I_p Z_s/Z_p.
 \label{eq:momentum}
\end{align}
Summing the free bodies gives $\sum\tau=\dot H$ on
\eqref{eq:assembly}. Before imposing that assembly, the surplus is
$q[(r_s-a+r_p)F_s+(r_r-a-r_p)F_r]$. It need not vanish.
This is a compatibility requirement of these equations, not a failure of the
angular-momentum law for physical mechanisms.

The equation $\sum\tau=0$ alone constrains accelerations to
$J\dot\omega_c+B\dot d=0$ and need not make them zero. For example, choose
positive effective inertias $I_s=I_r=qI_p=I_c+q m_p a^2=1\,\mathrm{kg\,m^2}$
and tooth ratios $Z_s/Z_r=2/5$, $Z_s/Z_p=4/3$. Then $J=4$, $B=-11/15$
in the corresponding units. Taking $\dot\omega_c=1\,\mathrm{rad/s^2}$ and
$\dot d=60/11\,\mathrm{rad/s^2}$ accelerates every body while $\dot H=0$.
The torque ratios in \eqref{eq:statics} cannot be inferred in this case.

## The four-shaft operating family
\label{sec:four-shaft}

For the correctly phased axial model, write $u=\omega_c$ and
$d=\omega_s-\omega_c$. The two pitch constraints give
\begin{equation}
 \boldsymbol\omega=
 \begin{pmatrix}\omega_s\\\omega_c\\\omega_r\\\omega_o\end{pmatrix}
 =B\begin{pmatrix}u\\d\end{pmatrix},\qquad
 B=\begin{pmatrix}1&1\\1&0\\1&-Z_s/Z_r\\1&-Z_s/Z_p\end{pmatrix}.
 \label{eq:four-speed}
\end{equation}
The sun/carrier minor has determinant $-1$, so these four accessible shafts
have exactly two independent speeds. This division-free form includes every
held shaft. The four absolute-speed zero lines are
$u+d=0$, $u=0$, $Z_ru-Z_sd=0$, and $Z_pu-Z_sd=0$.
All six interbody relative rates vanish on the single line $d=0$.

Let $F_{si},F_{ri}$ be tangential sun and ring forces on planet $i$, and
$R_{ti}$ its carrier-pin force. Let $\tau_{oi}$ be the external torque
transmitted from its output; the equal-angle massless linkage transmits this
axial torque without a baseline carrier-support torque. The body equations are
\begin{align}
 r_s\sum_iF_{si}&=\tau_s-I_s\dot\omega_s,&
 r_p(F_{ri}-F_{si})+\tau_{oi}&=I_{pi}\dot\omega_p,\\
 R_{ti}+F_{si}+F_{ri}&=m_{pi}a\dot\omega_c,&
 \tau_r&=I_r\dot\omega_r+r_r\sum_iF_{ri},\\
 \tau_c&=I_c\dot\omega_c+a\sum_iR_{ti}.
 \label{eq:four-freebody}
\end{align}
$I_c$ excludes planet orbit; added output inertia belongs in the relevant
spin demand. The pin equation includes orbital acceleration once.
For one steady loaded planet, these equations give
$F_s=\tau_s/r_s$, $F_r=F_s-\tau_o/r_p$ and $R_t=-F_s-F_r$, hence
\begin{align}
 \tau_r&=\frac{Z_r}{Z_s}\tau_s-\frac{Z_r}{Z_p}\tau_o,\\
 \tau_c&=-\left(1+\frac{Z_r}{Z_s}\right)\tau_s
             +\left(\frac{Z_r}{Z_p}-1\right)\tau_o,\qquad B^T\boldsymbol\tau=0.
 \label{eq:four-torque}
\end{align}
The orthogonality follows from forces and moment arms. Only afterward does
$\boldsymbol\tau^T\boldsymbol\omega=0$ follow. The operating family has
coordinates $(u,d,\tau_s,\tau_o)$ before source and load laws select a subset.
A passive receiver must satisfy $\tau_o\omega_o\leq0$ at its actual reference.

For $(24,18,60)$ teeth, the following exact controls use $[0,1]\,\mathrm s$.
Each displayed work is its own constant torque--rate integral.

\begingroup\small

| State | $(\omega_s,\omega_c,\omega_r,\omega_o)$, rad/s | $(\tau_s,\tau_c,\tau_r,\tau_o)$, N m | $(W_s,W_c,W_r,W_o)$, J |
|------------------|-------------------------------------|-------------------------------------|-------------------------------------|
| Carrier held | $(1,0,-2/5,-4/3)$ | $(2,-14/3,5/3,1)$ | $(2,0,-2/3,-4/3)$ |
| Ring held, $\tau_o=0$ | $(7/2,1,0,-7/3)$ | $(2,-7,5,0)$ | $(7,-7,0,0)$ |
| Ring held, $\tau_o=1$ | $(7/2,1,0,-7/3)$ | $(2,-14/3,5/3,1)$ | $(7,-14/3,0,-7/3)$ |
| Ring held, $\tau_o=3$ | $(7/2,1,0,-7/3)$ | $(2,0,-5,3)$ | $(7,0,0,-7)$ |
| Sun held | $(0,1,7/5,7/3)$ | $(2,-14/3,5/3,1)$ | $(0,-14/3,7/3,7/3)$ |
| Output held | $(7/4,1,7/10,0)$ | $(2,-14/3,5/3,1)$ | $(7/2,-14/3,7/6,0)$ |
| Co-rotation | $(1,1,1,1)$ | $(2,-14/3,5/3,1)$ | $(2,-14/3,5/3,1)$ |
| Opposed rates | $(-2,1,11/5,5)$ | $(2,-14/3,5/3,1)$ | $(-4,-14/3,11/3,5)$ |
| Planet supplies work | $(7/2,1,0,-7/3)$ | $(2,-28/3,25/3,-1)$ | $(7,-28/3,0,7/3)$ |

: Four complete external ports. Positive work enters the assembly; a held port can carry a nonzero reaction.

\endgroup

The zero-torque control at the ring-held speeds has four zero works.
Reversing every speed reverses every work while preserving the torque
solution. Zero speeds with the displayed reaction set give an all-held
zero-work control. With $\tau_o=3\tau_s/4$, the ring torque vanishes;
with $\tau_o=3\tau_s/2$, the carrier torque vanishes. These are ordinary
load boundaries. A throughput ratio with
$D=\sum_j\max(\tau_j\omega_j,0)=0$ is undefined, including moving
zero-torque states.

Choose four effective inertias of $1\,\mathrm{kg\,m^2}$, with the carrier
entry including planet orbit and the last entry combining planet and output
spin. At each endpoint of the ring-held controls,
$K^0=\tfrac12\sum_j\omega_j^2=673/72\,\mathrm J$.
For example a $1\,\mathrm{kg}$ planet permits bare carrier inertia
$1-a^2>0$ in SI units, and the combined spin can be split into two
$1/2\,\mathrm{kg\,m^2}$ inertias. No preparation work is assigned to these
initialized states. The separately integrated works and independently
evaluated endpoints give $r_E=0$ with no event or impulse.

For $q$ planets the steady equations determine $\sum_iF_{si}$ and each
$F_{ri}-F_{si}$, leaving $q-1$ force-sharing freedoms. A declared equal
bilateral stiffness and equal total contact deflection give
\begin{equation}
 F_{si}=\frac{\tau_s}{qr_s}
       +\frac{\tau_{oi}-\bar\tau_o}{2r_p},\quad
 F_{ri}=F_{si}-\frac{\tau_{oi}}{r_p},\quad
 \bar\tau_o=\frac1q\sum_i\tau_{oi}.
 \label{eq:unequal-four}
\end{equation}
Indeed $F_{si}+F_{ri}$ is then common, and summing the first equation
recovers the sun force. This is a bilateral or preloaded-contact selection,
with zero tooth error. At $q=3,\tau_s=2$, loads $(3,0,0)\,\mathrm{N\,m}$
give $F_s=(250/3,0,0)\,\mathrm N$ and $F_r=-F_s$.
Loads $(1,1,1)$ give $F_s=(250/9,250/9,250/9)\,\mathrm N$.
Both have $\tau_c=0,\tau_r=-5\,\mathrm{N\,m}$; their individual forces
and takeoffs differ. A common output combining three takeoffs needs its own
phase offsets, load sharing and support model.

For acceleration the equation is
$B^T\boldsymbol\tau=B^TMB(\dot u,\dot d)^T$.
With $M=I$, $u=1+t$, $d=5/2+60t/11$, and zero constraint force,
$\boldsymbol\tau=\dot{\boldsymbol\omega}=(71/11,1,-13/11,-69/11)$
in SI units on $[0,1]\,\mathrm s$.
Their sum vanishes although all four accelerations are nonzero.
Each work is
$\tau_j\omega_j(0)+\tau_j\dot\omega_j/2$; each endpoint is
$\sum_j\omega_j(t)^2/2$. Substitution gives the same total increase.
The steady torque law must therefore remain attached to its zero-acceleration
assumption.


## The actual port sides

For the unloaded three-shaft subcase, the boundary encloses all gears,
carrier and pins, and its physical inputs are the sun, carrier and ring
shafts. A loaded planet adds its fourth port as derived above. Internal transfers
on one planet's boundary are listed separately:

| Port or side | Signed instantaneous power in frame $f$ |
|--------------------------------------|----------------------------------------------------------|
| Shaft $j=s,r,c$ into complete train | $\tau_j(\omega_j-\Omega)$ |
| Sun mesh into one planet | $F_sr_s(\omega_s-\Omega)$ |
| Same mesh into sun | $-F_sr_s(\omega_s-\Omega)$ |
| Ring mesh into one planet | $F_rr_r(\omega_r-\Omega)$ |
| Same mesh into ring | $-F_rr_r(\omega_r-\Omega)$ |
| Pin into one planet | $R_ta(\omega_c-\Omega)+R_r\dot a$ |
| Same pin into carrier | Negative of planet-side pin power |

: Force–velocity and torque–rate products. Here $\dot a=0$. Rolling equates the two contact-point velocities; it does not set each contact-side power to zero.

A sliding variant must replace ideal no-slip contact by a declared relative
velocity $v_{\rm slip}$ and opposing friction force. With Coulomb coefficient
$\mu_f\geq0$ and normal force $F_N\geq0$, the pair's mechanical power sum is
$-D$, where $D=\mu_f F_N\lvert v_{\rm slip}\rvert$. Both contact points
receive the same subtraction $\boldsymbol\Omega\mathbin{\times}\mathbf r$,
so $v_{\rm slip}$ and $D$ are frame invariant. The exported heat work is
$-\int Ddt$, or $-\int T\dot S_{\rm out}dt$ under immediate thermal export.
The pure-rolling idealization has $D=0$; it does not bound real mesh losses,
even for an illustrative $0\leq\mu_f\leq1/2$.

## Relative kinetic energy and effective centrifugal potential

Define the constitutive ground kinetic energy
\begin{equation}
 K^0=\tfrac12 I_s\omega_s^2+\tfrac12 I_r\omega_r^2
 +\tfrac12(I_c+q m_p a^2)\omega_c^2+\tfrac12qI_p\omega_p^2.
 \label{eq:kinetic}
\end{equation}
Replacing every angular rate by its frame-relative value gives
$K^f=K^0-\Omega H+J\Omega^2/2$. The effective centrifugal potential of
all the mass, including spin contributions, is $U^f=-J\Omega^2/2$. Hence
\begin{equation}
 E^f=K^f+U^f=K^0-\Omega H,\qquad E^0-E^f=\Omega H.
 \label{eq:frame-store}
\end{equation}
For one planet the centrifugal part is
$-\Omega^2(I_p+m_pa^2)/2$, of which the orbital part is
$-m_p\Omega^2a^2/2$. This is a coordinate-dependent effective potential,
not a newly created physical reservoir. It can make $E^f$ negative.

For fixed $J$, the Euler-force power summed over the bodies is
$-\dot\Omega(H-J\Omega)$: for a spin it is the fictitious torque
$-I\dot\Omega$ times $\omega-\Omega$, and for translation it is
$(-m\dot{\boldsymbol\Omega}\times\mathbf r)\cdot\mathbf v^f$.
The explicit potential-time term is $-J\Omega\dot\Omega$.
They must be retained separately when using $E^f$. The second is a parameter
term in the effective store, not a physical shaft or a second heat loss.
Multiplying \eqref{eq:free-bodies} by the corresponding velocities gives
\begin{align}
 \dot K^0&=\sum_{j=s,r,c}\tau_j\omega_j-D,\\
 \dot E^f&=\sum_{j=s,r,c}\tau_j(\omega_j-\Omega)-D
            -\dot\Omega(H-J\Omega)-J\Omega\dot\Omega.
 \label{eq:frame-balance}
\end{align}
Thus a complete effective-frame balance includes $-\dot\Omega H$ in
addition to physical port products. No physical frame-driving supply work is
inferred from this mathematical term.

A useful correction concerns Coriolis force. The rotating-velocity and
Coriolis formulas are standard; see [MIT (2022), Section 31.4][frames].
At fixed $a$ the planet-centre
velocity is $a(\omega_c-\Omega)\mathbf e_\theta$ in frame $f$, so
\begin{equation}
 \mathbf F_{\rm Cor}=2m_p\Omega a(\omega_c-\Omega)\mathbf e_r,
 \qquad \mathbf F_{\rm Cor}\cdot\mathbf v^f=0.
 \label{eq:coriolis}
\end{equation}
It is zero in ground and carrier frames, but generally nonzero in a sun or
ring frame. Constant radius guarantees zero Coriolis **power**, not zero
Coriolis force in every frame. Radial motion adds a tangential component;
Coriolis force still does no total instantaneous work.

The real axial torque component is unchanged by rotating coordinates about
$z$, even during acceleration. Real force vectors are also unchanged as
geometrical objects, but their coordinate components are not. If $R_r,R_t$
are constant in the carrier basis, then
$R_x=R_r\cos\phi-R_t\sin\phi$ and
$R_y=R_r\sin\phi+R_t\cos\phi$, with
$\dot\phi=\omega_c-\Omega$. Each fixed-axis component has full-cycle
peak-to-peak excursion $2\sqrt{R_r^2+R_t^2}$; a shorter interval need not
reach those extrema. Stationarity requires zero relative rotation or zero
force, with additional possibilities only for specially varying components.

## An exact steady ledger and its preparation

Choose $(Z_s,Z_p,Z_r)=(24,18,60)$, $m_0=1/500\,\mathrm m$,
$\tau_s=47/4\,\mathrm{N\,m}$, and held-ring rates
$(\nu_s,\nu_c,\nu_r,\nu_p)=(7/2,1,0,-7/3)\,\mathrm{rev/s}$.
The operation interval is $[2/5,19/10]\,\mathrm s$, of duration $3/2\,\mathrm s$.
Each work in the next table is its constant effort–flow product times that
duration, integrated before combining.

| Signed work | Ground, J | Carrier, J |
|--------------------------------|--------------------:|--------------------:|
| Sun shaft | $987\pi/8$ | $705\pi/8$ |
| Held-ring shaft | $0$ | $-705\pi/8$ |
| Carrier shaft | $-987\pi/8$ | $0$ |
| One planet-side pin | $-329\pi/8$ | $0$ |
| One sun-mesh planet side | $329\pi/8$ | $235\pi/8$ |
| One ring-mesh planet side | $0$ | $-235\pi/8$ |

: Exact operation works. Opposite internal sides have opposite signs and cancel on the whole-train boundary. The sun and ring mesh sides are different; there is no single work common to every mesh side.

For endpoint evaluation choose $m=\mu r^2$, $I=\mu r^4/2$ for each disc,
with $\mu=490\,\mathrm{kg/m^2}$; $\mu$ includes the circular area factor.
The carrier disc has radius $a=21/500\,\mathrm m$.
The ring has outer radius $r_o=r_r+1/250\,\mathrm m$ and
$I_r=\mu(r_o^4-r_r^4)/2$. Planet orbital inertia is additional.
Direct substitution gives
\begin{align}
 J&=\frac{16851149}{6250000000}\,\mathrm{kg\,m^2},&
 H_*&=\frac{166698\pi}{48828125}\,\mathrm{kg\,m^2/s},\\
 K_*^0&=\frac{18864657\pi^2}{3125000000}\,\mathrm J,&
 E_*^c&=-\frac{2472687\pi^2}{3125000000}\,\mathrm J.
 \label{eq:reference-stores}
\end{align}
Both endpoints of operation have these respective values because their
states are explicitly the same. The separately summed external shaft works
are zero in either frame, and $r_E=0$. A held ring has nonzero carrier-frame
work; deleting its reaction port would leave $705\pi/8\,\mathrm J$
unbalanced. This difference is present in shaft and mesh sides as well as pins.

The same endpoint can be reached by a specified smooth preparation. Put
$F(z)=3z^2-2z^3$; on $[0,2/5]\,\mathrm s$ take
$\omega_j=\omega_{j*}F(t/(2/5))$ and $\tau_s=(47/4)F$.
On $[19/10,5/2]\,\mathrm s$ replace $F$ by
$1-F((t-19/10)/(3/5))$. Accelerations and applied torque meet the steady
values continuously. There are no impulses. The free bodies yield
$\tau_j=a_jF+b_j\dot F$, where
\begin{equation}
 (a_s,a_r,a_c)=\left(\frac{47}4,\frac{235}8,-\frac{329}8\right),
 \quad (b_s,b_r,b_c)=\left(0,-\frac{1639197\pi}{625000000},
 \frac{18864657\pi}{3125000000}\right)
 \label{eq:ramp-coefficients}
\end{equation}
in torque and angular-momentum units respectively. Each shaft integral on a
ramp of duration $T$ is exactly
\begin{equation}
 W_j^f=(\omega_{j*}-\Omega_*)
 \left(\frac{13}{35}Ta_j\ \mathbin{\pm}\ \frac12b_j\right),
 \label{eq:ramp-work}
\end{equation}
with $+$ for preparation and $-$ for relaxation. This follows from
$\int_0^1F^2dz=13/35$ and $\int F\,dF=\pm1/2$.
For the internal sides write
$$
 F_s=f_sF+g_s\dot F,\quad F_r=f_sF+g_r\dot F,\quad
 R_t=-2f_sF+g_t\dot F,
$$
where $f_s=(47/4)/(q r_s)$, $g_s=-I_s\omega_{s*}/(q r_s)$,
$g_r=g_s+I_p\omega_{p*}/r_p$, and
$g_t=m_pa\omega_{c*}-g_s-g_r$.
The separately integrated planet-side works are therefore
\begin{align}
 W_{sp}^f&=r_s(\omega_{s*}-\Omega_*)
       \left(\frac{13T}{35}f_s\mathbin{\pm}\frac{g_s}{2}\right),\\
 W_{rp}^f&=r_r(\omega_{r*}-\Omega_*)
       \left(\frac{13T}{35}f_s\mathbin{\pm}\frac{g_r}{2}\right),\\
 W_{{\rm pin},p}^f&=a(\omega_{c*}-\Omega_*)
       \left(-\frac{26T}{35}f_s\mathbin{\pm}\frac{g_t}{2}\right).
 \label{eq:ramp-internal}
\end{align}
Each opposite side has the negative of its corresponding expression; no
internal sum is added to the whole-train shaft works.
The ground endpoints are $0,K_*^0$ during preparation and $K_*^0,0$ during
relaxation. Carrier endpoints are $0,E_*^c$ and $E_*^c,0$.

The separately integrated Euler and potential-time terms on preparation are
$-\Omega_*(H_*-J\Omega_*)/2$ and $-J\Omega_*^2/2$;
both reverse on relaxation. The ground-minus-carrier shaft-work sum is
$\Omega_*H_*/2=166698\pi^2/48828125\,\mathrm J$, and the corresponding
effective-field difference is the same. Their total is
$\Omega_*H_*=333396\pi^2/48828125\,\mathrm J$.
For the distinct forward rates $(\nu_s,\nu_c)=(7/3,5/4)$ the same formula
applies with its own $H_*$; a carrier-held path has $\Omega_*=0$ and no
frame difference. These statements follow from the path, not constant stores.

In general the shaft difference is $\int\Omega\,dH$ and the effective-field
difference is $\int H\,d\Omega$. Integration by parts proves
\begin{equation}
 \int_{t_0}^{t_1}\Omega\dot H\,dt+
 \int_{t_0}^{t_1}H\dot\Omega\,dt=[\Omega H]_{t_0}^{t_1}.
 \label{eq:history}
\end{equation}
The equal split requires a proportional history. For the explicit path
$H=H_*z$, $\Omega=\Omega_*[z+bz(1-z)]$, $0\leq z\leq1$, its two shares
are $1/2+b/6$ and $1/2-b/6$. They can lie outside $[0,1]$ when one term
opposes the total. When $B\ne0$ in \eqref{eq:momentum}, compatible sun and
carrier rates can be reconstructed from $H$ and $\Omega=\omega_c$.
Prescribing only endpoint rates leaves these individual works undetermined.

## The locked control and the two limits

Set every rate to $2\pi\,\mathrm{rad/s}$ and set the drive torque to zero.
Equation \eqref{eq:free-bodies} leaves only
$R_r=-83349\pi^2/3125000\,\mathrm N$, with zero radial power.
Over $[0,3/2]\,\mathrm s$, $N_p^0=N_c^0=3/2$, $N_p^c=0$, and no teeth
pass either mesh. Every physical port work is exactly zero. Independent stores
are
\begin{equation}
 K^0(t_0)=K^0(t_1)=\frac{16851149\pi^2}{3125000000}\,\mathrm J,
 \quad E^c(t_0)=E^c(t_1)=-\frac{16851149\pi^2}{3125000000}\,\mathrm J.
 \label{eq:locked}
\end{equation}
In carrier coordinates $K^c=0$, whereas $U^c$ is negative. Assigning the
positive ground value to both effective stores would contradict
\eqref{eq:frame-store}. Both balances nonetheless give $r_E=0$.

Locking the rates while retaining $\tau_s=47/4\,\mathrm{N\,m}$ is a
different control. It transmits the self-equilibrated torque set
\eqref{eq:statics}; for example the ground pin power per planet is
$-329\pi/12\,\mathrm W$ and its carrier-frame power is zero. On the approach
$\omega_c=2\pi$, $\omega_s=\omega_c+\varepsilon$, fixed drive gives a
nonzero limiting maximum shaft work $987\pi/8\,\mathrm J$ over $3/2\,\mathrm s$;
that maximum is constant on the portion where the carrier port dominates.
Scaling the drive to zero with $\varepsilon$ makes every port work approach
zero. Both paths are continuous, but only the latter reaches the zero-drive
null. The varying counts alone imply neither result about work.

# What a physical lead-out reports

## Stator, phase reference, and finite-interval ripple

A lead-out connects the planet axle to a parallel output axis offset by $a$;
it does not connect that output to the sun. Denote the planet and carrier
angles by $\theta_p,\phi$, and the output and stator angles by
$\theta_o,\theta_\sigma$. The reported count is
$N_o^\sigma=\Delta(\theta_o-\theta_\sigma)/(2\pi)$.
For the **same output motion**, subtraction gives
\begin{equation}
 N_o^0-N_o^c=\Delta\phi/(2\pi).
 \label{eq:stator}
\end{equation}
With finite loading, physically remounting the stator may change that motion;
then \eqref{eq:stator} must be applied separately to each trajectory.

For a Hooke joint of angle $\beta<\pi/2$, let $c_\beta=\cos\beta>0$ and
let $H_\beta(x)$ be the continuous lift of
$\operatorname{atan2}(\sin x,c_\beta\cos x)$, with $H_\beta(0)=0$.
Then $H_\beta(x+\pi)=H_\beta(x)+\pi$ and
$\tan H_\beta(x)=\tan x/c_\beta$.
The joint plane in a parallel-offset Z arrangement is carried by the carrier.
Writing $x=\theta_p-\phi$, a declared two-joint kinematic map is
\begin{equation}
 \theta_o=\phi+H_\beta\!\left(H_\beta(x)+\gamma+\frac\pi2\right)
                    +\frac\pi2,
 \label{eq:hooke-map}
\end{equation}
where constant additive angles have no effect on displacement. With correct
carrier-fixed phasing $\gamma=0$, this reduces to $\theta_o=\theta_p$
up to a constant. A rigid intermediate shaft supplies that fixed relative
phasing. With carrier-fixed quarter-turn error $\gamma=\pi/2$, write the
output as $\phi+F_\beta(x)$ up to a constant; then
\begin{equation}
 \tan F_\beta(x)=\frac{\tan x}{c_\beta^2},\qquad
 \chi_\beta(x)=F_\beta'(x)=
 \frac{c_\beta^2}{c_\beta^4\cos^2x+\sin^2x},\qquad
 c_\beta^2\leq \chi_\beta\leq c_\beta^{-2}.
 \label{eq:ripple}
\end{equation}
This is a twice-per-relative-revolution ripple. Since
$F_\beta(x)-x$ is bounded and $\pi$-periodic, the mean count agrees with the
planet count, but an arbitrary finite interval has the endpoint correction
$\delta=[F_\beta(x)-x]_{t_0}^{t_1}/(2\pi)$. It is exactly zero over complete
ripple periods. It must not be dropped merely because the mean ratio is one.

Holding the phase in ground instead prescribes $\gamma=-\phi$.
Equation \eqref{eq:hooke-map} then gives
$\theta_o=\theta_p-\phi+$ a bounded phase-dependent term.
A grounded stator has the carrier-relative **mean** count, with an endpoint
ripple correction $\delta_g$ determined by that equation. An exact claim for
all finite intervals would be false. The device that enforces this drifting
phase has not been specified dynamically; its required effort and supply work
remain unknown.

| Coupling and phase | Ground stator count | Carrier stator count |
|--------------------------------------|-------------------------------|-------------------------------|
| Correct double Hooke, carrier phase | $N_p^0$ | $N_p^c$ |
| Quarter-turn double Hooke, carrier phase | $N_p^0+\delta$ | $N_p^c+\delta$ |
| Double Hooke, ground phase | $N_p^c+\delta_g$ | Not assigned a physical mounting here |
| Ideal Oldham or equivalent constant-ratio offset path | $N_p^0$ | $N_p^c$ |
| Bevel path, $\kappa=1$ | $N_p^0$ | $N_p^c$ |
| Bevel path, $\kappa=2$ | $N_c^0+2N_p^c$ | $2N_p^c$ |

: Eleven mountings, with finite-interval phase corrections retained. Coincidence with a particular body count in a special state is not an identity for all states.

The ideal Oldham constraint is $\theta_o=\theta_p$ even as the offset
precesses. Orthogonal sliding coordinates are $a\cos x$ and $a\sin x$;
each has excursion amplitude $a$ (full stroke $2a$), and their maximum
absolute value never exceeds $a$. This kinematic statement can also represent
an ideal constant-velocity Schmidt path; it does not make their detailed
force systems identical. The bevel path obeys
$\theta_o=\phi+\kappa(\theta_p-\phi)$, which proves the last two cases.

Whether an actual orbiting lead-out follows these phase and stator predictions
under a small load remains a measurement question [OP-EPI-05]. A carrier
encoder and an output encoder can resolve the predicted full-turn count
and the twice-per-relative-revolution ripple at low speed; changing the
phase datum distinguishes a carrier-fixed joint plane from a ground-referenced
actuator. Their finite-interval differences must include $\delta$ or
$\delta_g$. These are ordinary angle observations, without exceptional
energy sensitivity. Equation \eqref{eq:stator} rules out a single unchanged
rotor angle having equal readings against two differently rotating stators.
It does not prove that no differential device can encode relative tooth
passage, or that no device of any kind can produce an invariant output.

## Load, support, and cycle work

For the carrier-fixed map $\theta_o=\phi+F(x)$, put
$d=\omega_p-\omega_c$, $\chi=F'(x)$, and
$\omega_o=\omega_c+\chi d$. A linkage boundary includes a rotor of spin inertia
$I_R$ and mass $m_R$ orbiting at $a$, an output inertia $I_o$, and massless
coupling members. Its ground kinetic store is
$K_L^0=I_R\omega_p^2/2+m_Ra^2\omega_c^2/2+I_o\omega_o^2/2$;
its other-frame stores follow \eqref{eq:frame-store} with their own $J,H$.
The stator, imposed output torque $\tau_L$, and drive are external.

Let the drag magnitude be $d_0\geq0$, with
$s_\sigma=\operatorname{sgn}(\omega_o-\omega_\sigma)$ away from a zero.
The output equation gives coupling torque
$\mathcal T=I_o\dot\omega_o-\tau_L+d_0s_\sigma$.
Virtual angular displacements in $\theta_o(\theta_p,\phi)$ give coupling
reactions $\mathcal T\chi$ and $\mathcal T(1-\chi)$. The external drive
must also accelerate the input rotor, so
$\tau_d=I_R\dot\omega_p+\mathcal T\chi$ and
$\tau_u=\mathcal T(1-\chi)$ at the drive and carrier support.
Their work integrals and those of the load, drag, and rotor pin are
\begin{align}
 W_d^f&=\int (I_R\dot\omega_p+\mathcal T\chi)(\omega_p-\Omega)dt,&
 W_u^f&=\int \mathcal T(1-\chi)(\omega_c-\Omega)dt,\\
 W_L^f&=\int\tau_L(\omega_o-\Omega)dt,&
 W_{\rm drag}^f&=\int(-d_0s_\sigma)(\omega_o-\Omega)dt,\\
 W_{\rm pin}^f&=\int m_Ra\dot\omega_c\,a(\omega_c-\Omega)dt.
 \label{eq:linkage-work}
\end{align}
All integrals in this section have the explicitly stated readout or cycle
interval. At constant $\omega_c$ the rotor-pin power is zero, whereas the
support port can be nonzero. The orbital acceleration is counted only at
the pin, not again in $\tau_u$. Summing all five instantaneous products gives
$I_R\dot\omega_p(\omega_p-\Omega)+I_o\dot\omega_o(\omega_o-\Omega)
+m_Ra^2\dot\omega_c(\omega_c-\Omega)$.
For $K_L^f$ add the Euler power $-\dot\Omega(H_L-J_L\Omega)$; for
$E_L^f=K_L^f-J_L\Omega^2/2$ also add $-J_L\Omega\dot\Omega$.
These terms reproduce the derivative of the independently evaluated store,
with $J_L=I_R+I_o+m_Ra^2$ and
$H_L=I_R\omega_p+I_o\omega_o+m_Ra^2\omega_c$.
Constant input rates remove the input-spin and orbital acceleration powers
and give the cycle controls below. This torque-path
model does not resolve transverse Cardan joint forces or bending-couple ports;
two joints alone do not determine that system. Attaching it to a train with
the readout load changes the planet and carrier equations, as derived below.

The physical dissipation is
$D_\sigma=d_0\lvert\omega_o-\omega_\sigma\rvert$. It equals minus the
rotor drag power only in the stator frame. For the reference train's ideal
Oldham path, $d_0=1/50\,\mathrm{N\,m}$ and $[0,7/2]\,\mathrm s$ give
\begin{equation}
 \int D_0dt=\frac{49\pi}{150}\,\mathrm J,\qquad
 \int D_cdt=\frac{7\pi}{15}\,\mathrm J.
 \label{eq:drag}
\end{equation}
These are different physical mountings. A change of coordinates on either
fixed mounting leaves its relative drag dissipation unchanged. Separately
integrating the two drag-torque and relative-rate products gives the finite
comparison
\begin{equation}
 Q_c-Q_0=\frac{7\pi}{15}-\frac{49\pi}{150}
        =\frac{7\pi}{50}\,\mathrm J.
 \label{eq:mounting-difference}
\end{equation}
Hold the stated motion in both mountings and observe the actual drag torque,
relative angle, and the drive and support works. A changed trajectory calls
for its own integrals. Dissipation is internal conversion when the frictional
bodies lie inside the apparatus; heat exported across that larger boundary
and their thermal endpoint stores are determined separately.

One conditional measurement budget makes the scale explicit. Suppose each
recorded drag torque is bounded by $21/1000\,\mathrm{N\,m}$, each relative
rate by $21\,\mathrm{rad/s}$, and calibrated pointwise errors are at most
$1/1000\,\mathrm{N\,m}$ and $1/100\,\mathrm{rad/s}$. These envelopes
contain both prescribed rates. Equation \eqref{eq:product-uncertainty} gives
the following bound for the difference of the two $7/2$ s integrals:
\begin{equation}
 u_{Q_c-Q_0}^{\rm product}\leq
 7\left(\frac{21}{1000}\frac1{100}
       +21\frac1{1000}+\frac1{1000}\frac1{100}\right)\mathrm J
 =\frac{7427}{50000}\,\mathrm J.
 \label{eq:drag-uncertainty}
\end{equation}
The proposed total bound $1/5$ J leaves $2573/50000$ J for timing and other
observation errors. If independently met, it separates the predicted
$7\pi/50$ J from zero using torque and encoder observations. These are
calibration requirements, not specifications of an unnamed instrument.
Resolving the full apparatus remainder additionally needs all other ports
and endpoint stores in \eqref{eq:residual-uncertainty}.

A prescribed
$\tau_L=-47/40\,\mathrm{N\,m}$ is not necessarily a passive load:
when $\omega_o<0$ its ground-frame power is positive. Describing a torque as
a brake therefore requires its relative velocity as well as its sign.

At constant $\omega_p,\omega_c$, the quarter-turn Hooke path has cycle duration
$T_b=\pi/\lvert d\rvert$. Assume $\tau_L$ and $s_\sigma$ remain constant
through that cycle. Set $\mathcal T_0=-\tau_L+d_0s_\sigma$. Since
$F(x+\pi)-F(x)=\pi$, $\int(1-\chi)dt=0$. Also
$\dot\omega_o=d\dot \chi$. The ground support work integrates exactly to
\begin{equation}
 W_u^0=\omega_c\left\{\mathcal T_0\int(1-\chi)dt+
 I_od\left[\chi-\frac{\chi^2}{2}\right]_{t_0}^{t_0+T_b}\right\}=0.
 \label{eq:cycle}
\end{equation}
The output rate and all stores return to their initial values. This proves
zero cycle support work for this torque path; it makes no claim for changing
drag sign, compliance, backlash, joint friction, or the unresolved transverse
force system. It is stronger within that model than merely observing a small
cycle residual, and narrower than a claim about real joints.

For an axial lead-out length $L=3/25\,\mathrm m$, the geometry gives
$c_\beta^2=L^2/(L^2+a^2)$. Choosing $a=137/1000\,\mathrm m$ gives
$c_\beta^2=14400/33169$, the exact illustrative value in Figure
\ref{fig:ripple}. Its large articulation is a kinematic example only.

![Exact quarter-turn Hooke transmission factor from equation \eqref{eq:ripple}, with $\cos^2\beta=14400/33169$. The ripple is periodic in the carrier-relative input angle. Its mean is one even though the instantaneous factor ranges between the annotated exact bounds. The illustrative articulation is not asserted to be practical.](figures/hooke-ripple.pdf){#fig:ripple width=88%}

\FloatBarrier

For the bevel path $\chi=\kappa$, the support work is instead
$\mathcal T_0(1-\kappa)(\omega_c-\Omega)T_b$. As an exact example choose
$Z_s=Z_p=12$, $Z_r=36$, $(\nu_s,\nu_c)=(7/3,5/4)$,
$\kappa=2$, $\tau_L=-47/40$, $d_0=1/50$ in SI units.
Then $\nu_p=1/6$, $\nu_o=-11/12$, $T_b=6/13\,\mathrm s$, and
$\mathcal T_0=231/200\,\mathrm{N\,m}$ for either listed stator. Thus
\begin{equation}
 W_u^0=-\frac{693\pi}{520}\,\mathrm J,\qquad W_u^c=0.
 \label{eq:bevel-work}
\end{equation}
The other integrals in \eqref{eq:linkage-work} balance it with unchanged
endpoint stores. This signed support transfer is the comparison for a loaded
apparatus; the combined physical energy remainder is a separate quantity.

## The loaded train and its unresolved reaction work

Does the train with its attached lead-out retain an unexplained energy change
after its drive, receiver, moving supports, and endpoint states have all been
included [OP-EPI-33]? The separate torque-path balances do not yet determine
that physical result. Its signed magnitude is unknown. In particular, the
transverse joint forces, bending couples, and the actuator that holds a
ground-referenced phase require their own mechanical constraints and ports.

An exact axial extension makes the change caused by attachment explicit.
Take $q$ identical, equally phased lead-outs, one on each planet, with stators
fixed in ground. Each input rotor is an additional body, with inertia $I_R$
and mass $m_R$, rather than a second counting of the planet gear. Enclose the
train and all lead-outs; keep the three shaft drives, output receivers, and
thermal reservoirs outside. With the same kinematic constraints, the loaded
free bodies give
\begin{align}
 F_s&=\frac{\tau_s-I_s\dot\omega_s}{qr_s},&
 F_r&=F_s+\frac{I_p\dot\omega_p+\tau_d}{r_p},\\
 R_t&=m_pa\dot\omega_c-F_s-F_r,&
 \tau_r&=I_r\dot\omega_r+qr_rF_r,\\
 \tau_c&=I_c\dot\omega_c+qaR_t
                  +q(\tau_u+m_Ra^2\dot\omega_c).
 \label{eq:loaded-free-bodies}
\end{align}
Here $\tau_d=I_R\dot\omega_p+\mathcal T\chi$ and
$\tau_u=\mathcal T(1-\chi)$ retain their earlier meanings. The planet now
supplies $\tau_d$; the carrier supplies both the linkage support torque and
the extra orbital acceleration. A carrier-mounted stator would additionally
return its drag reaction to the carrier and requires that changed free body.

On the same declared interval $[t_0,t_1]$, the external works in ground are
the three separate $\int\tau_j\omega_jdt$, the receiver work
$q\int\tau_L\omega_odt$, and heat export
$-q\int d_0\lvert\omega_o\rvert dt$ for this ground stator. On separate
subboundaries the common axle works are
$W_{p\to L}=\int\tau_d\omega_pdt$ and
$W_{L\to p}=-\int\tau_d\omega_pdt$. They cancel only after integration
on that shared trajectory. The support and orbital sides cancel in the same
way. Multiplying \eqref{eq:loaded-free-bodies} and the output equation by
their own velocities gives
\begin{equation}
 \frac{d}{dt}(K^0+qK_L^0)
 =\tau_s\omega_s+\tau_r\omega_r+\tau_c\omega_c
       +q\tau_L\omega_o-qd_0\lvert\omega_o\rvert.
 \label{eq:loaded-axial-balance}
\end{equation}
Both endpoint stores are evaluated from all the spin and orbital rates.
For any compatible smooth path the separate exact integrals give zero residual
in this axial model. At a finite force change, retain both power sides;
an impact requires an additional stated event law. Unspecified physical
transverse or phase-drive works are not supplied by
\eqref{eq:loaded-axial-balance}.

For a complete finite axial control, use the reference train
$(Z_s,Z_p,Z_r)=(24,18,60)$, $q=3$, module $1/500$ m, and hence
$(r_s,r_p,r_r,a)=(3/125,9/500,3/50,21/500)$ m.
Prescribe $(\omega_s,\omega_c,\omega_r,\omega_p)
=(7\pi,2\pi,0,-14\pi/3)\,\mathrm{rad/s}$ throughout
$[t_0,t_1]=[2/5,19/10]$ s. Attach three ideal Oldham paths with ground
stators and $d_0=1/50\,\mathrm{N\,m}$. Choose the new receiver torque
$\tau_L=+47/40\,\mathrm{N\,m}$ on each negative-speed output, making
each receiver passive on this interval. With $\chi=1$ and
$\tau_s=47/4\,\mathrm{N\,m}$, the output and loaded free bodies give
independently
\begin{equation}
 \tau_d=-\frac{239}{200},\qquad \tau_u=0,\qquad
 \tau_r=\frac{697}{40},\qquad \tau_c=-\frac{819}{25}
 \quad\mathrm{N\,m}.
 \label{eq:loaded-control-torques}
\end{equation}
The boundary is the train and all three lead-outs, with the receiver and
heat reservoirs external. Under the immediate-export thermal idealization,
each signed effort–flow product integrates separately over $3/2$ s:

| Port into the combined axial system | Power product | Work, J |
|------------------------------------|--------------------------------------|----------------|
| Sun | $\tau_s\omega_s$ | $987\pi/8$ |
| Held ring | $\tau_r\omega_r$ | $0$ |
| Carrier | $\tau_c\omega_c$ | $-2457\pi/25$ |
| Receiver $j$, each $j=1,2,3$ | $\tau_L\omega_o$ | $-329\pi/40$ |
| Drag heat $j$, each $j=1,2,3$ | $-T_j\dot S_j=-d_0\lvert\omega_o\rvert$ | $-7\pi/50$ |

: Separately integrated transfers for the loaded constant-rate control. The receiver and heat entries each occur three times.

For finite added-body parameters $I_R,I_o,m_R$, evaluation from each specified
endpoint state gives
\begin{equation}
 E(t_0)=E(t_1)=K_*^0+
 3\left[\frac{I_R+I_o}{2}\left(\frac{14\pi}{3}\right)^2
       +\frac{m_Ra^2}{2}(2\pi)^2\right].
 \label{eq:loaded-control-stores}
\end{equation}
Here $K_*^0$ is the reference train's ground kinetic store at these rates;
the added rotor masses and inertias are counted only in the bracket.
The external works independently sum to
$987\pi/8-2457\pi/25-987\pi/40-21\pi/50=0$ J, so the residual is zero.
The common axle transfers
$\int_{t_0}^{t_1}\tau_d\omega_pdt=1673\pi/200$ J into each lead-out
and its negative into its planet. Each support and orbital-pin integral is
zero at these constant rates. These internal sides cancel after integration.
There are no events within this operation interval; preparation and reset
are additional intervals. Numerical integration error is zero, while the
physical thermal and unresolved reaction contributions remain undetermined.

The unloaded reference carrier work is $-987\pi/8$ J. Thus attachment changes
that signed carrier work by $5019\pi/200$ J while the three passive receivers
collect $987\pi/40$ J and the drag dissipates $21\pi/50$ J. This is a
substantial torque-and-angle target at the stated speeds. For example,
conditional measured envelopes $|\widehat\tau_c|\leq45\,\mathrm{N\,m}$,
$|\widehat\omega_c|\leq7\,\mathrm{rad/s}$ and pointwise errors
$u_\tau=1/10\,\mathrm{N\,m}$, $u_\omega=1/100\,\mathrm{rad/s}$ bound
the two carrier-work product errors together by $3453/1000$ J. A total
comparison bound of 5 J leaves $1547/1000$ J for timing and other observation
errors, well below the predicted difference. Actual calibration determines
whether this target is met; it does not close the full physical balance.

For such a reaction at its stated application point, use
\begin{equation}
 W_{\mathrm{reaction}}=
 \int_{t_0}^{t_1}
 (\mathbf F\cdot\mathbf v+\mathbf M\cdot\boldsymbol\omega)\,dt.
 \label{eq:reaction-work}
\end{equation}
The point velocity and body's angular velocity are conjugate to the force
and couple. A fixed support has zero flow; a moving support or a bending
degree of freedom needs its own determination. The current massless-joint
model supplies too few constraints for all transverse reactions, leaving
their physical works open.

A low-speed experiment with synchronized shaft torque and encoder readings
at the input, receiver, and moving support can investigate these finite
transfers under the stated uncertainty requirements. Record the
actual trajectory and both endpoint speeds. Determining the remaining joint
and phase-actuator contributions requires explicit support constraints and
their corresponding force or supply observations. The gross axial comparison
is accessible even while that fuller reconstruction remains unfinished.
A nonzero support-cycle integral and a nonzero whole-boundary residual are
reported separately. If a signed remainder survives the completed measurements
and their uncertainty, it remains open with its magnitude and conditions.
No missing reaction is assigned that remainder. A rotating-frame account then
adds its separately integrated effective terms to its own evaluated stores;
it does not add them to the ground physical balance.

# Windings, returns, and the electrical observation

## Four electrical connections and a loaded planet terminal
\label{sec:four-terminal}

Assign $(S,C,R,P)$ to the mechanical $(s,c,r,o)$.
$P$ is the accessible planet connection; $O$ is a separate physical external
reference conductor. With $\alpha$ in $\mathrm{V}/(\mathrm{rad/s})$, define
\begin{equation}
 V_j-V_O=\alpha\omega_j,\qquad I_j=\tau_j/\alpha,\qquad
 (V_j-V_O)I_j=\tau_j\omega_j .
 \label{eq:four-port-map}
\end{equation}
Currents enter the winding assembly at their named terminals; every external
branch uses its actual return to $O$. Translating both potentials preserves a
port voltage; physically moving a return changes the branch.

![Two ideal realizations of the same four-terminal relation. Left: signed sun and ring transformer ratios with their secondary currents entering the planet node. Right: four taps on one common-flux winding; numbers are cumulative turns from P. Each external port is a terminal-to-O connection. P is loaded, and O is an external physical return separate from the winding.](figures/four-terminals.pdf){#fig:four-terminals width=100%}

\FloatBarrier

Set $h_s=-Z_p/Z_s$ and $h_r=Z_p/Z_r$. The two ideal transformers impose
\begin{align}
 V_S-V_C&=h_s(V_P-V_C),&
 V_R-V_C&=h_r(V_P-V_C),\\
 j_s&=-h_sI_S,&j_r&=-h_rI_R,\\
 I_P&=j_s+j_r=\frac{Z_p}{Z_s}I_S-\frac{Z_p}{Z_r}I_R,&
 I_C&=-(I_S+I_R+I_P).
 \label{eq:four-pairs}
\end{align}
The signed current laws come from ideal ampere-turn cancellation; KCL
retains the external $P$ branch. Secondary cancellation $j_s+j_r=0$
would apply only to an unloaded planet node. Multiplying each winding voltage
by its own current then verifies each pair's zero total power.
Solving these equations independently gives the same voltage and current
families as \eqref{eq:four-speed} and \eqref{eq:four-torque}.

A single common flux supplies a second construction. For general positive
teeth with $Z_r=Z_s+2Z_p$, choose cumulative tap positions
\begin{equation}
 (N_S,N_C,N_R,N_P)=
 \bigl(Z_r(Z_s+Z_p),\,Z_sZ_r,\,Z_s(Z_r-Z_p),\,0\bigr)/g,
 \label{eq:general-taps}
\end{equation}
where $g$ is their greatest common divisor. They are ordered
$P<R<C<S$: the three positive section counts before reduction are
$Z_s(Z_s+Z_p)$, $Z_sZ_p$, and $Z_rZ_p$.
Multiplying all counts by a common positive integer preserves ideal ratios.
For $(24,18,60)$ the taps are $(S,C,R,P)=(35,20,14,0)$.
With $e=\dot\Phi$, the three voltages to $P$ are $(35,20,14)e$.
Section currents directed from $S$ towards $P$ are
$I_S$, $I_S+I_C$ and $I_S+I_C+I_R=-I_P$.
The independent winding and node equations are therefore
\begin{equation}
 15I_S+6(I_S+I_C)+14(I_S+I_C+I_R)=0,\qquad
 I_S+I_C+I_R+I_P=0.
 \label{eq:tap-currents}
\end{equation}
Subtracting tap voltages gives both ratios in \eqref{eq:four-pairs};
substituting KCL into the general ampere-turn sum gives its $I_P$ law.
Conversely those equations give both tap constraints. Their coefficient
matrices have rank two, including zero-voltage states by the multiplied,
division-free equations. This proves ideal terminal equivalence.

At $\alpha=1$ the recurring one-second control is
\begin{equation}
 \begin{array}{c|rrrr}
   &S&C&R&P\\ \hline
 V_j-V_O\;(\mathrm V)&7/2&1&0&-7/3\\
 I_j\;(\mathrm A)&2&-14/3&5/3&1\\
 W_j\;(\mathrm J)&7&-14/3&0&-7/3
 \end{array}
 \label{eq:four-electric-control}
\end{equation}
Here $j_s=3/2\,\mathrm A$, $j_r=-1/2\,\mathrm A$, so $P-O$ is a
receiver. The zero-voltage ring carries a nonzero reaction current.
Unit capacitors to $O$ give $673/72\,\mathrm J$ at both endpoints,
matching the effective unit inertias. Every work follows its own integral;
ideal winding constraints add no magnetic state. Removing the planet load
gives $(7,-7,0,0)\,\mathrm J$; setting $I_P=3\,\mathrm A$ gives
$(7,0,0,-7)\,\mathrm J$. All operating controls in
Section \ref{sec:four-shaft} map in the same way.

The finite turn count, leakage, copper resistance and core law are additional
parameters. Neither ideal realization establishes their equality, or sustained
DC operation within a finite core's flux range. A phase-dependent joint ratio
$\chi$ requires a specified variable electrical coupling and its control
work. A voltage coordinate shift does not implement that coupling.

## An initialized finite receiver at P
\label{sec:finite-planet}

A specified finite model retains three nodes $(S,C,P)$ relative to a ring
clamped at $O=0$, three unit capacitors, and four winding currents. In order
sun primary/secondary, ring primary/secondary, use
\begin{align}
 B_f&=\begin{pmatrix}1&0&0&0\\-1&-1&-1&-1\\0&1&0&1\end{pmatrix},\\
 L_f&=\operatorname{diag}\left[
 \begin{pmatrix}9/16&-3/8\\-3/8&1\end{pmatrix},
 \begin{pmatrix}9/100&3/20\\3/20&1\end{pmatrix}\right]\mathrm H,\\
 R_f&=\operatorname{diag}(9/160,1/10,9/1000,1/10)\,\Omega .
 \label{eq:finite-planet-data}
\end{align}
Both inductance blocks are positive definite, with coupling magnitude $1/2$.
A $1\,\Omega$ source resistance connects $U(t)$ to $S$; receivers
$G_C=1/2\,\mathrm S$ and $G_P(t)>0$ connect $C,P$ to $O$.
KCL and the winding laws give
\begin{equation}
 C_f\dot v=b-Gv-B_fi,\qquad L_f\dot i=B_f^Tv-R_fi,\quad
 b=(U,0,0)^T,\quad G=\operatorname{diag}(1,1/2,G_P).
 \label{eq:finite-planet-laws}
\end{equation}
Here and below matrix coefficients carry the indicated SI units.
Start with $v=i=0$. On successive intervals $[0,1]$, $[1,2]$, $[2,3]$,
and $[3,5]\,\mathrm s$, take $(U,G_P)=(1,1/4),(1,1/2),(1,1),(0,1)$
in volts and siemens. Finite resistance preserves every current path;
all constitutive states are continuous at the load and source steps.
Power can jump, while store jumps and model impulses are zero.

For the reactive boundary, separately integrate source
$U(U-V_S)$, source-resistor export $-(U-V_S)^2$,
each copper export $-R_{f,j}i_j^2$, carrier receipt
$-V_C^2/2$, and planet receipt $-G_PV_P^2$.
Their quadratic-form integrals are the exact matrix functions developed
below. Evaluate $E=(v^TC_fv+i^TL_fi)/2$ directly at every endpoint.
The winding/node terms cancel only after both sides are calculated, giving
$r_E=0$. A thermally insulated boundary instead adds
$\dot H=(U-V_S)^2+i^TR_fi$ and includes $H$ at the endpoints.
It omits those two heat-export terms. The retained source resistance during
relaxation permits asymptotic decay; finite relaxation is not an exact reset.

A compliant mechanical counterpart has $J=\alpha^2 C_f$,
$z=L_fi/\alpha$ and $K=\alpha^2L_f^{-1}$.
At $\alpha=1$, its independent laws are
$J\dot\omega=b-G\omega-B_fKz$ and
$\dot z=B_f^T\omega-R_fKz$.
For each signed ratio $h=-3/4,3/10$, the positive elastic energy
$(z_1/h+z_2)^2/6+(z_1/h-z_2)^2/2$ has the corresponding inverse-inductance
Hessian. A speed source connected through a unit viscous element supplies
$\Omega_d(\Omega_d-\omega_s)$ and exports
$-(\Omega_d-\omega_s)^2$; its source rotor is outside the boundary.
The carrier and planet dashpots are separate receivers.
This construction maps actual elastic and inertial states as well as
port powers. It adds compliant coordinates to the rigid four-shaft relation.
The companion develops finite winding, material and support observations
needed to identify a physical realization [Nilre and Herlin (2026)][companion].


## The tapped and isolated connections

Winding 1 is oriented from terminal $a$ to common return $c$; winding 2 is
oriented from $b$ to $a$. Current enters each winding at its first terminal.
Define
\begin{equation}
 v_1=V_a-V_c,\quad v_2=V_b-V_a,\quad v_o=v_1+v_2,
 \qquad (I_a,I_b,I_c)=(i_1-i_2,i_2,-i_1).
 \label{eq:terminals}
\end{equation}
The winding-assembly currents obey $I_a+I_b+I_c=0$. A source supplying an
extra shunt resistor has another current $I_s$, not simply $I_a$.
Figure \ref{fig:circuit} specifies the conductive connections independently
of winding polarity and magnetic coupling.

![Schematic tapped circuit with winding resistances $R_1,R_2$. The source reaches $a$ through $R_s$; the coupled winding sections are $a$–$c$ and $b$–$a$. The capacitor remains across $b$–$c$. The receiver selector is shown at $a$ and can move to $c$. Resistors marked $1/G_c$ and $1/(G_L+G_P)$ represent the specified conductances; zero conductance means an open branch. Dotted coupling is magnetic, and the wire bridge has no junction.](figures/transformer-ports.pdf){#fig:circuit width=96%}

\FloatBarrier

An isolated control keeps winding 1 across its source and places winding 2
across its own capacitor and receiver. Its two returns are physically distinct;
assigning coordinate potential zero to each does not connect them. When
terminal contributions are combined, both returns must be retained.

The standard distinction between a finite coupled-inductance model and an
ideal transformer is explicit in [Haus and Melcher (1989), Section 9.7][hm].
Here we use it as a constitutive distinction and derive the required power
relations directly. Put $N_1,N_2>0$, polarity $s=\pm1$, and
$n=sN_2/N_1$. A shared-flux idealization has
$\lambda_1=N_1\Phi$, $\lambda_2=sN_2\Phi$. Its voltage and ampere-turn
constraints are
\begin{equation}
 v_2=nv_1,\qquad i_1=-ni_2,\qquad
 v_o=(1+n)v_1,\qquad I_a=-(1+n)i_2.
 \label{eq:ideal}
\end{equation}
The first follows by differentiation of the linkage relations, and the second
from $N_1i_1+sN_2i_2=0$. They imply zero total ideal winding power without
using power balance to define the currents. Three terminals give two
independent voltages, not three independent two-terminal energy ports.

The weighted linkage constraint is $\lambda_2-n\lambda_1=0$, whereas
\begin{equation}
 \lvert\lambda_1\rvert+\lvert\lambda_2\rvert
 =(1+\lvert n\rvert)\lvert\lambda_1\rvert,
 \qquad \lambda_1+\lambda_2=(1+n)\lambda_1.
 \label{eq:flux-sums}
\end{equation}
The absolute sum changes with turns ratio, and the unweighted signed sum
usually changes with excitation. Finite leakage further prevents reducing
both linkages to one core flux. These observations do not establish an
unweighted conserved-state functional or an absolute-sum growth envelope.

## Which terminal represents which body

For the restricted ring-mesh correspondence choose planet $\leftrightarrow b$,
carrier $\leftrightarrow a$, and ring $\leftrightarrow c$. Then
\begin{equation}
 \omega_p-\omega_c=-\frac{Z_r}{Z_p}(\omega_c-\omega_r)
 \quad\longleftrightarrow\quad v_2=nv_1,
 \qquad n=-Z_r/Z_p<-2.
 \label{eq:duality}
\end{equation}
The last inequality uses positive $Z_s,Z_p$ and \eqref{eq:assembly}.
Positive ratios and the opposed null $n=-1$ are useful electrical controls
outside this simple planetary assignment.

Define a signed voltage integral, rather than a copper-turn count,
\begin{equation}
 \Psi_{xy}(t_0,t_1)=\int_{t_0}^{t_1}(V_x-V_y)dt,
 \qquad \Psi_{bc}=\Psi_{ba}+\Psi_{ac}.
 \label{eq:volt-seconds}
\end{equation}
It has volt-second units, not joules. For $(Z_s,Z_p,Z_r)=(24,12,48)$ with
ring held and carrier at $1\,\mathrm{rev/s}$ over $[0,1]\,\mathrm s$,
$N_p^c=-4$ and $N_p^r=-3$. Under the kinematic scale
$1\,\mathrm V/(\mathrm{rev/s})$, $v_1=1\,\mathrm V$, $n=-4$,
$\Psi_{ba}=-4\,\mathrm{V\,s}$, and $\Psi_{bc}=-3\,\mathrm{V\,s}$.
Equation \eqref{eq:duality} proves the corresponding identity for every rate
choice in the earlier family, not only this example.

The choice of velocity as voltage and force as current is the mobility
analogy developed by [Firestone (1933)][firestone]. Its rotational version
needs a dimensional scale $\alpha$ using radians:
\begin{equation}
 V=\alpha\omega,\qquad I=\tau/\alpha,\qquad VI=\tau\omega,
 \qquad C=J/\alpha^2.
 \label{eq:power-map}
\end{equation}
Thus angular speed corresponds here to voltage, torque to current, and
inertia to capacitance. The finite magnetic store below is not automatically
an inertia store. A voltage integral also needs its initial linkage and copper
correction:
\begin{equation}
 \Delta\lambda_j=\int_{t_0}^{t_1}(v_j-R_ji_j)dt.
 \label{eq:copper-correction}
\end{equation}
For the series readout both linkage changes and both copper drops contribute.
No single node-potential integral is identified with core flux. An independent
sun terminal is supplied by Section \ref{sec:four-terminal}; the restricted
three-terminal map here does not supply it. Accelerating reference supplies
and independently phased linkages require the additional constructions below.

## A common zero and a missing return

For a fixed physical circuit, changing every potential to $V_j+g(t)$ leaves
all complete port voltages unchanged. Individual terminal contributions
$\mathfrak p_j=V_jI_j$ instead obey
\begin{equation}
 \mathfrak p_j^g-\mathfrak p_j=gI_j,\qquad
 \sum_j(\mathfrak p_j^g-\mathfrak p_j)=g\sum_j I_j=0,
 \qquad W_j^g-W_j=\int_{t_0}^{t_1}g I_j dt.
 \label{eq:gauge}
\end{equation}
The identity includes the return, even when its original potential is zero.
It holds for time-dependent $g$ as well as a constant. Load power is
$(V_b-V_c)i_L$, not one terminal contribution $V_bi_L$.

Take the ideal winding assembly as boundary, with $n=1$,
$G_L=1\,\mathrm S$, and $v_1=(t-2)\,\mathrm V$ for time $t$ in seconds
on $[0,7/2]\,\mathrm s$. There are no topology changes or impulses; the
voltage passes continuously through zero at $2\,\mathrm s$.
Writing $v=t-2$ numerically in SI units, the currents are
$(I_a,I_b,I_c)=(4v,-2v,-2v)$ and baseline potentials $(v,2v,0)$.
The two primitives are $\int v^2dt=91/24$ and $\int vdt=-7/8$.
Integrating each signed terminal product gives:

| Signed work or balance | $V_c=0$, J | $g=3\,\mathrm V$, J |
|--------------------------------|---------------------:|----------------------:|
| $W_a$ | $91/6$ | $14/3$ |
| $W_b$ | $-91/6$ | $-119/12$ |
| $W_c$ | $0$ | $21/4$ |
| Sum of complete terminal works | $0$ | $0$ |
| Initial and final ideal stores | $0,0$ | $0,0$ |
| $r_E$ | $0$ | $0$ |

: Exact missing-return control on the ideal winding boundary. The physical receiver obtains $91/6\,\mathrm J$ in either coordinate system.

Omitting $c$ after the shift yields $r_E=+21/4\,\mathrm J$.
It is exactly the missing return work, determined by its own integral rather
than assigned from the residual. The same polynomial proof covers
$n\in\{-4,-2,-101/100,-1,-99/100,-1/2,-1/4,1/4,1/2,1,2,4\}$ and
$g=g_0+g_1t$, including $g_0\in\{-3,0,3\}\,\mathrm V$,
$g_1\in\{-1,0,1\}\,\mathrm{V/s}$. It also covers nonpolynomial common
offsets such as $g=3+(7/10)\cos(5t)\,\mathrm V$ by \eqref{eq:gauge}.
The ideal endpoint store is an empty sum, not a claim that a real core
contains no energy.

Physical grounding remains different: a real bond, probe common-mode branch,
or chassis capacitance adds a path and potentially a store [OP-TRF-01]. A
low-voltage isolated winding, known shunt conductance $G_b$, and ordinary
differential voltage and current readings can distinguish an added dissipative
return from a mere coordinate shift. If the attachment is held at constant
voltage difference $V_b$ for duration $T$, its separate heat delivery is
$G_bV_b^2T$ exactly; without that held-voltage assumption the measured
instantaneous product must be integrated on its actual path. Floating and
bonded arrangements can therefore be distinguished at ordinary voltage and
current levels. Stray capacitance adds $C_bV_b^2/2$ endpoint storage; its
unknown magnitude is not determined by the gauge identity.

# Loaded readouts and finite stores

## Two exact receiving experiments

Moving a negligible-loading probe return from $a$ to $c$ selects a different
voltage on one trajectory. Moving a finite load changes the circuit; the two
trajectories must be established independently. Equation \eqref{eq:volt-seconds}
holds within each trajectory, not across two different loaded experiments.

Use the ideal algebraic boundary with $n=-4$, a source fixing
$v_1=1\,\mathrm V$, and a $1\,\mathrm S$ load on $[0,1]\,\mathrm s$.
For return $a$, the load current is $j_L=-4\,\mathrm A$ and source current
is $16\,\mathrm A$; for return $c$ they are $-3\,\mathrm A$ and
$9\,\mathrm A$. The load-side currents into the transformer are $-j_L$
at $b$ and $+j_L$ at the return. Direct integration gives:

| Quantity | Return $a$ | Return $c$ |
|----------------------------------------|----------------------:|----------------------:|
| Loaded voltage integral, V s | $-4$ | $-3$ |
| Source work into boundary, J | $16$ | $9$ |
| Complete load work into boundary, J | $-16$ | $-9$ |
| Load contribution at $b$, J | $-12$ | $-9$ |
| Load contribution at its return, J | $-4$ | $0$ |
| Initial/final ideal store, J | $0/0$ | $0/0$ |
| $r_E$, J | $0$ | $0$ |

: Separate exact experiments, with no internal event or impulse. The two load contributions decompose the load work and are not added again.

The extra $7\,\mathrm J$ of load delivery accompanies an independently
integrated extra $7\,\mathrm J$ of source input. If instead
$v_1=(t-2)\,\mathrm V$ on $[0,4]\,\mathrm s$, all three signed voltage
integrals are zero, while
\begin{equation}
 W_{L,a}=-16\int_0^4(t-2)^2dt=-\frac{256}{3}\,\mathrm J,
 \qquad W_{L,c}=-9\int_0^4(t-2)^2dt=-48\,\mathrm J.
 \label{eq:zero-readout}
\end{equation}
The source products integrate separately to the opposite values. A continuous
sign reversal changes neither the ideal empty endpoints nor the balance.
Zero net readout is not zero transferred work, as Figure \ref{fig:readouts}
illustrates.

The complete curves on $0\leq t\leq4\,\mathrm s$, in the stated SI units,
follow from the polynomial primitives:
\begin{align}
 \Psi_{ba}(0,t)&=-4(t^2/2-2t),&\Psi_{bc}(0,t)&=-3(t^2/2-2t),\\
 -W_{L,a}(0,t)&=16(t^3/3-2t^2+4t),&
 -W_{L,c}(0,t)&=9(t^3/3-2t^2+4t).
 \label{eq:readout-curves}
\end{align}

![Exact reversing-drive control: the voltage integrals return to zero, while delivered load works increase as the integral of squared voltage. Time is in seconds; the two load connections are distinct ideal experiments driven by the same prescribed $v_1=t-2$.](figures/readout-work.pdf){#fig:readouts width=95%}

\FloatBarrier

For a general ideal ratio and a $b$–$c$ resistive load,
$i_2=-G_L(1+n)v_1$, $i_1=nG_L(1+n)v_1$ and
$P_L=-G_L(1+n)^2v_1^2$. At $n=-1$ the output is identically zero;
without imposed circulating current all terminal currents vanish while both
winding voltages can be nonzero. For $n=-1+\epsilon$, load work is
$-G_L\epsilon^2\int v_1^2dt$ and approaches zero continuously, while
winding-power direction reverses across the null. The values
$-101/100,-1,-99/100$ are explicit two-sided controls. The $b$–$a$ load
instead sees $nv_1$ and need not vanish there. A finite transformer does
not automatically inherit this ideal null.

## The unresolved complete-cycle comparison

What remains of the receiving-work difference when both circuits are prepared,
operated, physically switched, relaxed, and reset with every controller supply
included is an open energy question [OP-TRF-05]. The exact $7$ J difference
in the one-second ideal control already accompanies an independently integrated
$7$ J source-input difference. The complete finite-cycle difference, and any
unexplained energy remainder within either physical apparatus, have unknown
magnitudes and signs.

For each return choice $\ell\in\{a,c\}$, take the boundary to contain the
windings, capacitor, resistors, and the switching and controller stores.
Electrical supplies, receiver, probe, and fixed-temperature heat reservoirs
are external. Every supply has its own $vi$ product; receiver and probe powers
are negative into this boundary, and each exported heat is $-T\dot S$.
Choose ordered endpoints $t_0<\cdots<t_5$ so the five disjoint stages are
preparation, operation, switching, relaxation, and reset. Define
\begin{align}
 W_{j,\mathrm{cycle}}^{(\ell)}
 &=\sum_{m=0}^{4}\int_{t_m}^{t_{m+1}}
       e_j^{(\ell)}f_j^{(\ell)}\,dt
       +\sum_e W_{j,e}^{(\ell),\mathrm{imp}},\\
 r_{E,\mathrm{cycle}}^{(\ell)}
 &=E^{(\ell)}(t_5)-E^{(\ell)}(t_0)
          -\sum_j W_{j,\mathrm{cycle}}^{(\ell)}.
 \label{eq:complete-cycle}
\end{align}
The continuous integrals and ideal impulse terms represent disjoint transfers.
A resolved finite switching path needs no duplicate impulse. Both endpoint
energies include magnetic, capacitive, controller, and material thermal states
evaluated from independently established constitutive laws and observations.
The resistors and windings lie inside this physical boundary: their Joule
conversion is internal, and only heat actually crossing the boundary enters
as $-T\dot S$. If a supply rail is brought inside an enlarged
boundary, add its endpoint store and cancel its two already integrated port
sides; do not retain its output as an additional external input.

The finite models below specify some of these paths exactly. A physical
experiment can record source and controller voltage–current products, both
winding currents, and capacitor voltages throughout all five stages. The
low-voltage drive and a deliberately slow preparation and reset permit ordinary
differential voltage and current observations. Independently calibrated
capacitances and a constant inductance matrix determine the corresponding
linear-model stores. The physical comparison additionally needs temperatures,
a caloric law for the enclosed dissipative bodies, actual external heat
transfer, and the magnetic-state qualification developed next.
The resistor-reset control below gives a resolvable half-voltage endpoint.
It is a part of this comparison, not a preparation of the winding states.

The independently integrated works may account for the store change within
the established uncertainty, or a signed remainder may survive. Retain either
outcome with its actual interval and states. An unspecified winding preparation,
switch supply, thermal store, or reset path remains an undetermined contribution;
none is assigned the remainder by definition. The delivered-work difference
$-W_{L,\mathrm{cycle}}^{(a)}+W_{L,\mathrm{cycle}}^{(c)}$ is reported separately
from the two residuals. Return of the visible capacitor voltage alone does not
establish return of every state.

## Thermal endpoints and magnetic material states

How much of a finite departure from the linear winding prediction is resolved
by observed thermal and magnetic material states [OP-TRF-03]? A useful first
comparison repeats a specified low-voltage preparation at two independently
recorded initial temperatures, recording winding voltages and currents,
capacitor voltages, and temperature changes on each path. The finite winding
preparation below supplies a $93/1600$ J linear magnetic target. Compare its
separately measured input work, actual heat export, and independent endpoint
observations with that target. A departure may remain after the thermal
contribution is determined; it retains its signed value and uncertainty.
Neither the current readings nor that remainder determine an unobserved
magnetic internal state.

For the first whole-apparatus comparison, enclose the windings, resistors,
capacitor, and controller; keep supplies, receiver, and heat reservoirs
external. Define a nonoverlapping physical endpoint model
\begin{equation}
 E_{\rm phys}=E_C+E_{\rm mag}(i,\zeta,\vartheta)
       +E_{\rm controller}+U_{\rm thermal}+E_{\rm other}.
 \label{eq:physical-endpoints}
\end{equation}
The calibrated capacitor contribution is $E_C$; $\vartheta$ denotes the
observed material temperatures and $\zeta$ the declared magnetic internal
state. The constitutive partition assigns the caloric material energy to
$U_{\rm thermal}$ and any remaining magnetic state dependence to
$E_{\rm mag}$. It must specify their coupling without counting the same
energy twice. Controller electrical stores are separate from the controller
body's contribution to $U_{\rm thermal}$. Mechanical or other stores, if
present, enter $E_{\rm other}$ with their own states. A nonuniform temperature
field requires its own caloric evaluation or a justified enclosure.

The reciprocal expression $i^T\mathsf Li/2$ determines the magnetic store
of the declared constant linear model. Magnetic linearity is also the stated
condition for the inductance-matrix terminal relation in
[Haus and Melcher (1989)][hm]. Calibrating that matrix alone does not determine
$E_{\rm mag}(i,\zeta,\vartheta)$ for a core with remanence or hysteresis.
Record which material states are independently observed and which remain
undetermined. With the same measured ports define separately
\begin{equation}
 \widehat r_{E,\rm lin}=\Delta\!\left(
 \widehat E_C+\tfrac12\widehat i^T\mathsf L\widehat i
 +\widehat E_{\rm controller}+\widehat U_{\rm thermal}
 +\widehat E_{\rm other}\right)
 -\sum_j\widehat W_j-\sum_e\widehat W_e^{\rm imp}.
 \label{eq:linear-material-residual}
\end{equation}
This is an observed discrepancy against a specified model, with calibration
uncertainty included. A complete physical residual instead needs both values
of \eqref{eq:physical-endpoints}. An unknown magnetic contribution stays
unknown; it is not set equal to \eqref{eq:linear-material-residual}.

An exact caloric control shows why thermal endpoints matter even without
a magnetic core. Enclose a resistor with $R=1/10\,\Omega$ and prescribe
$i=1$ A over $[0,1]$ s, with an adiabatic boundary on that interval. Declare
a constant $C_{\rm th}>0$ and initial $\vartheta(0)=\vartheta_{\rm ref}$.
The independent caloric law and its endpoint evaluation are
\begin{align}
 C_{\rm th}\dot\vartheta&=Ri^2,&
 U_{\rm th}&=C_{\rm th}(\vartheta-\vartheta_{\rm ref}),\\
 \vartheta(1\,\mathrm s)&=\vartheta_{\rm ref}
                   +\frac{1\,\mathrm J}{10C_{\rm th}},&
 (U_{\rm th}(0),U_{\rm th}(1\,\mathrm s))&=(0,1/10)\,\mathrm J.
 \label{eq:thermal-control-state}
\end{align}
The external ports integrate independently as
\begin{equation}
 W_{\rm el}=\int_0^{1\,\mathrm s}(Ri)i\,dt=\frac1{10}\,\mathrm J,
 \qquad W_h=-\int_0^{1\,\mathrm s}T\dot S_{\rm out}\,dt=0.
 \label{eq:thermal-control-work}
\end{equation}
There are no electrical energy coordinates in this ideal resistor and no
impulsive transfers. Thus $r_E=0$ with the independently evaluated thermal
store and exact integrals. Omitting $U_{\rm th}$ gives $r_E=-1/10$ J.
Entering another $-1/10$ J as heat export would artificially close that
incomplete account while changing the stipulated adiabatic boundary.
An electrical subboundary may export $Ri^2$ into a separate thermal
subsystem; its receiving side then integrates to $+1/10$ J. Those two sides
cancel only when the subsystem boundaries are combined.

For illustrative $C_{\rm th}=1\,\mathrm{J/K}$, the predicted temperature
rise is $1/10$ K. Temperature observations with each endpoint error at most
$1/100$ K, a calibrated heat-capacity error at most
$1/100\,\mathrm{J/K}$, and observed rise at most $11/100$ K would bound
the inferred thermal change error by
\begin{equation}
 u_{\Delta U}\leq
 u_{C_{\rm th}}|\Delta\widehat\vartheta|
 +(\widehat C_{\rm th}+u_{C_{\rm th}})(u_{\vartheta,0}+u_{\vartheta,1})
 \leq\frac{213}{10000}\,\mathrm J.
 \label{eq:thermal-uncertainty}
\end{equation}
To resolve the omitted $1/10$ J at total uncertainty $1/20$ J, the measured
electrical work, actual external heat, timing, and remaining caloric errors
must together contribute at most $287/10000$ J. In a physical apparatus
the heat transfer is observed or bounded, rather than declared zero by
insulation alone. These finite requirements give voltage, current, and
temperature observations a specific task. The core comparison needs its
additional magnetic-state information before it can claim a complete
physical remainder. The numerical integration residual of the caloric control
is zero; no value is assigned to an unmeasured material discrepancy.

## The regular coupled-winding model

Let $\rho=N_2/N_1>0$, $s=\pm1$, and $0\leq k<1$. Define
\begin{equation}
 L_2=\rho^2L_1,\quad M=sk\rho L_1,\quad
 \mathsf L=\begin{pmatrix}L_1&M\\M&L_2\end{pmatrix},\quad
 E_m=\tfrac12 i^T\mathsf Li,\quad E_C=\tfrac12Cv_o^2.
 \label{eq:magnetic}
\end{equation}
Here $L_1,C>0$. The determinant $L_1L_2(1-k^2)>0$ makes the magnetic
store positive definite, including the mutual term once. The exact identity
\begin{equation}
 E_m=\tfrac12kL_1(i_1+s\rho i_2)^2
       +\tfrac12(1-k)L_1i_1^2+\tfrac12(1-k)L_2i_2^2
 \label{eq:leakage}
\end{equation}
separates the shared magnetizing mode and leakage terms. Taking $k$ to one
removes leakage but retains finite magnetizing inductance. At exactly $k=1$
the differential equations need a constrained formulation; replacing them
with \eqref{eq:ideal} is a different model, not that limit alone.

Let $\eta=1$ for the tapped connection and $\eta=0$ for the isolated one,
using each circuit's local return coordinates. The source voltage $u$ acts
through $R_s>0$, and the effective core-loss conductance $G_c\geq0$ is
across winding 1. Put $G=G_L+G_P$ for load and resistive probe. Then
\begin{align}
 v_a&=\frac{u-R_s(i_1-\eta i_2)}{1+R_sG_c},&
 I_s&=i_1-\eta i_2+G_cv_a,\\
 \mathsf L\dot i&=\begin{pmatrix}v_a\\v_o-\eta v_a\end{pmatrix}
                 -\operatorname{diag}(R_1,R_2)i,&
 C\dot v_o&=-i_2-Gv_o.
 \label{eq:finite}
\end{align}
These circuit equations define the state $x=(i_1,i_2,v_o)^T$ before any
work is evaluated. The core resistor is a declared loss path, not a hysteresis
law. Resistor heat is exported immediately; no thermal storage is included.

The whole boundary contains the windings, capacitor, source resistor, and
core-loss resistor. Its seven powers and their effort–flow meanings are:

| Port | Effort times flow, positive into the boundary |
|-------------------------------|---------------------------------------------------------|
| Ideal source | $uI_s$ |
| Source-resistor heat export | $-(R_sI_s)I_s=-T_s\dot S_s$ |
| Winding 1 copper heat export | $-(R_1i_1)i_1=-T_1\dot S_1$ |
| Winding 2 copper heat export | $-(R_2i_2)i_2=-T_2\dot S_2$ |
| Effective core-resistor heat export | $-v_a(G_cv_a)=-T_c\dot S_c$ |
| Receiver | $-v_o(G_Lv_o)$ |
| Probe | $-v_o(G_Pv_o)$ |

: Complete finite-circuit boundary. The source, receiver, probe, and thermal reservoirs are external. The thermal equalities define immediate export to fixed-temperature reservoirs.

Multiply the magnetic equation by $i^T$, the capacitor equation by $v_o$,
and use $u=v_a+R_sI_s$. This independently derives
\begin{equation}
 \frac{d}{dt}(E_m+E_C)=uI_s-R_sI_s^2-R_1i_1^2-R_2i_2^2
                         -G_cv_a^2-G_Lv_o^2-G_Pv_o^2.
 \label{eq:finite-balance}
\end{equation}
The winding-only subboundary instead uses $E_m$, all winding terminal
contributions, and the two copper losses. The shunt core resistor is outside
it. Omitting a shifted return in that subboundary gives exactly its missing
$\int g I_c dt$ term, with either sign possible; the complete sum obeys
\eqref{eq:gauge} at all times.

At $k=0$, an isolated zero-state secondary satisfies a homogeneous system,
so $i_2=v_o=0$ exactly. A tapped circuit retains the conductive path through
winding 2. Its initial forcing $v_o-v_a$ is generally nonzero, so it can
respond without magnetic coupling. This is a topological difference, not a
change of voltage label.

## Event intervals and exact finite-state integrals

Use the illustrative baseline
$L_1=L_2=1/25\,\mathrm H$, $k=19/20$, $s=+1$,
$C=1/500\,\mathrm F$, $R_s=1/5\,\Omega$,
$R_1=R_2=1/10\,\Omega$, $G_c=1/100\,\mathrm S$,
$G_L=1/10\,\mathrm S$, and $G_P=0$. All initial states are zero unless
explicitly changed. With $t$ in seconds, the drive is
$u=2\cos(14\pi t+3/10)\,\mathrm V$, multiplied by
$[1-\cos(10\pi t)]/2$ during preparation.

| Interval, s | Physical path | Endpoint and event condition |
|-----------------------|----------------------------------|-------------------------------------------|
| $[0,1/10]$ | Smooth preparation | Starts at $x=0$; envelope reaches one |
| $[1/10,1/5]$ | Operation | Same circuit and full drive |
| $[1/5,3/10]$ | Changed load | $G_L$ increases to $2/5\,\mathrm S$ |
| $[3/10,1/2]$ | Finite relaxation | $u=0$; source resistance retains a path |

: Four separate integration intervals. Winding currents and capacitor voltage are continuous; powers may jump at the load and source events.

Setting the source voltage to zero does not open its conductor. Removing only
the load leaves the capacitor. For these finite-path events, integrating the
state equations across a vanishing interval gives $x^+=x^-$ and hence no
store jump or model impulse. Source and load powers use their own event-side
values. A real switch-control supply is absent from this ideal selector
model; its unknown work is not claimed zero on apparatus.

The energy transferred when an energized readout return is physically moved
from $a$ to $c$, or back, remains an open question [OP-TRF-02]. Keep the
capacitor across $b$–$c$ for this experiment and distinguish it from a second
experiment that reconnects a charged capacitor. Enclose the windings, capacitor,
switch and controller stores, and any specified clamp. External source,
receiver, probe, controller supplies, and heat reservoirs each retain their
complete effort–flow products. For a resolved finite edge $[t_e,t_e+\delta]$,
\begin{equation}
 r_{E,\mathrm{event}}=E(t_e+\delta)-E(t_e)
       -\sum_j\int_{t_e}^{t_e+\delta}e_jf_j\,dt.
 \label{eq:physical-commutation}
\end{equation}
The physical remainder has unknown sign and magnitude. Winding currents,
capacitor voltages, clamp state, controller state, and material thermal and
magnetic states in \eqref{eq:physical-endpoints} are required at both
endpoints; a change of tap must retain the individual winding branches rather
than merely change a ratio in an energy formula.

The explicit two-branch path in \eqref{eq:commutation-path} below selects a
finite overlap and an energized preparation, with a separate open-gap control.
Its voltage–current envelopes and $1/50$ J proposed whole-event uncertainty
give ordinary synchronized observations a definite resolution target.
Record each supply and receiver product and the event-side states; faster
opening introduces an additional bandwidth requirement. The prepared-clamp
calculation below supplies an exact single-capacitor comparison with separately
integrated source and heat works. It does not assign those same works to an
energized coupled-winding switch. A resolved finite path and an ideal impulse
are alternative representations of a transfer, never two additions for it.
The observation may agree with the independent store change within uncertainty,
or retain a signed energy remainder. Keep the latter with its conditions and
completed checks; no arc, switch loss, or stray capacitance receives it by
definition. Preparation and reset of this event belong to
\eqref{eq:complete-cycle}.

A closed form retains every finite work without a numerical trajectory.
On one constant-topology interval write \eqref{eq:finite} as
$\dot x=Ax+bu(t)$. Represent the sinusoidal forcing by real oscillator
coordinates $z$ satisfying $\dot z=Dz$, $u=cz$. A cosine–sine pair at
frequency $\omega$ has
$D_\omega=\left(\begin{smallmatrix}0&-\omega\\\omega&0\end{smallmatrix}\right)$.
The preparation waveform is exactly
$\cos(14\pi t+3/10)-\tfrac12\cos(24\pi t+3/10)
-\tfrac12\cos(4\pi t+3/10)$ in volts, so three such pairs suffice.
The full-drive interval needs one pair; constant drive uses a zero-frequency
coordinate. With $y=(x,z)$,
\begin{equation}
 \dot y=\mathsf A y,\qquad
 \mathsf A=\begin{pmatrix}A&bc\\0&D\end{pmatrix},\qquad
 y(t_0+T)=e^{T\mathsf A}y_0.
 \label{eq:matrix-state}
\end{equation}
Every effort and flow is a linear functional of $y$. If they are $e^Ty$ and
$f^Ty$, define $Q=(ef^T+fe^T)/2$, so its signed power is $y^TQy$.
The minus signs of exports belong in $e$ or $f$.

\begin{theorem}[Separate closed-form port works]
For a constant matrix $\mathsf A$, define
$\mathsf B=\mathsf A\otimes I+I\otimes\mathsf A$ and the entire matrix
function $\varphi_1(Z)=\sum_{m=0}^{\infty}Z^m/(m+1)!$.
Column vectorization is denoted by $\operatorname{vec}$. Each signed port
integral is exactly
\begin{equation}
 \mathcal W(Q;\mathsf A,y_0,T)=
 \operatorname{vec}(Q)^T T\varphi_1(T\mathsf B)
                 \operatorname{vec}(y_0y_0^T).
 \label{eq:matrix-work}
\end{equation}
It is valid even when $\mathsf B$ is singular.
\end{theorem}

\noindent\textit{Proof.}
$Y=yy^T$ obeys $\dot Y=\mathsf AY+Y\mathsf A^T$, whence
$\operatorname{vec}Y(t_0+t)=e^{t\mathsf B}\operatorname{vec}Y(t_0)$.
Integrating its convergent exponential series gives $T\varphi_1(T\mathsf B)$.
Contracting with $Q$ integrates that port's effort–flow product. No endpoint
store or balance residual enters this calculation. $\square$

The infinite series defines a closed matrix function, without truncation or
small-parameter expansion. An equivalent exact definition is the upper-right
block of $\exp\left[T\left(\begin{smallmatrix}\mathsf B&I\\0&0\end{smallmatrix}\right)\right]$.
Linear voltage integrals are likewise
$\ell^TT\varphi_1(T\mathsf A)y_0$. At a physical event, propagate the
physical $x$ continuously, initialize the forcing coordinates at the event's
actual phase, and apply \eqref{eq:matrix-work} on the next interval.

For clarity, let $\mathcal W_j(\eta,p)$ denote the sum of the four separate
closed forms \eqref{eq:matrix-work} for port $j$, with probe conductance $p$.
Let $X_{\eta,p}(t)$ be the physical part of the successive exponentials and
$\mathcal E(X)=i^T\mathsf Li/2+Cv_o^2/2$. The complete three-circuit
comparison, with every transfer explicitly defined, is:

| Work or endpoint | Tapped | Isolated | Tapped, $10\,\Omega$ probe |
|--------------------------|------------------------|------------------------|-----------------------------|
| Source | $\mathcal W_s(1,0)$ | $\mathcal W_s(0,0)$ | $\mathcal W_s(1,1/10)$ |
| Source heat | $\mathcal W_{R_s}(1,0)$ | $\mathcal W_{R_s}(0,0)$ | $\mathcal W_{R_s}(1,1/10)$ |
| Copper 1 | $\mathcal W_{R_1}(1,0)$ | $\mathcal W_{R_1}(0,0)$ | $\mathcal W_{R_1}(1,1/10)$ |
| Copper 2 | $\mathcal W_{R_2}(1,0)$ | $\mathcal W_{R_2}(0,0)$ | $\mathcal W_{R_2}(1,1/10)$ |
| Core heat | $\mathcal W_c(1,0)$ | $\mathcal W_c(0,0)$ | $\mathcal W_c(1,1/10)$ |
| Load | $\mathcal W_L(1,0)$ | $\mathcal W_L(0,0)$ | $\mathcal W_L(1,1/10)$ |
| Probe | $0$ | $0$ | $\mathcal W_P(1,1/10)$ |
| Initial store | $0$ | $0$ | $0$ |
| Final store | $\mathcal E(X_{1,0}(1/2))$ | $\mathcal E(X_{0,0}(1/2))$ | $\mathcal E(X_{1,1/10}(1/2))$ |
| Exact $r_E$ | $0$ | $0$ | $0$ |

: Exact finite expressions, in joules, for $[0,1/2]\,\mathrm s$. The matrices are fixed by \eqref{eq:finite}, \eqref{eq:matrix-state}, the seven effort–flow pairs, and the interval table. No work is assigned as the remainder of another quantity.

This table is not an efficiency ranking: equal source waveform and winding
parameters do not match terminal impedance or output voltage. A resistive
probe has its own negative work and changes $A$, hence all other works and
endpoints. It can raise source input or reduce original-load delivery under
particular conditions, but neither ordering is asserted as a theorem for all
finite transients. Even $G_P=0$ retains the output capacitor and therefore
is not a probe on an otherwise unchanged bare winding.

The finite waveform, store, and signed-work functions are respectively the
linear projection of \eqref{eq:matrix-state}, $\mathcal E(X(t))$, and
\eqref{eq:matrix-work} with its variable upper time. These exact expressions
replace any inference from a plotted numerical trajectory: stores may rise,
fall, and remain nonzero after relaxation. In fact a source-free regular
interval has $x(t_1)=e^{A(t_1-t_0)}x(t_0)$; the exponential is invertible.
A nonzero state therefore cannot reach the exact zero state at finite time
through that passive linear relaxation alone.

The complete-cycle question in \eqref{eq:complete-cycle} includes the still-open
winding preparation and controller works. One accessible part has an exact
comparison.
For an explicit capacitor-only reset, a fixed resistor $R$ across an initially
charged $C$ gives $v(t)=V_0e^{-t/(RC)}$. On $[0,T]$ its own heat-port
integral is
\begin{equation}
 W_R=-\int_0^T\frac{V_0^2}{R}e^{-2t/(RC)}dt
 =-\frac{CV_0^2}{2}(1-e^{-2T/(RC)}),\qquad
 E(T)=\frac{CV_0^2}{2}e^{-2T/(RC)}.
 \label{eq:reset}
\end{equation}
A voltmeter and resistor-current measurement at ordinary voltage levels can
resolve a nonzero remaining charge and the finite reset work. For example,
$T=RC\ln2$ gives $v(T)=V_0/2$, $E(T)=CV_0^2/8$, and
$W_R=-3CV_0^2/8$ by \eqref{eq:reset}. A measured voltage uncertainty
interval excluding zero rules out exact reset at that endpoint. An interval
containing zero does not prove exact reset; the finite-time nonzero result
is a statement of the ideal exponential model. An active reset may instead
reach zero in finite time, but its supply and switching ports must be included.
The elementary reset does not specify how nonzero winding currents were
prepared; their separate source and loss paths remain necessary.

## Physical return loading in the finite circuit

For the tapped circuit keep the capacitor across $b$–$c$ and set $v_b=V_b-V_c$.
Let $h=1$ select a receiver return at $a$ and $h=0$ at $c$, with
$v_L=v_b-hv_a$ and $G=G_L+G_P$. Current conservation and the source resistor
now give
\begin{align}
 I_s&=i_1-i_2+G_cv_a-hGv_L,\\
 v_a&=\frac{u-R_s(i_1-i_2)+R_shGv_b}{1+R_s(G_c+hG)},\\
 \mathsf L\dot i&=\begin{pmatrix}v_a\\v_b-v_a\end{pmatrix}
                 -\operatorname{diag}(R_1,R_2)i,\qquad
 C\dot v_b=-i_2-Gv_L.
 \label{eq:paired}
\end{align}
The expression for $v_a$ uses $h^2=h$; $h$ denotes a discrete physical
connection, not a continuously interpolated fractional return. Omitting
$-hGv_L$ changes the source circuit. The seven powers retain their definitions
except for load and probe, which are $-G_Lv_L^2$ and $-G_Pv_L^2$.
With $j_L=G_Lv_L$, their load-terminal decomposition is
\begin{equation}
 P_{L,b}=-v_bj_L,\qquad P_{L,\rm ret}=h v_a j_L,
 \qquad P_{L,b}+P_{L,\rm ret}=-G_Lv_L^2.
 \label{eq:load-return}
\end{equation}
Integrating each of these before combining verifies the decomposition.
The same multiplication proof as for \eqref{eq:finite-balance} gives zero
exact energy residual with stores $E_m+Cv_b^2/2$ for either $h$.

The nominal paired example has $n=-4$, $k=19/20$, and
$G_L=1/10\,\mathrm S$. Its operation interval $[1/10,1/5]\,\mathrm s$
has the exact observations, with $T=1/10\,\mathrm s$,
\begin{align}
 \Psi_L^{(h)}&=\ell_h^TT\varphi_1(T\mathsf A_h)y_h,
 &W_j^{(h)}&=\mathcal W(Q_{jh};\mathsf A_h,y_h,T),\\
 E_0^{(h)}&=\mathcal E(x_h),
 &E_1^{(h)}&=\mathcal E\!\left(X_h(1/5)\right).
 \label{eq:paired-exact}
\end{align}
Here $x_h=X_h(1/10)$ is independently prepared by its own first-interval
matrix, $y_h$ augments that state with the forcing phase, and $\ell_h^Ty=v_L$.
The two initial operation stores need not agree even though both preparations
start from zero. Subtracting only already integrated works gives the exact
paired balance
$\Delta E^{(1)}-\Delta E^{(0)}=\sum_j(W_j^{(1)}-W_j^{(0)})$.

There is no general ordering of the load deliveries. Two exact initial-state
arguments already show opposite signs. At $x=(0,0,0)$ with $u\ne0$,
return $a$ has $v_L=-u/[1+R_s(G_c+G)]$, whereas return $c$ has $v_L=0$.
At $x=(0,0,V_0)$ with $u=0$, return $a$ has
$v_L=V_0(1+R_sG_c)/[1+R_s(G_c+G)]$, smaller in magnitude than the return-$c$
value $V_0$ when $R_sG>0$. Continuity preserves these strict inequalities on
some nonzero following interval when $G_L>0$. At $G_L=0$ both receiver
works are zero. The prepared-state example specifies observation endpoints,
not the missing preparation work.

On every one of these finite trajectories the additive readout relation is
exact. The ideal winding ratio generally is not. Define $n=s\rho$ and
$D_\Psi=\Psi_{ba}-n\Psi_{ac}$. Integrating both constitutive winding
equations independently yields
\begin{equation}
 D_\Psi=\Delta(\lambda_2-n\lambda_1)
          +\int_{t_0}^{t_1}(R_2i_2-nR_1i_1)dt,
 \qquad \lambda=\mathsf Li.
 \label{eq:ratio-defect}
\end{equation}
The linkage endpoints are obtained from the state, while each copper integral
has its own linear primitive. A nonzero $D_\Psi$ is a finite-model voltage
observation, not an energy residual. Its sign depends on state and interval.

## An energized return change with two receiver branches

Keep the capacitor at $b$–$c$. Connect a separately controlled receiver
conductance $G_a(t)$ between $b$ and $a$, and another $G_o(t)$ between
$b$ and $c$, as in Figure \ref{fig:commutation}. The winding and source
connections remain those of the tapped circuit. Core-loss conductance retains
the symbol $G_c$. Direct current conservation now gives
\begin{align}
 I_s&=i_1-i_2+G_cv_a-G_a(v_b-v_a),\\
 v_a&=\frac{u-R_s(i_1-i_2)+R_sG_av_b}{1+R_s(G_c+G_a)},\\
 \mathsf L\dot i&=\begin{pmatrix}v_a\\v_b-v_a\end{pmatrix}
               -\operatorname{diag}(R_1,R_2)i,\\
 C\dot v_b&=-i_2-G_a(v_b-v_a)-G_ov_b.
 \label{eq:commutation-path}
\end{align}
These equations retain both actual returns during overlap. The old binary
$h$ is not interpolated. An interval with $G_a=G_o=0$ is an open receiver
gap with the declared source and winding paths still connected.

![Schematic receiver connections during commutation. Both controlled branches remain distinct; $G_a$ returns to $a$, while $G_o$ and the fixed capacitor return to $c$. The source and tapped windings connect to these same terminals as in Figure \ref{fig:circuit}. The lower plot gives the exact bounded overlap history in equation \eqref{eq:commutation-history}.](figures/return-commutation.pdf){#fig:commutation width=78%}

\FloatBarrier

Choose $t_e=0$, $\delta=1/10$ s, $G=1/10$ S, and the bounded history
\begin{equation}
 z=\frac{t}{\delta},\qquad
 G_a=G(1-z),\qquad G_o=Gz,\qquad 0\leq t\leq\delta.
 \label{eq:commutation-history}
\end{equation}
Before the edge take $(G_a,G_o)=(G,0)$ and afterwards $(0,G)$.
Both receivers conduct in the interior. Equal endpoint conductances isolate
the return change from the simultaneous conductance increase in the later
compound example. A distinct gap control is
$G_a=G\max(1-3z,0)$, $G_o=G\max(3z-2,0)$: the middle third has both
branches open. It needs its own trajectory and work integrals.

For a finite energized initial state set $u=1$ V during the edge,
$R_s=1/5\,\Omega$, $R_1=R_2=1/10\,\Omega$, $G_c=1/100$ S,
$C=1/100$ F, and
\begin{equation}
 \mathsf L=\begin{pmatrix}1/25&-19/125\\-19/125&16/25\end{pmatrix}
 \mathrm H,\qquad
 i(0)=\begin{pmatrix}1/5\\0\end{pmatrix}\mathrm A,
 \quad v_b(0)=4\,\mathrm V,
 \quad E(0)=\frac{101}{1250}\,\mathrm J.
 \label{eq:commutation-initial}
\end{equation}
This is the finite $n=-4$, $k=19/20$ winding pair. Its preparation can be
specified independently: on $[-1/10,0]$ s, isolate the two windings and
capacitor from the operating connections, and let
$f=(t+1/10\,\mathrm s)/(1/10\,\mathrm s)$,
$i=f(1/5,0)^T$ A, and $v_b=4f$ V. Two winding sources impose
$u_1=2/25+f/50$ V and $u_2=-38/125$ V; a capacitor source supplies
$(4f\,\mathrm V,,2/5\,\mathrm A)$.
For the winding/capacitor boundary with immediate resistive heat export,
the separately integrated products are
\begin{align}
 W_{s,1}^{\rm prep}&=\int_{-1/10\,\mathrm s}^0u_1i_1dt
                      =\frac7{7500}\,\mathrm J,&
 W_{s,2}^{\rm prep}&=\int_{-1/10\,\mathrm s}^0u_2i_2dt=0,\\
 W_{h,1}^{\rm prep}&=-\int_{-1/10\,\mathrm s}^0R_1i_1^2dt
                      =-\frac1{7500}\,\mathrm J,&
 W_{h,2}^{\rm prep}&=-\int_{-1/10\,\mathrm s}^0R_2i_2^2dt=0,\\
 W_C^{\rm prep}&=\int_{-1/10\,\mathrm s}^0v_b(C\dot v_b)dt
                      =\frac2{25}\,\mathrm J.
 \label{eq:commutation-preparation}
\end{align}
The independent initial store is zero; the final magnetic store is $1/1250$ J
and capacitor store is $2/25$ J. Their sum agrees with the five integrated
works. Reconnection to the declared operating circuit retains both winding
currents and capacitor voltage; the algebraic $v_a$ may change finitely.
There is no impulse for this ideal event. Physical preparation and selector
supplies require their own observed works.

On the edge, enclose the windings, capacitor, source resistor and copper/core
loss elements, keeping the source, two receivers, and heat reservoirs outside.
For this immediate-export model the seven works are individually
\begin{align}
 W_s&=\int_0^\delta uI_sdt,& W_{h,s}&=-\int_0^\delta R_sI_s^2dt,\\
 W_{h,1}&=-\int_0^\delta R_1i_1^2dt,&
 W_{h,2}&=-\int_0^\delta R_2i_2^2dt,\\
 W_{h,c}&=-\int_0^\delta G_cv_a^2dt,&
 W_{L,a}&=-\int_0^\delta(v_b-v_a)\,G_a(v_b-v_a)dt,\\
 W_{L,o}&=-\int_0^\delta v_b(G_ov_b)dt.
 \label{eq:commutation-works}
\end{align}
Each heat integrand is $-T_j\dot S_j$ under the declared thermal law.
Evaluate the endpoint stores from
$E(t)=i(t)^T\mathsf Li(t)/2+Cv_b(t)^2/2$ at $0$ and $\delta$.
Multiplying the independently specified current and capacitor equations gives
$\dot E=uI_s-R_sI_s^2-R_1i_1^2-R_2i_2^2-G_cv_a^2
-G_a(v_b-v_a)^2-G_ov_b^2$.
Consequently the exact model residual from these integrals and endpoint
evaluations is zero, without an additional impulse. The matrix in
\eqref{eq:commutation-path} varies with time; the constant-matrix work formula
cannot be substituted here. The path integrals and $E(\delta)$ are retained
as exact conditional expressions, not assigned unevaluated numerical values.
No numerical integration has been performed.

For the physical selector enlarge the boundary to include its stores and
material thermal states. Its control supply has the separately measured
work $\int_0^\delta v_{\rm ctrl}i_{\rm ctrl}dt$; any mechanical actuation
has its conjugate work as well. Specifying $G_a,G_o$ does not determine those
transfers. Use actual heat crossing this enlarged boundary and
\eqref{eq:physical-endpoints}, rather than exporting its internal Joule
conversion again. Reactive reattachment and winding interruption require
their own connection and event laws.

This $1$ V source, initially $4$ V capacitor, and $1/10$ s edge give a
concrete voltage–current investigation. Conditional observed envelopes
$|\widehat v|\leq5$ V, $|\widehat i|\leq1$ A and calibrated errors
$u_v=1/100$ V, $u_i=1/1000$ A bound one port's product error by
$1501/1000000$ J on the edge. A proposed whole-event bound of $1/50$ J
must include every channel, timing, endpoint, thermal, and controller
contribution in \eqref{eq:residual-uncertainty}; it is not guaranteed by the
single-port bound. If a waveform exceeds these envelopes, recalculate its
bound. Report both receiver works and the physical signed remainder.
Agreement or a surviving discrepancy becomes a result of that specified
commutation, with preparation and reset still recorded separately.

## Parameter distinctions and constrained limits

The regular derivations cover both connections and both polarities.
In particular, they include
$$\rho\in\{1/2,1,2\},\qquad k\in\{0,1/2,19/20,99/100\}$$
without any interpolation assumption.
The additional individually specified controls are important because they
alter different parts of the equations:

| Parameter or condition | Alternatives to the baseline |
|-------------------------------------|---------------------------------------------------------|
| Turns magnitude | $1/4,4$ |
| Initial load conductance, S | $0,1/1000,1$ |
| Probe conductance, S | $1/1000,1/10$ |
| Drive frequency, Hz | $0,2,20$ |
| Capacitance, F | $1/2000,1/100$ |
| Both copper resistances, $\Omega$ | $0,1/2$ |
| Core conductance, S | $0,1/10$ |
| Load multiplier at $1/5\,\mathrm s$ | $0$ (removal), $1$ (no change) |
| Drive phase | $-\pi/2,0,\pi/2$ |
| Imposed $(i_1,i_2,v_o)$, in A, A, V | $(1/5,0,0)$; $(0,-1/5,0)$; $(0,0,1)$ |
| Null | Zero source and zero initial state |

: Individual regular controls, with other baseline parameters retained. Their joint physical realization is not established by the algebraic balance alone.

The paired-return family additionally uses opposed
$\rho\in\{3,4,6\}$, the same four $k$ values,
$G_L\in\{0,1/10,1\}\,\mathrm S$, and both returns. Its separate
$n=-4$ controls are zero and $20\,\mathrm{Hz}$ drive, initial
$(1/5,0,0)$ or $(0,0,1)$, $G_P=1/10\,\mathrm S$, reversed polarity,
zero drive, and equal opposed sections $n=-1$. All four physical intervals
remain separate; neither fixed-return experiment itself commutates the return.

Exactly $k=1$, $C=0$, $R_s=0$, a shorted output, and zero turns ratio are
not obtained by substituting into a formula that divides by the vanishing
quantity. They need their own constrained equations and compatible initial
states; a prepared capacitor short may require an impulse or a dissipative
finite path. Saturation, remanence, hysteresis, frequency-dependent core loss,
distributed capacitance, chassis returns, and thermal evolution are absent
from \eqref{eq:finite}. Their model residual has unknown sign and magnitude.
No equality of ideal balances estimates that discrepancy.

# Compound circulation and a transformer network

## Two meshes and a common stepped planet

Let coaxial members $A,B$ mesh with two rigidly connected planet sections
$P_A,P_B$ on carrier $C$. Set $s_X=-1$ for an external mesh and $s_X=+1$
for an internal mesh, and define
\begin{equation}
 a=\frac{m_0}{2}(Z_A-s_AZ_{pA})
  =\frac{m_0}{2}(Z_B-s_BZ_{pB})>0,\quad
 h_X=s_X\frac{Z_{pX}}{Z_X},\quad R=\frac{h_A}{h_B}.
 \label{eq:compound-assembly}
\end{equation}
Rolling gives $\omega_X-\omega_C=h_X(\omega_P-\omega_C)$ and hence
$\omega_A-\omega_C=R(\omega_B-\omega_C)$. With carrier rate
$\omega_C=w$ and one held member, the other rates are
\begin{equation}
 \begin{array}{c|cc}
 &\omega_A&\omega_B\\\hline
 A\ \text{held}&0&w(1-1/R)\\
 B\ \text{held}&w(1-R)&0
 \end{array},\qquad
 \omega_P=w+\frac{\omega_A-w}{h_A}.
 \label{eq:compound-rates}
\end{equation}
For $q$ equally loaded massless planets, choose $\tau_A=\tau_*$.
Their axial free-body equation is
$s_Ar_{pA}F_A+s_Br_{pB}F_B=0$, with $q r_A F_A=\tau_*$.
The pin reaction is $R_t=-(F_A+F_B)$, giving
\begin{equation}
 (\tau_A,\tau_B,\tau_C)=\tau_*(1,-R,R-1).
 \label{eq:compound-torques}
\end{equation}
The carrier torque follows from $qaR_t$ using
\eqref{eq:compound-assembly}. These constraints, not an energy premise,
imply $\sum\tau=0$ and $\sum\tau\omega=0$.

The nine named sides are three shaft powers $p_X^f=\tau_X(\omega_X-\Omega)$,
two opposite sides of each mesh, and two opposite pin sides. When all planets
are aggregated, the mesh sides are $\pm p_A^f,\pm p_B^f$ and the pin sides
are $\pm p_C^f$. They are component diagnostics, not nine independent
external supplies. Fix the physical ground throughput denominator
$D_0=\max_{X=A,B,C}\lvert\tau_X\omega_X\rvert$ and define
\begin{equation}
 \mathcal C_f=\frac{\max_{\text{nine sides}}\lvert p^f\rvert}{D_0}
 =\frac{\max_{X=A,B,C}\lvert\tau_X(\omega_X-\Omega)\rvert}{D_0}.
 \label{eq:circulation}
\end{equation}
This definition is meaningful only for $D_0>0$ and gives
$\mathcal C_0=1$ exactly. It measures the largest absolute indicated port
power, not a new net transfer and not an invariant amount of circulating
energy. In particular,
\begin{equation}
 \mathcal C_C=\frac1{\lvert R-1\rvert}\quad(A\text{ held}),\qquad
 \mathcal C_C=\frac{\lvert R\rvert}{\lvert R-1\rvert}\quad(B\text{ held}).
 \label{eq:carrier-ratio}
\end{equation}

| Configuration | $(Z_A,Z_{pA},Z_{pB},Z_B)$ | $(s_A,s_B)$ | $R$ |
|--------------------|-------------------------------------|----------------|---------------------|
| I: simple planetary | $(24,18,18,60)$ | $(-1,+1)$ | $-5/2$ |
| II: stepped planet and ring | $(20,22,20,62)$ | $(-1,+1)$ | $-341/100$ |
| III: two external members | $(30,20,19,31)$ | $(-1,-1)$ | $62/57$ |
| IV: two rings | $(62,20,21,63)$ | $(+1,+1)$ | $30/31$ |
| V: two rings, close ratios | $(100,58,59,101)$ | $(+1,+1)$ | $2929/2950$ |

: Five pitch-compatible compound configurations. Multiple-planet tooth phasing, clearance, and equal load sharing remain additional physical assumptions.

For each choose $m_0=1/500\,\mathrm m$, $q=3$,
$w=2\pi\,\mathrm{rad/s}$, $\tau_*=47/4\,\mathrm{N\,m}$, and interval
$[0,3/2]\,\mathrm s$. All four frame ratios follow directly from
\eqref{eq:compound-rates}–\eqref{eq:circulation}:

| Configuration | Held | Ground | Carrier | Member $A$ | Member $B$ |
|----------------|---------|-------------:|---------------:|---------------:|---------------:|
| I | $A$ | $1$ | $2/7$ | $1$ | $2/5$ |
| I | $B$ | $1$ | $5/7$ | $5/2$ | $1$ |
| II | $A$ | $1$ | $100/441$ | $1$ | $100/341$ |
| II | $B$ | $1$ | $341/441$ | $341/100$ | $1$ |
| III | $A$ | $1$ | $57/5$ | $1$ | $57/62$ |
| III | $B$ | $1$ | $62/5$ | $62/57$ | $1$ |
| IV | $A$ | $1$ | $31$ | $1$ | $31/30$ |
| IV | $B$ | $1$ | $30$ | $30/31$ | $1$ |
| V | $A$ | $1$ | $2950/21$ | $1$ | $2950/2929$ |
| V | $B$ | $1$ | $2929/21$ | $2929/2950$ | $1$ |

: All held-member and frame choices for the five configurations. The smallest value is $100/441$ and the largest is $2950/21$. Neither is a continuous bound for other geometries or frames.

Each signed work is separately
$W_X^f=(3/2)\tau_X(\omega_X-\Omega)$; internal works carry the corresponding
opposite signs. This ideal algebraic boundary has no constitutive storage
coordinates, so both endpoint store sums are empty. The external works sum
to zero and $r_E=0$ without an impulse. Adding finite inertias would require
independent kinetic endpoints and, for acceleration, different torques.
Configuration I reduces exactly to the earlier simple train.

At $R=1$, the constraints impose $\omega_A=\omega_B$, not a stopped carrier.
With either member held, both are zero, $\tau_C=0$, and $D_0=0$ even if
$w\ne0$. A nonzero relative circulation effort can still be imposed in the
ideal network. Its ratios are then nonzero divided by zero, or zero divided
by zero; both are undefined rather than finite observations. For any positive
rational $R=p_0/q_0$, the two-external assembly
$(Z_A,Z_{pA},Z_{pB},Z_B)=(2q_0,2p_0,p_0+q_0,p_0+q_0)$ realizes that ratio with positive
integer teeth. Thus approaches from either side of one are algebraically
possible, subject again to physical tooth and clearance constraints.

## Complete ports and mapped terminal products

Use two ideal transformers with primary branches $A$–$C$ and $B$–$C$ and
secondary branches both $P$–$C$. For each transformer impose
\begin{equation}
 V_X-V_C=h_X(V_P-V_C),\qquad j_X=-h_X i_X,
 \qquad j_A+j_B=0,
 \qquad i_C=-(i_A+i_B).
 \label{eq:compound-electric}
\end{equation}
The parallel-secondary current law gives $i_B=-Ri_A$; the common return
then gives $i_C=(R-1)i_A$. With the power-preserving scale
$\alpha=1\,\mathrm V/(\mathrm{rad/s})$, these reproduce
\eqref{eq:compound-rates}–\eqref{eq:compound-torques}. The conversion from
revolutions per second includes $2\pi$ in every power and work.

![Schematic two-transformer compound correspondence. Both secondary windings share $P$–$C$; the complete external ports connect $A,B,C$ to the physical return $O$. The four winding ports are internal to the complete network. A common shift of all node potentials, including $O$, preserves every complete port voltage.](figures/compound-map.pdf){#fig:compound width=92%}

\FloatBarrier

On the whole electrical boundary the three external ports are $X$–$O$,
with power $(V_X-V_O)i_X$. On individual transformer boundaries the four
complete winding powers are $(V_X-V_C)i_X$ and $(V_P-V_C)j_X$;
each pair sums to zero. The nine mechanical sides correspond instead to
signed copies of the terminal products $(V_X-\alpha\Omega)i_X$.
They therefore match exactly in every frame in the table, but they are not
all complete electrical ports. For a coordinate shift, an individual
external-port return contributes $-(V_O+g)i_X$, even when the sum of all
return currents is zero.

The maximum winding power divided by $D_0$ equals $\mathcal C_C$.
The ratio including all three external and four winding ports is
\begin{equation}
 \mathcal C_{\rm phys}=\max(1,\mathcal C_C),
 \label{eq:physical-ratio}
\end{equation}
which is invariant under a common coordinate shift and generally differs
from $\mathcal C_f$. For the table, $\mathcal C_{\rm phys}-\mathcal C_f$
ranges from $-241/100$ to $2929/21$, and differs from zero for 26 of the
40 frame choices. These are differences between defined observables, not
failed matches of the corresponding terminal and mechanical products.
A fixed physical-port set cannot realize all frame ratios through changing
only the voltage zero. Constant ideal winding voltage here does not establish
a sustainable finite-core DC transformer.

The same correspondence retains zero velocity with nonzero torque, zero
current, sign reversals, and exact current zeros. Replace the constant applied
torque by $\tau_A(t)=\tau_*[t/(1\,\mathrm s)-3/4]$ on
$[0,3/2]\,\mathrm s$, retaining constant rates. Each port has
$P_j(t)=p_{j*}[t/(1\,\mathrm s)-3/4]$, with $p_{j*}$ in watts. Its
separate work integrals are
\begin{align}
 W_j(0,3/4\,\mathrm s)&=-\frac9{32}p_{j*}\,\mathrm s,&
 W_j(3/4\,\mathrm s,3/2\,\mathrm s)&=\frac9{32}p_{j*}\,\mathrm s,\\
 W_j(0,3/2\,\mathrm s)&=0,&
 \int_0^{3/2\,\mathrm s}\lvert P_j(t)\rvert dt
 &=\frac9{16}\lvert p_{j*}\rvert\,\mathrm s.
 \label{eq:absolute-work}
\end{align}
Thus $\lvert W_j\rvert=0$, whereas integrated absolute power is positive
when $p_{j*}\ne0$. Zero-power ports remain zero, and every instantaneous
power vanishes at the reversal itself.
Zeros and maximizing-port ties follow from the individual polynomial
products; undefined zero-throughput ratios must be retained. Arbitrary
constant and linear common offsets, including the earlier nine choices,
change terminal products according to \eqref{eq:gauge} while leaving the
complete-port works fixed.

# Finite correspondence, active references, and limiting models

## Magnetic elasticity and capacitive inertia

A finite compound network can have real stored states without being a rigid
gear train. Let the oriented branch-incidence matrix $B$ have columns
$e_A-e_C,e_P-e_C,e_B-e_C,e_P-e_C$, with the held node eliminated when
necessary. Each coupled pair has
\begin{equation}
 \mathsf L_X=L_0\begin{pmatrix}h_X^2&kh_X\\kh_X&1\end{pmatrix},
 \qquad L_0>0,\quad 0\leq k<1.
 \label{eq:compound-L}
\end{equation}
Let $\mathsf C$ be the diagonal grounded node-capacitance matrix and
$\mathsf R$ the positive branch-resistance matrix. The electrical model is
\begin{equation}
 \mathsf C\dot v=I_{\rm ext}-Bi,\qquad
 \mathsf L\dot i=B^Tv-\mathsf Ri.
 \label{eq:network-E}
\end{equation}
Source, receiver, and probe conductances are included explicitly in
$I_{\rm ext}$, each with its own physical return.

Independently specify a rotational Maxwell model with inertias
$\mathsf J=\alpha^2\mathsf C$, elastic deformations $z$, stiffness
$\mathsf K=\alpha^2\mathsf L^{-1}$, and mobility
$\mathsf M=\mathsf R/\alpha^2$. Its equations are
\begin{equation}
 \mathsf J\dot\omega=\tau_{\rm ext}-Bf,\qquad
 f=\mathsf Kz,\qquad \dot z=B^T\omega-\mathsf Mf.
 \label{eq:network-M}
\end{equation}
For a single pair set $u_z=z_1/h_X$, $v_z=z_2$, and
$q_\pm=(u_z\pm v_z)/\sqrt2$. The elastic energy is
\begin{equation}
 U_X=\frac{\alpha^2q_+^2}{2L_0(1+k)}
       +\frac{\alpha^2q_-^2}{2L_0(1-k)},\qquad
 f=\frac{\partial U}{\partial z}.
 \label{eq:elastic}
\end{equation}
Differentiation verifies the specified stiffness. The exact map
\begin{equation}
 v=\alpha\omega,\quad i=f/\alpha,\quad
 z=\mathsf Li/\alpha,\quad
 I_{\rm ext}=\tau_{\rm ext}/\alpha
 \label{eq:finite-map}
\end{equation}
substitutes \eqref{eq:network-E} into \eqref{eq:network-M}. Compatible initial
states and uniqueness of the regular linear equations establish correspondence
throughout each interval. The magnetic store equals $U$, and capacitor
energy equals rotational kinetic energy. Magnetic energy maps to elasticity,
while inertia maps to capacitance; interchanging those assignments would
invalidate the comparison. Residuals in amperes, volts, radians, and radians
per second cannot be merged into a dimensionful physical norm without scales.

One illustrative coefficient choice is $L_0=3/25\,\mathrm H$,
$\mathsf R_X=(2/25)\operatorname{diag}(h_X^2,1)\,\Omega$,
$R_s=3/4\,\Omega$, with member inertias $3/100,7/200\,\mathrm{kg\,m^2}$,
carrier inertia $1/50\,\mathrm{kg\,m^2}$, three planets each of mass
$3/25\,\mathrm{kg}$ and spin inertia $1/1250\,\mathrm{kg\,m^2}$.
Include their orbital inertia $3m_pa^2$ separately, using
\eqref{eq:compound-assembly}. Grounded receiver and driver capacitors
$1/100$ and $1/200\,\mathrm F$ parallel the free-member and carrier
capacitors; a reset conductance is $1/2\,\mathrm S$ and source amplitude
$2\pi\,\mathrm V$ at $\alpha=1$ in the stated units.
The branch stores may be counted as four shared/leakage modal stores, and
the free-member, carrier, planet, receiver, and driver stores as five more.
The held-member capacitor has identically zero voltage. All nine nontrivial
terms are evaluated constitutively at both endpoints.

For a completely specified example select configuration I, member $B$ held,
$k=19/20$, and $\alpha=1\,\mathrm V/(\mathrm{rad/s})$.
Use the reduced node order $(A,C,P)$. Order the windings as the primary
and secondary of $A$, followed by the primary and secondary of $B$.
The matrices are
\begin{align}
 B_r&=\begin{pmatrix}1&0&0&0\\-1&-1&-1&-1\\0&1&0&1\end{pmatrix},&
 \mathsf C_r&=\operatorname{diag}
 \left(\frac1{25},\frac{160219}{6250000},\frac3{1250}\right)\mathrm F,\\
 \mathsf L_A&=\begin{pmatrix}27/400&-171/2000\\-171/2000&3/25\end{pmatrix}\mathrm H,&
 \mathsf L_B&=\begin{pmatrix}27/2500&171/5000\\171/5000&3/25\end{pmatrix}\mathrm H,\\
 \mathsf R&=\operatorname{diag}
 \left(\frac9{200},\frac2{25},\frac9{1250},\frac2{25}\right)\Omega.
 \label{eq:compound-example}
\end{align}
Here $\mathsf L=\operatorname{diag}(\mathsf L_A,\mathsf L_B)$.
The carrier capacitance is
$1/50+1/200+(9/25)(21/500)^2$ F; the free-member capacitance
includes $1/100$ F, and the planet capacitance includes three spin inertias.
Every voltage and winding current starts at zero. The source drives $C$–$O$
through $R_s=3/4\,\Omega$, with the following piecewise constant commands.
The probe is absent, $G_P=0$.

| Interval, s | $u$, V | $G_O$, S | $G_C$, S | $G_R$, S |
|-----------------------|-------------:|-------------:|-------------:|-------------:|
| $[0,1/10]$ | $-2\pi$ | $1/10$ | $0$ | $0$ |
| $[1/10,1/5]$ | $2\pi$ | $1/10$ | $0$ | $0$ |
| $[1/5,3/10]$ | $2\pi$ | $0$ | $2/5$ | $0$ |
| $[3/10,1/2]$ | $0$ | $0$ | $2/5$ | $0$ |
| $[1/2,1]$ | $0$ | $0$ | $2/5$ | $1/2$ |

: Fully specified reversed-drive preparation, receiver change, relaxation, and reset trial. Each endpoint uses the value from its own interval side; the states are continuous.

Let $e_F=(1,0,0)^T$, $e_C=(0,1,0)^T$, and $d_{FC}=e_F-e_C$.
On each interval define the nodal conductance matrix and state $x$ by
\begin{align}
 \mathsf G&=R_s^{-1}e_Ce_C^T+(G_O+G_P+G_R)e_Fe_F^T
                  +G_Cd_{FC}d_{FC}^T,\\
 x&=(v_A,v_C,v_P,i^T)^T,\qquad
 \dot x=A_7x+b_7u,\\
 A_7&=\begin{pmatrix}
 -\mathsf C_r^{-1}\mathsf G&-\mathsf C_r^{-1}B_r\\
 \mathsf L^{-1}B_r^T&-\mathsf L^{-1}\mathsf R
 \end{pmatrix},\qquad
 b_7=\begin{pmatrix}\mathsf C_r^{-1}e_C/R_s\\0_4\end{pmatrix}.
 \label{eq:compound-matrix}
\end{align}
Thus $y=(x,1)$ obeys the constant augmented matrix
$\mathsf A=\left(\begin{smallmatrix}A_7&b_7u\\0&0\end{smallmatrix}\right)$.
For the carrier-return receiver put
$\ell=(1,-1,0,0,0,0,0,0)^T$; its quadratic form is
$Q_{L,C}=-G_C\ell\ell^T$. Its separate interval work is
$\mathcal W(Q_{L,C};\mathsf A,y_0,T)$, while the source uses the two
linear forms $u$ and $(u-v_C)/R_s$. Every other power below supplies its own
$Q_j$. Stores at each endpoint are evaluated as
$v_r^T\mathsf C_rv_r/2+i^T\mathsf Li/2$, with the constituent capacitances
retained separately if their subboundaries are needed. This specifies a unique
exact matrix-function answer for every port and stage without a decimal
trajectory. The source-free reset interval cannot erase a nonzero state in
finite time, by the invertibility argument following \eqref{eq:matrix-work}.

The same construction defines a parameter family with both held members,
$k\in\{0,19/20,99/100\}$, initial receiver conductance
$G_*\in\{0,1/10,1\}\,\mathrm S$, and
$G_P\in\{0,1/100\}\,\mathrm S$. Preparation uses either $u=0$ or
$u=-2\pi\,\mathrm V$ from zero state; operation uses $+2\pi\,\mathrm V$.
The receiver either changes from $G_O=G_*$ to $G_C=4G_*$ or remains at
ground with $G_O$ raised to $4G_*$. These alternatives are distinct initial
value problems, not results inferred from the particular example.

Finite elasticity introduces effort paths absent in the rigid reduction.
For example $m_X=j_X+h_Xf_X$, using mechanical secondary and primary efforts,
is generally nonzero and supplies a couple between planet and carrier.
The pin effort includes orbital acceleration,
\begin{equation}
 T_{\rm pin}=J_{\rm orb}\dot\omega_C
                 +(h_A-1)f_A+(h_B-1)f_B.
 \label{eq:finite-pin}
\end{equation}
Here primary and secondary efforts are the components of $f$ in
\eqref{eq:network-M}, and $J_{\rm orb}=3m_pa^2$.
Consequently opposite diagnostic mesh-side products need not cancel across
an elastic element. Matching the original nine diagnostics is not proof
that those alone exhaust a finite boundary.

## Physical ports, event schedules, and ratios

The complete finite boundary contains all the above stores and source and
branch resistors, with external source, receivers, probe, reset, and heat
reservoirs. There are ten physical powers: source $uI_s$; source heat
$-(R_sI_s)I_s$; four winding heat exports $-(R_ji_j)i_j$; ground-return
receiver $-(V_F-V_O)G_O(V_F-V_O)$; carrier-return receiver
$-(V_F-V_C)G_C(V_F-V_C)$; probe $-(V_F-V_O)G_P(V_F-V_O)$; and reset
$-(V_F-V_O)G_R(V_F-V_O)$. $F$ names the free member. Each resistance
also has its equivalent $-T\dot S$ export. The mechanical forms follow
\eqref{eq:power-map}, with mobility dissipation $-f^T\mathsf Mf$.
Node and winding subboundary powers remain separate diagnostics.
Multiplying the two network equations by $v^T$ and $i^T$ cancels
$v^TBi$, deriving the energy balance and the corresponding mechanical one.

Preparation $[0,1/10]$, operation $[1/10,1/5]$, post-connection change
$[1/5,3/10]$, relaxation $[3/10,1/2]$, and reset $[1/2,1]\,\mathrm s$
are distinct stages. An explicitly prescribed reversed-drive preparation is
also a distinct path. A receiver can remain at $F$–$O$ or change to $F$–$C$
while every capacitor return stays at $O$. Ideal selectors have zero voltage
when closed and zero current when open; a stipulated zero-current controller
then has zero work within that selector model. This says nothing about a
real actuator supply. With bounded resistive changes, all capacitor voltages,
winding currents, and elastic deformations are continuous; no inductor is
opened, capacitor reattached, or energized rotor clamped.

For constant connections and a forcing represented as in
\eqref{eq:matrix-state}, each of the ten works is the separate closed form
\eqref{eq:matrix-work}; endpoints use each model's own states and stores.
A finite transition of width $\delta\in\{1/1000,1/2000,1/4000\}\,\mathrm s$
can be specified by $s_e(t)=0$ before $t_e$, $(t-t_e)/\delta$ during the
transition, and $1$ afterwards. At $t_e=1/5\,\mathrm s$, set
$G_O=G_*(1-s_e)$ and $G_C=4G_*s_e$ for commutation, or
$G_O=G_*(1+3s_e)$ and $G_C=0$ for a retained return. At
$3/10\,\mathrm s$ take $u=2\pi(1-s_e)$ V; at $1/2\,\mathrm s$
take $G_R=s_e/2$ S. These histories define time-dependent matrices, for which
the constant-matrix theorem alone supplies no evaluated work. Their powers
and constitutive balance are specified, but no trajectory, ordering, or
limiting switch work is inferred here from the instantaneous model.

Linearity gives an exact amplitude control: reversing the source and the
compatible prepared state reverses all physical states and leaves their
quadratic physical powers and works unchanged. Zero drive with zero state is
the exact null. Common-offset cross terms $gI_j$ do reverse with current and
must be recomputed; they are not copied from positive drive. Neither amplitude
homogeneity nor a regular finite model at $R=1$ proves the singular rigid
constraint or an energized locking law.

In ground coordinates, the actual trajectory has diagnostic denominator
\begin{equation}
D(t)=\max_{X=A,B,C}\lvert V_XI_{{\rm ext},X}\rvert.
\label{eq:finite-denominator}
\end{equation}
A receiver commutation does not authorize replacing this with
the old circuit's counterfactual trajectory. The mapped nine-side ratio uses
its own numerator; a complete-physical-port ratio uses another numerator.
An interval ratio instead first integrates every signed work and then takes
the prescribed maxima and quotient. It is neither the instantaneous ratio
nor an integral of absolute power. Zeros, nonzero-over-zero, and zero-over-zero
remain undefined; a small whole-boundary residual cannot certify a small
or uncertain denominator.

An initially unenergized right-hand operation endpoint can have zero node
throughput while the external source and its resistor already carry finite,
opposite powers. Thus the mapped diagnostic can be zero-over-zero while the
complete physical diagnostic is nonzero-over-zero. There is no finite ratio
to report at that event. In the example \eqref{eq:compound-example}, ratios at
$3/20$, $1/4$, and $3/4\,\mathrm s$ are obtained by evaluating its exact
state and individual powers there, not by reusing \eqref{eq:carrier-ratio}.
Inertia, compliance, resistance, loading, and excitation all change them.
No ordering or extremum over those stages follows from the rigid table.

The active-reference, finite-controller and prepared-limit constructions are
proved in Appendix \ref{sec:reference-appendix}. They retain the full sensor,
actuator, converter and rail states, distinguish physical moving returns from
coordinate changes, and include both passive and imposed-clamp limits.
The finite actuator has an exact endpoint departure; the proof and its
separate supplies remain with equation \eqref{eq:lag-discrepancy}.

# Physical reconnection and prepared states
\label{sec:reconnection}

The four-tap construction fixes an ideal terminal relation. Selecting another
terminal for a charged receiving branch changes the physical equations.
Murray's SERPS patent illustrates an isolated primary and a tapped secondary
with two switched capacitor--resistor branches [Murray (2017)][serps].
The positive branch charges from the full secondary and returns through its
lower section; the negative branch uses the opposite full and tapped
connections. The companion develops that graph, both polarities, finite
commutation, controller and material states. It is a separate apparatus from
the conductive common-flux four-tap realization.

For one ideal positive interval, write $v_s=Ri+v_C$, $C\dot v_C=i$
during charging, and $v_C=Rj+fv_s$, $C\dot v_C=-j$ during return.
The tap fraction is $0<f<1$. Thus $fv_s<v_C<v_s$ allows both positive
charging current at the full winding and positive return current at the tap.
The independent powers give
\begin{equation}
 v_si=Ri^2+\frac{d}{dt}\frac{Cv_C^2}{2},\qquad
 -fv_sj=Rj^2+\frac{d}{dt}\frac{Cv_C^2}{2}.
 \label{eq:tap-return}
\end{equation}
Integrate each source and resistor product on its own interval and evaluate
the capacitor endpoints. The resulting source draw minus return equals
receiver delivery plus store change. The intended quarter-cycle command does
not establish the current direction throughout that interval.

For any complete source port with positive-inward power $p_s$, define
\begin{equation}
 W_+=\int\max(p_s,0)dt,\quad W_-=-\int\min(p_s,0)dt,\quad
 W_s=W_+-W_-,\quad W_{\rm traffic}=W_++W_- .
 \label{eq:source-return}
\end{equation}
Gross draw, return, net input and absolute throughput have distinct meanings.
When a generator is enclosed with the capacitor and switches, its electrical
return is internal. Prime-mover, excitation and controller works remain
external; the rotor and field stores join the endpoint inventory.

The optional series/parallel bank also retains each cell's state.
Two ideal cells of capacitance $C$, both at voltage $V$, have store $CV^2$.
Their parallel terminals have $(V,2C)$, their series-aiding terminals
$(2V,C/2)$. Equivalent capacitance describes the connection, while the
individual cell voltages determine the store. For unequal preparations,
actual exchange paths determine receiver and switch work.

A terminal may also conceal a prepared state. For two equal series cells
with an isolated floating midpoint and resistor $R_L$, put
$s=V_1+V_2$, $\delta=V_1-V_2$. The cell laws give
\begin{equation}
 \dot s=-\frac{2s}{R_LC},\quad \dot\delta=0,\quad
 E_C=\frac C4(s^2+\delta^2),\quad
 W_L(T)=\frac{Cs(0)^2}{4}(1-e^{-4T/(R_LC)}).
 \label{eq:hidden-series}
\end{equation}
The last expression is the separately integrated positive receiver delivery.
With $C=1\,\mathrm F$, preparations $(1,1)$ and $(3,-1)\,\mathrm V$
produce identical entire load-terminal histories and cell stores differing
by $4\,\mathrm J$. Later isolated parallel equalization can expose that
difference, but its division among useful receiver, switch and probe requires
their actual paths. A finite observation can distinguish only the states
covered by its observation map and calibrated error.

Conserved oriented state, absolute magnitude, stored energy, and work are
also different objects. Isolated resistive exchange conserves $q_1+q_2$
and makes $|q_1|+|q_2|$ nonincreasing. Inductive exchange can create opposite
charge signs with equal initial and final total reactive energy.
Changing the connection requires testing conservation again. For
$\dot\lambda=B^Tv+e_pU-Ri$, a putative winding invariant $h^T\lambda$
obeys $\dot c=(Bh)^Tv+h^Te_pU-h^TRi$. With independent states and
strictly positive winding resistance, conservation for every state and
drive forces $h=0$. An isolated two-store invariant cannot be assigned to
this driven lossy winding by analogy.

The companion gives the exact contraction and reversal controls, an
all-time certificate through one finite shunt interval, and physical
reconnection observation and work contracts. Those results clarify which
states the selected terminal sees and which paths receive work. Preparation,
operation and reset still require separate histories for a complete
performance comparison.


# Events, uncertainty, and limits of the conclusions

## Discontinuities and impulses

A mesh separation or re-engagement with finite force can have continuous
positions and velocities and hence zero store jump, while its force–velocity
product jumps. The exact work is the sum of integrals on both event sides;
no additional impulse is inserted. A compliant contact example is an overlap
$\delta$ with spring force $k_m\max(\delta,0)$ and stored energy
$k_m\max(\delta,0)^2/2$. Adding a dashpot requires its own nonnegative
relative-motion heat export. Switching a finite contact or damping force does
not itself establish a jump in momentum.

Rigid impact with restitution is different: momenta and kinetic energy may
jump. Its signed impulse work requires a declared impact law or finite
regularization. Backlash during an accelerating carrier, unequal planet load
sharing, nonzero pin couples, and radial centre motion cannot be certified
by the simpler event or steady-state formulas. Likewise, physically opening
an energized winding can produce clamp, arc, and displacement-current paths;
changing a tap or moving a capacitor can involve charge sharing. Every
switch, clamp, controller, and preparation path must then be explicit.
A finite resistive receiver selector does not settle these reactive events.

## Exact residuals and unresolved accuracy questions

All polynomial, trigonometric cycle, and matrix-function integrals reported
here are exact in their declared models. The numerical integration residual
is **exactly zero**, because no numerical integration is used. The
instantaneous equation residual is zero by the independent constitutive
substitution shown for each model, and the exact energy residual is zero
only for the complete boundaries and effective-frame conventions specified.
The physical model residual remains unquantified: it comprises omitted mesh,
bearing, windage, churning, joint, magnetic, dielectric, switch, controller,
and thermal physics. No apparatus measurements are reported.

It is useful to retain the mathematical limitations of approximate audits
without turning their outcomes into physical theorems. Three distinct
failure mechanisms illustrate why an apparently small balance is insufficient.
First, a quadrature error estimate can vanish for a constant integrand while
roundoff in a nonzero work sum remains. Second, an accumulation estimate
proportional to the computed power can miss cancellation error when forming
$\omega-\Omega$ near an exact zero. If the represented rates have errors
$\delta\omega,\delta\Omega$, the port-power error at the exact held condition
is exactly $\tau(\delta\omega-\delta\Omega)$ for exact $\tau$; its work
can have either sign. Reducing an integration step cannot remove that input
error. Zeroing the torque removes it for a different reason and is a useful
but distinct null control.

For $N$ contributions combined by a balanced addition tree of depth
$d=\lceil\log_2N\rceil$, the standard elementary relative-error model
$\lvert\delta\rvert\leq u$, without underflow or overflow, gives the
conservative exact bound
$[(1+u)^d-1]\sum_{j=1}^N\lvert a_j\rvert$ for summation error.
This follows by bounding each leaf's product of at most $d$ relative factors.
It still bounds summation of the given $a_j$, not the error in constructing
them. A first-order $du$ replacement is unnecessary here. Completing a missing
error component must be justified independently; changing a criterion only
to admit a residual provides no validation.

Third, a boolean statement $\lvert r_E\rvert\leq b$ is unstable when its
uncertainty spans the threshold. With certified residual uncertainty $u_r$,
only $\lvert r_E\rvert+u_r\leq b$ establishes acceptance; when
$\lvert r_E\rvert-u_r>b$ it establishes failure; the intervening case is
unresolved. Comparing a small positive bound with a much larger absolute
comparison tolerance can be vacuous even if nothing is known to disagree.
These questions concern classification and detection, not necessarily energy
transfer. The exact nulls in \eqref{eq:locked} and \eqref{eq:ideal} settle
those ideal equations but do not retrospectively certify any approximate
calculation or unknown implementation.

Three unresolved accuracy questions must retain their own conditions. At a
held or locked port with nonzero applied torque, a formation-error bound must
cover the work error caused by subtracting nominally equal rates; a bound
proportional only to the resulting power can collapse to zero. For the regular
finite circuit, the uncertainty of each work integral must be established
independently of cancellation in the summed residual. For the two separately
loaded returns, the work uncertainties and the voltage-integral uncertainties
require separate statements on their own prepared trajectories. Exact
expressions supplied here determine the model quantities; they do not supply
a missing uncertainty enclosure for another evaluation or measurement.

Complete power-zero information also leaves short transfers to be resolved.
In \eqref{eq:reset}, $V_0\ne0$ gives negative power throughout every finite
interval, with no finite power zero. Nevertheless its signed work is
$-CV_0^2(1-e^{-2T/(RC)})/2$, which remains substantial when $T$ exceeds
the relaxation scale. A brief, same-sign startup transfer can therefore be
missed even if every sign-changing root is known. Independently checking the
port integrals and their fastest time dependence remains necessary.

Endpoint accuracy is a separate issue when a small change is obtained from
two large stores. For a capacitor with true endpoint voltage $V$ and voltage
error $\delta V$, its exact energy error is
\begin{equation}
 \delta E_C=CV\,\delta V+\tfrac12C(\delta V)^2.
 \label{eq:endpoint-error}
\end{equation}
The error in the interval change is the final value of this expression minus
its initial value. It can change the signed residual even when every work
integral barely changes. Both endpoint states and each port work require
independent accuracy statements. Improving one calculation does not erase
the earlier signed discrepancy or certify a physical model error.

For the illustrative $C_s=1$ F rail, $V_s=100$ V and a positive voltage
error $\delta V_s=1/100$ V give the single-endpoint error
\begin{equation}
 \delta E_s=100\frac1{100}
             +\frac12\left(\frac1{100}\right)^2
          =\frac{20001}{20000}\,\mathrm J.
 \label{eq:rail-endpoint-error}
\end{equation}
It exceeds the finite-actuator departure in \eqref{eq:lag-discrepancy}.
Cancellation between initial and final rail errors requires established
correlation; it cannot be inferred from similar displayed voltages.
The complete supply voltage–current product at an external port and the
difference of two internal rail stores are different measurement choices.
Each retains its actual boundary and all preparation work. The finite
budgets in \eqref{eq:drag-uncertainty}, \eqref{eq:thermal-uncertainty},
and \eqref{eq:lag-endpoint-uncertainty} connect specific signals to required
error scales; the general remainder uses \eqref{eq:residual-uncertainty}.

Finite-circuit work uncertainty, finite voltage-integral uncertainty, and
finite compound ratio uncertainty remain separate. As explicit illustrative
engineering decision limits, one may declare
\begin{align}
 b_W&=\frac{1}{5000000}\,\mathrm J
          +\frac{1}{500000}\sum_j\lvert W_j\rvert,\\
 b_\Psi&=\frac{1}{50000000}\,\mathrm{V\,s}
          +\frac{1}{500000}\sum_l\lvert\Psi_l\rvert.
 \label{eq:decision-limits}
\end{align}
The second sum covers the three readouts and the two separately defined
copper-drop voltage integrals. These fixed criteria are not error enclosures.
Uncertainty for a fixed-output circuit and for two separately loaded returns
are separate questions; checking one cannot certify the other. A joule discrepancy must
not be added to a volt-second discrepancy. Different integration estimates
may disagree while an equation-based energy residual is small through
cancellation. Power-zero locations and maximum-port switches require complete
root reasoning for the continuous functions; a collection of sign brackets
alone is not such a proof, and an identically zero interval is not a set of
isolated crossings. Sensitivity evidence is not a rigorous enclosure or a
hardware model-error estimate. An uncertainty interval for a denominator
that contains zero leaves its ratio unresolved. None of these unresolved
accuracy questions is closed merely by the exact identities of a different
idealization.

## Physical scope

The mechanical derivation assumes parallel-axis rigid pitch geometry,
compatible assembly, constant centre radius, equal loading, and zero pin
couple. Ravigneaux arrangements require further independent mesh equations;
helical or nonparallel-axis motion requires additional degrees of freedom.
Bodies with flexure, true restitution, combined backlash and Euler forcing,
and rate reversals in frictional mechanisms require their own constitutive
and event treatments. The kinematic count identities themselves remain valid
through reversals, while absolute counts and friction signs need interval
splits. Tooth counts are integers; irrational rate ratios are allowed by the
linear constraints and are not a new energy law.

The lead-out model uses massless coupling members and a resolved axial torque
path only. It omits clearance, compliance, encoder quantization and direction
ambiguity, bearing friction, joint-force and bending work, and the energetic
cost of the ground-phase device. Its illustrative large articulation is not
a buildability claim. A combined train and readout must recompute the forces
and trajectory under the actual load. Conditions such as a zero pin flow
follow from geometry; force and work magnitudes depend on the selected
inertias and torques. Inertial contributions scale linearly with their mass
coefficient for a fixed prescribed trajectory, and quasistatic terms scale
linearly with applied torque; a loaded trajectory need not retain either
scaling when those parameters change.

For the windings, physical ground paths, nonlinear core and thermal behavior,
reactive switching supplies, and the complete preparation and reset cycle
retain their local open energy questions. The finite-reference equations add
explicit sensor and actuator stores, conversion loss, holding error, and supply
cutoff. Their effective feedback and nonloading transduction remain assumptions;
the signed physical model discrepancy is unmeasured. The passive limit and
the clamped limit retain their distinct drives and preparation conditions.
A calibrated comparison includes the source, receiver, probe, all returns,
each energy store, and instrument loading on the same event-split interval.
Any unexplained positive or negative remainder remains an open result with its
magnitude, conditions, uncertainty, and completed checks. An expected balance
does not determine the outcome of that investigation.

# Conclusion

The two-U-joint planet connection gives a four-shaft apparatus with two
independent speeds and two independent steady loads. Contact constraints and
attached free bodies determine its complete operating family. In the
ring-held one-receiver control, the four signed one-second works are
$(7,-14/3,0,-7/3)\,\mathrm J$; the ring carries a nonzero reaction and the
receiver changes the carrier's work by $7/3\,\mathrm J$.
The ideal two-transformer and four-tap constructions reproduce all four
voltage/current products with the same loaded planet terminal.

The construction identifies what a correspondence must preserve. Correct
joint phasing concerns an actual moving plane; a grounded phase actuator
requires its own supply. A common electrical zero leaves complete port
voltages unchanged; a moved receiver return changes the connected circuit.
Finite magnetic storage maps to an elastic state and capacitance to inertia.
The specified compliant models preserve the corresponding powers and stores,
while rank and preparation conditions limit reduction to the rigid train.

Coin and spoke controls make fixed and relative counts accessible without
assigning work from a count. The dimensioned support comparison and finite
locking controls give bounded physical models. Switched tap and capacitor
connections expose a further distinction: the same terminal history can hide
different prepared stores, and equal endpoints need not fix individual work
destinations. Receiver work follows the actual path and its source, switch,
probe and controller products.

The appendices retain the compound ratios, supplied references, singular
preparations and complete event arguments that establish the scope of these
results. Their finite actuator control gives the stated exact departure from
an ideal receiver endpoint; their prepared limits can retain energy while a
terminal current tends to zero. Each is a result for its declared equations.
[*Finite Transfers and Open Energy Balances*][companion] develops the
joint, winding, material and observation questions needed to test physical
realizations. Independent work and endpoint uncertainty determine whether a
measured signed residual is resolved; its physical magnitude and sign remain
unassigned until those observations exist.


\appendix

# Supplied references, prepared limits, and event proofs
\label{sec:reference-appendix}

## An accelerating reference is not a voltage coordinate shift

For the finite rotational analogue, the relative kinetic-plus-elastic store is
$K^f+U=K^0-\Omega H+J\Omega^2/2+U$, with $J=\sum J_j$ and
$H=\sum J_j\omega_j$. Its additional Euler power is
$-\dot\Omega(H-J\Omega)$, without the centrifugal potential convention
used for $E^f$ in \eqref{eq:frame-store}. Either convention is valid when its
terms are retained consistently. Relative deformations and mobility losses
are unchanged under common rigid rotation.

A common electrical coordinate shift, however, also shifts $V_O$ and leaves
all actual capacitor voltage differences and physical energies unchanged.
The difference between the mechanical relative store and that unchanged
physical electrical store is exactly
\begin{equation}
 \Delta E_{\rm ref}=-\Omega H+\tfrac12J\Omega^2.
 \label{eq:reference-obstruction}
\end{equation}
An effective electrical expression built from shifted node values relative to
an unshifted fictitious zero can imitate it, but then represents a virtual
store rather than the actual grounded capacitors. Equation
\eqref{eq:reference-obstruction} therefore obstructs realization by a common
coordinate shift alone. It does not exclude a different physical circuit
with driven returns and separately supplied compensation currents.

## An active capacitor cell and its reference driver

Place a capacitor between physical nodes $A$ and $R$, and let
$w=V_A-V_R$. Its boundary excludes two floating current sources, their
controllers, and a separate driver setting $V_R$. Prescribe
\begin{equation}
 C=J/\alpha^2,\quad V_R=\alpha\Omega,\quad
 I_d=\tau/\alpha,\quad I_e=-C\dot V_R,\qquad
 C\dot w=I_d+I_e.
 \label{eq:active-cell}
\end{equation}
Both currents are positive from $R$ into $A$. The independent mechanical law
is $J\dot\omega=\tau$. Compatible initial data imply
$V_A=\alpha\omega$ and $w=\alpha(\omega-\Omega)$ by differentiation of
\eqref{eq:active-cell}. The complete physical source powers and store are
\begin{equation}
 P_d=wI_d=\tau(\omega-\Omega),\qquad
 P_e=wI_e=-J\dot\Omega(\omega-\Omega),\qquad
 E_C=\tfrac12Cw^2=\tfrac12J(\omega-\Omega)^2.
 \label{eq:active-powers}
\end{equation}
The Euler counterpart is supplied or absorbed by its own active source.
Summing KCL at the floating source and capacitor returns gives zero net
bias current $I_b$ from the reference driver. This cancellation does not set
either floating source's complete power to zero.

![Schematic active reference cell. The two floating sources drive the capacitor between $A$ and $R$; their supplies lie outside the capacitor boundary. A separate $R_d,C_d$ driver sets the physical reference potential. The net bias current is zero in this ideal floating cell, while the driver capacitor and resistor still require their own input work.](figures/active-reference.pdf){#fig:active width=96%}

\FloatBarrier

The driver boundary in Figure \ref{fig:active} contains a capacitor $C_d$
from $R$ to the fixed return $O$ and a resistor $R_d$ from its command node
to $R$. For zero bias current, define
\begin{equation}
 \begin{aligned}
 I_r&=C_d\dot V_R,& u_r&=V_R+R_dI_r,\\
 P_r&=u_rI_r,& P_{h,r}&=-(R_dI_r)I_r,\\
 P_b&=-V_RI_b=0,& E_r&=\tfrac12C_dV_R^2.
 \end{aligned}
 \label{eq:reference-driver}
\end{equation}
Its command source and heat reservoir are external. The state law
$C_d\dot V_R=(u_r-V_R)/R_d$ realizes the prescribed path when initialized
compatibly. Each driver work is the integral of its own product in
\eqref{eq:reference-driver}; driver energy is evaluated from $V_R$.

As an exact reference-only control choose $J=1\,\mathrm{kg\,m^2}$,
$\alpha=1\,\mathrm V/(\mathrm{rad/s})$, $C=1\,\mathrm F$,
$\tau=0$, and $\Omega=2t\,\mathrm{rad/s^2}$ on $[0,1]\,\mathrm s$,
with zero initial physical and reference rates. Then $V_A=0$,
$V_R=2t\,\mathrm{V/s}$, $w=-2t\,\mathrm{V/s}$, and $I_e=-2$ A.
Choose $C_d=1/200$ F and $R_d=3/4\,\Omega$; consequently
$I_r=1/100$ A and $u_r=2t\,\mathrm{V/s}+3/400$ V. Direct integration
of the separate source and heat products yields

| Boundary | Separate signed works on $[0,1]$ s, J | Initial store, J | Final store, J |
|----------------------|-------------------------------------------------|-----------------:|----------------:|
| Capacitor | $W_d=0$, $W_e=\int_0^1 4t\,dt=2$, $W_b=0$ | $0$ | $2$ |
| Mechanical relative energy | $W_{\rm shaft}=0$, $W_{\rm Euler}=2$ | $0$ | $2$ |
| Reference driver | $W_r=403/40000$, $W_{h,r}=-3/40000$, $W_b=0$ | $0$ | $1/100$ |

: Exact active control. Polynomial integrands in the table use numerical SI coordinates. Every boundary has zero energy residual. The combined capacitor and driver finish with $201/100$ J, supplied by independently integrated works.

Disabling $I_e$ is a distinct control. At zero torque the capacitor remains
uncharged and $V_A$ follows $V_R$; its final energy is zero, whereas the
specified mechanical relative energy is 2 J. Electrical minus mechanical
store is $-2$ J. Both models separately balance, so this is a failed state
and port correspondence, not an unexplained energy deficit.
Finite changes of torque or reference acceleration preserve capacitor voltage
and both mechanical rates; powers may jump but this control has no impulses.
The current-source internals are outside the cell boundary. Their finite
supply model is specified next rather than assigned zero work.

Whether a physical reference circuit reproduces these individual works and
stores remains open [OP-TRF-12]. The reference-only control offers a direct
observation: prescribe the finite ramp, record $w$, $I_d$, $I_e$, the driver
voltage and current, and evaluate both capacitor endpoints. Its 2 J receiver
change specifies the gross correspondence. The finite-actuator prediction
and endpoint bound in \eqref{eq:lag-endpoint-uncertainty} give a smaller
comparison with explicit calibration requirements. The individual products
must be integrated over the same ramp and its preparation. Supply endpoints
are additionally needed when the supply lies inside the chosen boundary.
The measured work and store differences, and any unexplained energy remainder,
currently have unknown signs and magnitudes. A measured agreement or a
surviving discrepancy would distinguish the alternatives; neither follows
from the prescribed-source calculation. Finite actuation below gives an exact
example of a signed departure that such an observation can resolve.

## A compound reference supplied by a finite rail

Restore all four node coordinates, including the held member and its
capacitance. Replace their grounded capacitor returns by a physical node $R$.
Write $r=V_R-V_O$, $w=v-r\mathbf1$, and retain the complete incidence matrix
$B$, for which $B^T\mathbf1=0$. Four floating actuators inject
$I_{{\rm ext},X}(v,i,t)$ and four separate compensating sources inject
$-C_X\dot r$ from $R$. The receiver boundary contains these capacitors,
the two winding pairs, and their four resistors. Its state laws are
\begin{equation}
 \mathsf C\dot w=I_{\rm ext}-Bi-\mathsf C\mathbf1\dot r,
 \qquad \mathsf L\dot i=B^Tw-\mathsf Ri.
 \label{eq:active-network}
\end{equation}
The actuators implement the original source and receiver current laws as
commands. Their transfers are regenerative converter outputs; the original
source-resistance and load coefficients no longer denote additional physical
heat exports at this receiver boundary. The winding resistors remain physical.
An actuator at the held member supplies the reaction needed to maintain its
absolute potential. Omitting it after restoring that coordinate would change
the model.

Substituting $v=w+r\mathbf1$ in \eqref{eq:active-network} recovers
\eqref{eq:network-E}. For selected node $s$, a physical feedback reference is
$r=\sigma v_s$, initialized compatibly and driven by
$\dot r=\sigma\dot v_s+\dot\sigma v_s$. Here $\dot v_s$ comes from the
instantaneous KCL state equation. Constant $\sigma=1$ represents that member's
frame; $\sigma=0$ represents ground. A continuous change of $\sigma$ changes
the physical reference, including the $\dot\sigma v_s$ contribution.

The receiver's twelve signed powers and independent stores are
\begin{align}
 P_{a,X}&=w_XI_{{\rm ext},X},&
 P_{e,X}&=-w_XC_X\dot r,&
 P_{h,j}&=-(R_ji_j)i_j,\\
 E_{\rm rec}&=\tfrac12w^T\mathsf Cw+\tfrac12i^T\mathsf Li,
 &&X\in\{A,B,C,P\},\quad j=1,\ldots,4.
 \label{eq:active-boundary}
\end{align}
Multiplying \eqref{eq:active-network} by $w^T,i^T$ proves its balance.
Under the finite map the first eight powers become the individual shaft
and Euler products; the four heat powers become mobility losses. The store
is relative kinetic plus elastic energy, not the centrifugal-effective
store $E^f$ of \eqref{eq:frame-store}. Every signed receiver work is
integrated on its own stage before internal supply transfers are combined.

Use the driver \eqref{eq:reference-driver} with $C_d=1/200$ F and
$R_d=3/4\,\Omega$; it is additional to the capacitor already included at
node $C$. Nine ideal isolated bidirectional converters supply the eight
floating actuators and the driver's command branch. Let $\Pi_j$ be each
converter's signed output power: the eight $P_{a,X},P_{e,X}$ and $P_r$.
Their common rail is a capacitor $C_s=1$ F with initial voltage $V_s=100$ V.
The constitutive converter law is $I_{{\rm in},j}=\Pi_j/V_s$ while $V_s>0$.
A specified controller conductance $G_q=1/1000$ S also loads the rail.
Rail KCL and its exact solution for $\xi=V_s^2$ are
\begin{align}
 C_s\dot V_s&=-\sum_{j=1}^9\frac{\Pi_j}{V_s}-G_qV_s,\\
 \xi(t)&=e^{-\lambda_q(t-t_0)}\xi(t_0)
 -\frac2{C_s}\int_{t_0}^t e^{-\lambda_q(t-s)}\sum_j\Pi_j(s)\,ds,
 \qquad \lambda_q=2G_q/C_s.
 \label{eq:supply-state}
\end{align}
This is a capacitor-current law, not an energy residual used to determine
a trajectory. The nine rail works are $-\int\Pi_jdt$, its controller heat
work is $-\int V_s(G_qV_s)dt$, and its endpoints are $C_s\xi/2$.
Positivity of the exact expression for $\xi$ is the supply-feasibility
condition. No universal nondepletion claim follows from a balanced receiver.

On any constant-connection interval with constant $\sigma$, the underlying
state is \eqref{eq:matrix-state}, and every $\Pi_j$ is a quadratic form.
Augmenting its outer-product coordinates with $\xi$ makes
\eqref{eq:supply-state} a constant linear system; its separate work
integrals follow from $T\varphi_1$ just as in \eqref{eq:matrix-work}.
Polynomial reference changes on a fixed underlying topology add finite
polynomial coordinates to these products. Time-dependent receiver conductances
still require their own path solution; the constant-matrix expression is not
silently applied to them.

The rail has an explicit preparation on $[-1,0]\,\mathrm s$ with receiver
and controller disconnected. A 100 A charging source through 1 $\Omega$
gives $V_s(t)=(100\,\mathrm V)(t+1\,\mathrm s)/(1\,\mathrm s)$ and command
$u_s=V_s+100$ V. Its separately integrated source and heat works are
$15000$ J and $-10000$ J, while its endpoint stores are zero and 5000 J.
Combining the prepared rail, driver, and receiver boundaries cancels each
converter transfer only after its two signed integrals have been evaluated.
The remaining operation exports are four winding heats, driver heat, and
controller heat, and all three kinds of endpoint storage remain.
An ideal converter and a chosen controller shunt do not quantify real
conversion efficiency, bandwidth, sensor demand, or hardware discrepancy.

For a linear reference change from $r_-$ to $r_+$ over $[t_e,t_e+\delta]$,
let $\Delta r=r_+-r_-$. Independent driver integrals give
\begin{align}
 W_{h,r}&=-\int_{t_e}^{t_e+\delta}R_d(C_d\dot r)^2dt
          =-\frac{R_dC_d^2(\Delta r)^2}{\delta},\\
 W_r&=\int_{t_e}^{t_e+\delta}(r+R_dC_d\dot r)C_d\dot r\,dt
      =\tfrac12C_d(r_+^2-r_-^2)
             +\frac{R_dC_d^2(\Delta r)^2}{\delta}.
 \label{eq:reference-jump}
\end{align}
The endpoint store change is evaluated from $C_dr^2/2$ and gives zero
residual for every positive $\delta$. For $r_-=0$, $\Delta r=1$ V and
the stated driver values, durations $1/1000$, $1/2000$, $1/4000$ s give
heat works $-3/160$, $-3/80$, $-3/40$ J and command works
$17/800$, $1/25$, $31/400$ J; every store increase is $1/400$ J.
At fixed positive $R_d,C_d$ and nonzero $\Delta r$, heat magnitude diverges
as $\delta\to0$. This driver supplied from a finite rail has no finite-energy
instantaneous-reference limit. It is a precise model obstruction, compatible
with the constructive finite-rate realization above.

## Finite sensing, actuation, and conversion

The physical reference can have finite response while every constituent has
its own specified energy law. Retain the four receiver capacitors, winding
pairs, and winding resistors. Let $j_{a,X}$ and $j_{e,X}$ be the actual
actuator and compensation currents from $R$ into node $X$. The receiver obeys
\begin{equation}
 \mathsf C\dot w=j_a+j_e-Bi,\qquad
 \mathsf L\dot i=B^Tw-\mathsf Ri,\qquad v=w+r\mathbf1.
 \label{eq:finite-reference-receiver}
\end{equation}
All four node voltages are now dynamic. In particular, a finite holding
servo may leave a nonzero held-member voltage.

Nine RC buffers sense the four absolute voltages, four winding currents, and
reference-driver current. Write $\kappa_i=1/10\,\mathrm{V/A}$ for current
transduction. For each sensor, $\xi$ is its supplied input voltage and $z$
its capacitor voltage. With $C_z>0$, $\tau_z>0$, and $R_z=\tau_z/C_z$,
\begin{equation}
 I_z=(\xi-z)/R_z,\qquad C_z\dot z=I_z,
 \qquad E_z=\tfrac12C_zz^2.
 \label{eq:sensor-law}
\end{equation}
The inputs are the respective $v_X$, $\kappa_i i_j$, and $\kappa_i I_r$,
limited when necessary to a fraction $\kappa_v$ of the positive rail voltage:
$\mathcal S(x,V_s)=\max(-\kappa_vV_s,\min(x,\kappa_vV_s))$.
Each buffer is powered by a converter. The transducer itself is stipulated
nonloading; its physical loading error is still unquantified. Hats below
denote the sensor voltages, divided by $\kappa_i$ for a current observation.

For held member $H$ and free member $F$, the four external-current commands
are the explicit laws
\begin{align}
 J_{a,F}&=-(G_O+G_P+G_R)\widehat v_F
                  -G_C(\widehat v_F-\widehat v_C),\\
 J_{a,C}&=(u-\widehat v_C)/R_s
                  +G_C(\widehat v_F-\widehat v_C),\\
 J_{a,H}&=\widehat i_{H1}-G_H\widehat v_H,&J_{a,P}&=0,
 \qquad G_H=1\,\mathrm S.
 \label{eq:finite-current-commands}
\end{align}
Here $i_{H1}$ is the held member's primary-winding current. For the selected
sensor $z_s$, define $r_t=\sigma z_s$ and
$\dot r_t=\sigma\dot z_s+\dot\sigma z_s$. Here $\sigma$ is continuous and
piecewise differentiable, with bounded derivative on each finite transition.
An abrupt nonzero jump of $r_t$ would require a separate event model.
The four compensation commands
are $J_{e,X}=-C_X\dot r_t$. These source and load coefficients determine
regenerative commands; the corresponding passive resistors are not also
present as receiver heat paths.

Each of the eight actual currents has a separate inductor $L_a>0$ and
resistor $R_a\geq0$. Its source commands
\begin{equation}
 e=\mathcal S\!\left(w_X+R_aj+
               \frac{L_a}{\tau_a}(J-j),V_s\right),\qquad
 L_a\dot j=e-w_X-R_aj,
 \label{eq:actuator-law}
\end{equation}
where $J$ is the corresponding command. Without saturation this gives
$\tau_a\dot j=J-j$ exactly. The local feedback is a declared constitutive
law; detailed switching electronics remain unspecified.

The driver command has its own capacitor $C_u>0$ and voltage $u_r$. Set
$u_t=\mathcal S(r_t+R_dC_d\dot r_t,V_s)$ and
\begin{equation}
 J_u=\widehat I_r+\frac{C_u}{\tau_a}(u_t-u_r),\qquad
 C_u\dot u_r=J_u-I_r,\qquad
 I_r=\frac{u_r-r}{R_d},\qquad C_d\dot r=I_r.
 \label{eq:command-driver}
\end{equation}
The receiver and floating actuators have zero net bias current at $R$ by
their complete KCL, leaving the stated RC reference driver. Its capacitor
remains additional to the carrier's receiver capacitance.

Each boundary's signed powers and independent store are now explicit:

| Boundary | Individual inward powers | Store |
|-------------------|------------------------------------------------------|----------------------|
| Receiver | $w_Xj_{a,X}$, $w_Xj_{e,X}$, $-R_ji_j^2$ | $w^T\mathsf Cw/2+i^T\mathsf Li/2$ |
| Each actuator | $ej$, $-w_Xj$, $-R_aj^2$ | $L_aj^2/2$ |
| Each sensor | $\xi I_z$, $-R_zI_z^2$ | $C_zz^2/2$ |
| Command stage | $u_rJ_u$, $-u_rI_r$ | $C_uu_r^2/2$ |
| Reference driver | $u_rI_r$, $-R_dI_r^2$ | $C_dr^2/2$ |

: Finite reference boundaries. Every resistor power is a separate heat export $-T\dot S$. The voltage and current in each product belong to the same physical port.

Eighteen converters supply the eight actuator sources, nine sensor buffers,
and command stage. Let $\Pi_j$ be one of their output powers from the table.
For a chosen illustrative efficiency $0<\eta_c\leq1$, specify
\begin{equation}
 P_{{\rm in},j}=
 \begin{cases}\Pi_j/\eta_c,&\Pi_j\geq0,\\
 \eta_c\Pi_j,&\Pi_j<0,
 \end{cases}
 \quad I_{{\rm in},j}=P_{{\rm in},j}/V_s,
 \quad P_{{\rm heat},j}=-(P_{{\rm in},j}-\Pi_j).
 \label{eq:converter-law}
\end{equation}
The converter has empty storage coordinates and the three separately
integrated powers $V_sI_{{\rm in},j}$, $-\Pi_j$, and $P_{{\rm heat},j}$.
Their constitutive products sum to zero in each sign interval. This law
specifies conversion loss independently of an energy remainder.
For the rail, retain $C_s=1$ F and $G_q=1/1000$ S, with
\begin{equation}
 C_s\dot V_s=-\sum_j I_{{\rm in},j}-G_qV_s,
 \qquad E_s=\tfrac12C_sV_s^2.
 \label{eq:nonideal-rail}
\end{equation}
Each rail transfer is $-V_sI_{{\rm in},j}$ and its controller heat is
$-G_qV_s^2$. Preparation from zero uses the independently integrated
charging path already given, with a general final voltage $V_0$ if desired.
For duration $T_p=1$ s and charging resistance $R_p=1\,\Omega$, its current
is $I_p=C_sV_0/T_p$, source work is
$C_sV_0^2/2+R_pC_s^2V_0^2/T_p$, and heat work is
$-R_pC_s^2V_0^2/T_p$. The endpoint store is $C_sV_0^2/2$.

The physical stages and finite receiver changes remain those specified
earlier. Choose initial receiver, sensor, command, driver, and actuator
states explicitly, zero for an unenergized preparation. For each stage
$[t_m,t_{m+1}]$, integrate every product in the table and
\eqref{eq:converter-law}–\eqref{eq:nonideal-rail} separately, and evaluate
every displayed store at both endpoints. Direct multiplication of the state
laws proves each differential balance; cancellation of already integrated
internal transfers then leaves four winding, eight actuator, nine sensor,
eighteen converter, one driver, and one controller heat export for the combined
boundary. Its stores include all receiver, sensor, actuator, command, driver,
and rail states. Bounded command or limiter changes preserve those states;
powers can change discontinuously. A supply cutoff ends this operating model
and does not specify a subsequent shutdown or reset.

For example, declare cutoff at $V_s=1/100$ V. The remaining rail store is
$1/20000$ J. With zero drive and every other state zero, the controller-only
law gives $V_s=V_0e^{-G_qt/C_s}$ and
\begin{equation}
 t_{\rm cut}=\frac{C_s}{G_q}\ln\frac{V_0}{1/100\,\mathrm V},\qquad
 W_q(0,T)=-\frac{C_sV_0^2}{2}(1-e^{-2G_qT/C_s}).
 \label{eq:rail-cutoff}
\end{equation}
This independently integrated heat matches the constitutive endpoint change.
One exact illustrative initial voltage is $V_0=2001/200000$ V.
With active drive, receiver and actuator stores at cutoff generally remain
as well; the cutoff state and its work require that drive's actual path.

Parameter distinctions include $\tau_z,\tau_a\in
\{1/10000,1/1000,1/100\}$ s,
$\eta_c\in\{1,19/20,4/5\}$, all four fixed references and a continuous
reference change, both receiver connections, and edge durations
$\{1/4000,1/1000,1/100\}$ s. The independent voltage-limit fractions
$\{1/200,1/20,9/10\}$ and rail preparations
$V_0\in\{1/10,1,10,100\}$ V change the actual commands and available
operating interval. An illustrative joint approach uses
$\tau_z=\tau_a=\epsilon^2/1000$ s,
$L_a=\epsilon/10000$ H, $R_a=\epsilon/10\,\Omega$,
$C_z=\epsilon^2/1000000$ F, $C_u=\epsilon/100000$ F, and
$\eta_c=1-\epsilon/20$, with $0<\epsilon\leq1$. It keeps the receiver,
rail, and RC reference-driver coefficients fixed. These definitions alone
establish no unrestricted convergence through saturation or supply depletion.
For arbitrary finite parameters, the nonlinear path integrals remain
unevaluated here; no ordering or numerical error bound is assigned to them.

## An exact energy departure caused by finite actuation

A single-cell control isolates actuation while prescribing the reference
$r=at$, with constant $a>0$ on $[0,T]$. Set shaft torque to zero and give
the compensation actuator the command $J=-Ca$. Retain its positive $L_a$,
nonnegative $R_a$, and response time $\tau_a=\tau>0$ from
\eqref{eq:actuator-law}, without voltage saturation. From zero current and
capacitor voltage, the independent current and capacitor laws give
\begin{equation}
 j=-Ca(1-e^{-t/\tau}),\qquad
 w=-a[t-\tau(1-e^{-t/\tau})],\qquad
 e=w+R_aj+L_a\dot j.
 \label{eq:lag-state}
\end{equation}
The reference driver is the prescribed-path RC driver above, outside the cell
and actuator boundaries. This control does not presume that the full sensing
model follows the same path.

Let $b=e^{-T/\tau}$ and
$\mathcal Q=R_aC^2a^2[T-2\tau(1-b)+\tau(1-b^2)/2]$.
Direct integration of each physical product gives
\begin{align}
 W_C&=\int_0^T wj\,dt=\tfrac12Ca^2[T-\tau(1-b)]^2,\\
 W_{a,\mathrm{out}}&=\int_0^T(-wj)dt=-W_C,&
 W_{a,h}&=\int_0^T(-R_aj^2)dt=-\mathcal Q,\\
 W_{a,s}&=\int_0^T ej\,dt
 =\tfrac12Ca^2[T-\tau(1-b)]^2+\mathcal Q
       +\tfrac12L_aC^2a^2(1-b)^2.
 \label{eq:lag-works}
\end{align}
The last line follows by expanding the specified $e$ and integrating its
three products, not by solving an energy remainder. Independent initial
stores are zero, and final stores are
$Cw(T)^2/2$ and $L_aj(T)^2/2$. Both residuals are zero. The current and
capacitor voltage remain continuous at command changes; no impulse appears.
All expressions have zero numerical integration residual. Physical sensor
loading, converter electronics, and component discrepancy remain unmeasured.

The ideal mechanical relative store under this zero-torque reference is
$Ca^2T^2/2$. Consequently the signed electrical-minus-mechanical difference is
\begin{equation}
 \delta E=\frac{Ca^2}{2}
 \left([T-\tau(1-e^{-T/\tau})]^2-T^2\right)<0.
 \label{eq:lag-discrepancy}
\end{equation}
The strict inequality follows from
$0<\tau(1-e^{-T/\tau})<T$ for $T>0$. With illustrative
$C=1$ F, $a=2\,\mathrm{V/s}$, $\tau=1/10$ s, and $T=1$ s,
the final voltage is $w(1\,\mathrm s)=-(9+e^{-10})/5$ V, and
the receiver finishes with $(9+e^{-10})^2/50$ J instead of 2 J.
Its signed departure from the ideal counterpart is
$[(9+e^{-10})^2-100]/50$ J (approximately $-0.380$ J).
The separately supplied reference driver still
has its own earlier works and store; it is not included a second time here.

Capacitor voltage and calibrated capacitance therefore provide a direct
first observation of finite actuation. If
$|C-\widehat C|\leq u_C$ and $|w-\widehat w|\leq u_w$, the exact
single-endpoint bound is
\begin{equation}
 u_{E_C}\leq\frac{u_C}{2}(|\widehat w|+u_w)^2
       +\widehat C\left(|\widehat w|u_w+\frac{u_w^2}{2}\right).
 \label{eq:lag-endpoint-uncertainty}
\end{equation}
For illustrative $\widehat C=1$ F, $u_C=1/100$ F,
$|\widehat w|\leq2$ V and $u_w=1/100$ V, this gives
$80501/2000000$ J per endpoint. Two such observations of the finite and
ideal final states have combined bound $80501/1000000$ J. A proposed
$1/10$ J total comparison bound leaves $19499/1000000$ J for reference
setting, timing, and other errors; it separates the finite departure from
zero if those requirements are met. The ideal comparator can alternatively
be calculated from independently bounded $C,a,T$ rather than observed as a
second capacitor state. Initial states require their own bounds if the
comparison uses changes instead of final stores.

For the complete energy observation, integrate each actuator source product,
the separately supplied reference driver, and actual external heat, then
evaluate actuator, capacitor, controller, and thermal endpoints. This
full-boundary residual has its own uncertainty and may agree with zero or
retain either sign. The finite-minus-ideal store difference above is a
determined comparison, not that residual. Keeping the supply external and
measuring its complete voltage–current product avoids subtracting two large
rail stores to obtain its delivered work. Bringing the rail inside instead
retains both endpoints and its preparation, as specified earlier.

For the complete finite-reference model, define on each matching interval
\begin{equation}
 \delta W_j=W_{j,\mathrm{rec}}-W_{j,\mathrm{mech}},\qquad
 \delta E(t)=E_{\mathrm{rec}}(t)-E_{\mathrm{mech}}(t).
 \label{eq:correspondence-differences}
\end{equation}
The comparator uses the same dimensional map and relative-store convention.
Its mechanical reference is $\Omega=\sigma\omega_s$, where $s$ denotes the
selected mechanical member; the receiver uses its actual $r$.
The difference $r-\alpha\Omega$ is a separately observable tracking error.
Integrate the comparator's shaft, Euler, and mobility works separately.
A zero balance
residual within either model does not set these signed differences to zero.
The exact lag control has a determined negative difference; general finite
tracking, holding, and limiter paths may have either sign and need their own
evaluation. Hardware discrepancies remain open with unknown signs and
magnitudes until the local reference experiment is performed.

## A joint finite-to-rigid limit with matched drives

Unity coupling at fixed inductance, resistance, and inertia is not the rigid
algebraic network. A different, explicitly matched family does have that
limit. For $0<\epsilon\leq1$, choose
\begin{equation}
 L_0=\frac3{25\epsilon}\,\mathrm H,\quad k=1-\epsilon^2,\quad
 r_\epsilon=\frac{2\epsilon^2}{25}\,\Omega,\quad
 \mathsf R_X=r_\epsilon\operatorname{diag}(h_X^2,1),\quad
 C_{X,\epsilon}=\epsilon C_{X,0}.
 \label{eq:joint-limit}
\end{equation}
Scale every inertia counterpart, including the orbit and added receiver and
carrier capacitances. The boundary contains all four node capacitors and both
winding pairs. Four ideal voltage clamps prescribe the constant values
$\bar v_X=\alpha\omega_X$ from \eqref{eq:compound-rates}; their currents
are obtained from KCL. Four winding heat exports complete the boundary.
The additional planet clamp is retained even though its limiting current is
zero. These imposed drives are different from a passive load supplied through
the original source resistor.

For either pair abbreviate $h=h_X$, and put
$s=h i_1+i_2$, $d=h i_1-i_2$. With winding voltages $u_1,u_2$, the two
independent voltage laws become
\begin{equation}
 \ell_+\dot s=u_1/h+u_2-r_\epsilon s,\qquad
 \ell_-\dot d=u_1/h-u_2-r_\epsilon d,\qquad
 \ell_+=\frac{3(2-\epsilon^2)}{25\epsilon}\,\mathrm H,\quad
 \ell_-=\frac{3\epsilon}{25}\,\mathrm H.
 \label{eq:limit-modes}
\end{equation}
If $s(0)=0$ and $u_1/h+u_2$ is uniformly bounded on $[0,T]$, its exact
convolution implies $\lvert s(t)\rvert\leq
T\sup\lvert u_1/h+u_2\rvert/\ell_+$. If additionally $d,\dot d$ remain
bounded, the second equation implies
$\lvert u_1/h-u_2\rvert\leq\ell_-\sup\lvert\dot d\rvert+
r_\epsilon\sup\lvert d\rvert\to0$. These are conditional constitutive
limits, not a claim that arbitrary initial data avoid a singular transient.

For the constant clamps, $u_1=hu_2$ and
$u_2=\bar v_P-\bar v_C=:V_2$. Choose compatible initial ideal currents
$i_1(0)=i_{1*}$, $i_2(0)=-h i_{1*}$, hence $s(0)=0$ and
$d(0)=d_*=2h i_{1*}$. The exact solution on $[0,T]$ is
\begin{equation}
 s(t)=A_s(1-e^{-\beta_+t}),\qquad d(t)=d_*e^{-\beta_-t},\qquad
 A_s=2V_2/r_\epsilon,\quad \beta_\pm=r_\epsilon/\ell_\pm.
 \label{eq:limit-state}
\end{equation}
No expansion in $\epsilon$ is used. The inequality
$0\leq1-e^{-x}\leq x$ for $x\geq0$ proves the uniform bounds
\begin{equation}
 \lvert s(t)\rvert\leq\frac{2\lvert V_2\rvert T}{\ell_+},\qquad
 \lvert d(t)-d_*\rvert\leq\lvert d_*\rvert\beta_-T,
 \qquad 0\leq t\leq T.
 \label{eq:limit-bounds}
\end{equation}
Both right sides tend to zero. Independently, the mechanical modal strains
$a_z=z_1/h+z_2$ and $b_z=z_1/h-z_2$ obey
$\dot a_z=2\omega_{PC}-r_\epsilon a_z/\ell_+$ and
$\dot b_z=-r_\epsilon b_z/\ell_-$ at $\alpha=1$ in the stated units.
Their compatible solutions satisfy $a_z=\ell_+s$, $b_z=\ell_-d$,
recovering the same forces from elastic constitutive laws.

Every signed operation work can be integrated before taking a limit.
Define $F_\beta(T)=T\varphi_1(-\beta T)$, equal to
$(1-e^{-\beta T})/\beta$ for $\beta\ne0$ and $T$ at zero. The five
separate primitives needed for one pair are
\begin{align}
 S_1&=\int_0^T s\,dt=A_s(T-F_{\beta_+}),&
 D_1&=\int_0^T d\,dt=d_*F_{\beta_-},\\
 S_2&=\int_0^T s^2dt=A_s^2(T-2F_{\beta_+}+F_{2\beta_+}),&
 D_2&=\int_0^T d^2dt=d_*^2F_{2\beta_-},\\
 S_D&=\int_0^T s d\,dt
     =A_sd_*(F_{\beta_-}-F_{\beta_++\beta_-}).
 \label{eq:limit-primitives}
\end{align}
All $F$ terms in \eqref{eq:limit-primitives} have argument $T$.
The primary and secondary current integrals are
$(S_1+D_1)/(2h)$ and $(S_1-D_1)/2$. Their heat works are individually
$-r_\epsilon(S_2+D_2+2S_D)/4$ and
$-r_\epsilon(S_2+D_2-2S_D)/4$.
For the two pairs assemble the four current integrals into $\mathcal I$.
Each node clamp has work $W_X=\bar v_X(B\mathcal I)_X$ since
$\dot v=0$. Thus the planet clamp's work is included explicitly. The nine
diagnostic products have their own constant velocity factors times these
same independently integrated effort functions; they are not extra inputs.

At each endpoint evaluate
\begin{equation}
 E_{m,X}(t)=\frac{\ell_+s(t)^2+\ell_-d(t)^2}{4},\quad
 U_X(t)=\frac{a_z(t)^2}{4\ell_+}+\frac{b_z(t)^2}{4\ell_-},\quad
 E_C(t)=\frac\epsilon2\sum_XC_{X,0}\bar v_X^2.
 \label{eq:limit-stores}
\end{equation}
For example the bound on $s$ gives
$\ell_+s^2/4\leq V_2^2T^2/\ell_+$, while
$\ell_-d^2/4\leq\ell_-d_*^2/4$. Each store tends to zero, but is
retained at every positive $\epsilon$. Bounded currents and
$r_\epsilon\to0$ make each heat work tend to zero. The planet-clamp
current tends to zero because the two ideal secondary currents cancel.
Uniform effort convergence makes every signed diagnostic work converge to
its own rigid value on $[0,3/2]\,\mathrm s$, for every configuration,
held member, and fixed frame in the compound table. This follows directly
from \eqref{eq:limit-bounds} and the finite number of constant port factors.

Preparation is another explicit interval, $[-T_p,0]$ with $T_p=1/10$ s.
Before reconnecting the network, independently prescribe linear current
ramps $i=fi_*$ in each coupled pair and voltage ramps $v_X=f\bar v_X$
on each capacitor, where $f=(t+T_p)/T_p$. Each winding source has voltage
$(\mathsf L\dot i+\mathsf Ri)_j$ and current $i_j$. Its work, its separate
heat export, and each capacitor charging work are
\begin{equation}
 W_{s,j}=\tfrac12i_{j*}(\mathsf Li_*)_j
             +\frac{T_p}{3}R_ji_{j*}^2,\quad
 W_{h,j}=-\frac{T_p}{3}R_ji_{j*}^2,\quad
 W_{C,X}=\tfrac12 C_{X,\epsilon}\bar v_X^2.
 \label{eq:limit-preparation}
\end{equation}
These follow separately from the products and $\int f\dot fdt=1/2$,
$\int f^2dt=T_p/3$. Independent initial stores are zero; final stores are
$i_*^T\mathsf Li_*/2$ and the charged-capacitor values. Reconnection retains
these voltages and fluxes, with compatible cancelling secondary currents,
so this ideal event has zero state jump and zero impulse. Real reconnection
transients require additional ports. A fixed nonzero initial $s$ would
instead give $\ell_+s^2/4\to\infty$ and falls outside this result.

## Vanishing currents with finite prepared energy

The compatible-data restriction above leaves an important energy question:
which stores survive when the observed currents or work differences approach
zero? The following exact controls determine several alternatives within the
finite constitutive family. Their physical realization retains the open
magnetic and preparation questions already identified.

Write $a_L=3/25$ H and $b_R=2/25\,\Omega$, so
$\ell_+=a_L(2-\epsilon^2)/\epsilon$, $\ell_-=a_L\epsilon$, and
$r_\epsilon=b_R\epsilon^2$. For a fixed nonzero current $s_0$, prepare one
pair with $s_*=s_0\epsilon^p$, $d_*=0$, where $p\geq0$. Its independent
store is
\begin{equation}
 E_{m,*}=\frac{a_Ls_0^2}{4}(2-\epsilon^2)\epsilon^{2p-1}.
 \label{eq:prepared-mode-energy}
\end{equation}
It tends to zero for $p>1/2$, to $a_Ls_0^2/2$ for $p=1/2$, and grows
without bound for $p<1/2$. In particular, $p=1/2$ makes both winding
currents tend to zero while the magnetic energy tends to a positive value.
For $s_0=1$ A this is $3/50$ J. The component inductances change along the
family; a small current alone does not determine the energy of that family.

Enclose the isolated pair and its two resistors, with independently controlled
winding sources and heat reservoirs outside. Prepare it on $[-T_p,0]$, with
$T_p=1/10$ s, $f=(t+T_p)/T_p$ and
$i=f(s_*/(2h),s_*/2)^T$. The source voltages are the independently specified
$u=\mathsf L\dot i+\mathsf Ri$, with
$\mathsf R=r_\epsilon\operatorname{diag}(h^2,1)$. Each signed source and
heat integral is
\begin{equation}
 W_{s,j}=\int_{-T_p}^0u_ji_jdt
   =\frac{\ell_+s_*^2}{8}+\frac{T_pr_\epsilon s_*^2}{12},\qquad
 W_{h,j}=-\int_{-T_p}^0R_ji_j^2dt
   =-\frac{T_pr_\epsilon s_*^2}{12},\quad j=1,2.
 \label{eq:common-mode-preparation}
\end{equation}
The endpoint stores are independently $0$ and $\ell_+s_*^2/4$, giving
zero residual after the four works are combined. The finite ramp changes
current continuously and introduces no impulse. Subsequent reconnection needs
its own compatible state and port treatment. The physical core discrepancy
has unknown sign and magnitude; the exact integration residual here is zero.

For $p=1/2$, the same preparation specifies the supply effort explicitly:
\begin{equation}
 u_2=\frac{a_Ls_0(2-\epsilon^2)}{2T_p\sqrt\epsilon}
       +\frac{b_Rs_0}{2}\epsilon^{5/2}f,
 \qquad u_1=hu_2.
 \label{eq:common-mode-preparation-voltage}
\end{equation}
At fixed $T_p$ the required voltage increases without bound as
$\epsilon\to0$, even while the prepared currents vanish and their store
tends to $3/50$ J for $s_0=1$ A. The limit includes this supply requirement.
It does not claim that a fixed voltage source prepares every member.

One finite member is a more direct electrical investigation. Choose
$\epsilon=1/4$, $s_0=1$ A, $T_p=1/10$ s, and $h=-3/4$, the first
winding ratio of configuration I. Then the constitutive parameters and
prepared state are
\begin{align}
 \mathsf L&=\begin{pmatrix}27/100&-27/80\\-27/80&12/25\end{pmatrix}
              \mathrm H,&
 \mathsf R&=\operatorname{diag}(9/3200,1/200)\,\Omega,\\
 i_*&=\begin{pmatrix}-1/3\\1/4\end{pmatrix}\mathrm A,&
 E_{m,*}&=\frac{93}{1600}\,\mathrm J,\\
 u_1&=-\frac{279}{160}-\frac{3f}{3200}\quad\mathrm V,&
 u_2&=\frac{93}{40}+\frac{f}{800}\quad\mathrm V.
 \label{eq:finite-mode-control}
\end{align}
For each winding $j=1,2$, independently integrating its source and heat
products on $[-1/10,0]$ s gives
\begin{equation}
 W_{s,j}=\frac{2791}{96000}\,\mathrm J,\qquad
 W_{h,j}=-\frac1{96000}\,\mathrm J,
 \qquad E_m(-T_p)=0,
 \quad E_m(0)=\frac{93}{1600}\,\mathrm J.
 \label{eq:finite-mode-works}
\end{equation}
The four works sum to the independently evaluated magnetic increase, with
zero model and numerical integration residuals and continuous currents.
These finite voltages and currents specify a two-channel preparation with
a measurable store target. Conditional measured envelopes $|\widehat u_j|
\leq5$ V and $|\widehat i_j|\leq1$ A, with voltage and current errors
$1/100$ V and $1/1000$ A, give the same $1501/1000000$ J per-source
product bound as the commutation control. To compare the net input with
the $93/1600$ J target at uncertainty $1/100$ J, the sum of the two source
bounds leaves $3499/500000$ J for timing, actual external heat, endpoint
and calibration errors. Whether that budget holds is an independent
measurement question. A physical winding pair needs calibrated finite
coefficients; if they differ from the illustrative matrix, recompute the
prediction. Thermal endpoints and the magnetic-state qualification in
\eqref{eq:physical-endpoints} remain part of that comparison. Later
reconnection is another interval with its own ports and compatible states.

The corresponding changing-drive result follows without an expansion. Set
$S(t)=u_1/h+u_2$, $D(t)=u_1/h-u_2$, and
$\beta_\pm=r_\epsilon/\ell_\pm$. The exact modal solutions are
\begin{align}
 s(t)&=s(0)e^{-\beta_+t}
        +\frac1{\ell_+}\int_0^t e^{-\beta_+(t-u)}S(u)\,du,\\
 d(t)&=d(0)e^{-\beta_-t}
        +\frac1{\ell_-}\int_0^t e^{-\beta_-(t-u)}D(u)\,du.
 \label{eq:general-mode-paths}
\end{align}
On $[0,T]$, these give the exact bounds
\begin{align}
 \lvert s(t)-s(0)\rvert
 &\leq\lvert s(0)\rvert\beta_+T+T\|S\|_\infty/\ell_+,\\
 \lvert d(t)-d(0)\rvert
 &\leq\lvert d(0)\rvert\beta_-T+T\|D\|_\infty/\ell_-.
 \label{eq:general-mode-bounds}
\end{align}
Thus a drive defect $D=\epsilon^\gamma D_0(t)$ contributes at most
$T\|D_0\|_\infty\epsilon^{\gamma-1}/a_L$ to $d$. For $\gamma>1$
this vanishes; for $\gamma=1$ its limit is
$a_L^{-1}\int_0^tD_0(u)du$, under a bounded continuous $D_0$.
An independently chosen differentiable effort $d_t(t)$ is realized exactly by
$D=\ell_-\dot d_t+r_\epsilon d_t$, with compatible initial data.
Cancellation in a particular drive can reduce its integral, so the actual
signed history must be retained.

For an explicit noncancelling defect take zero initial currents and
$u_1/h=D_\epsilon/2$, $u_2=-D_\epsilon/2$ on $[0,T]$, where
$D_\epsilon=D_0\sqrt\epsilon$. Then $s=0$ and
\begin{align}
 d(T)&=\frac{D_0T}{a_L\sqrt\epsilon}
              \varphi_1(-b_R\epsilon T/a_L),\\
 E_m(T)&=\frac{D_0^2T^2}{4a_L}
              \varphi_1(-b_R\epsilon T/a_L)^2.
 \label{eq:vanishing-voltage-store}
\end{align}
The voltage mismatch tends to zero, while the current grows and the store
tends to $D_0^2T^2/(4a_L)$ for $D_0T\ne0$. With $D_0=1$ V and $T=1$ s
that limit is $25/12$ J. With a fixed $D_\epsilon=D_0$ instead, both current
and stored energy diverge.

For the same pair boundary, write $\beta=\beta_-$ and use the already defined
$F_\beta(T)$. Each of the two source products is $D_\epsilon d/4$ and
each heat product is $-r_\epsilon d^2/4$. Their individual works are
\begin{equation}
 W_{s,j}=\frac{D_\epsilon^2}{4r_\epsilon}(T-F_\beta),\qquad
 W_{h,j}=-\frac{D_\epsilon^2}{4r_\epsilon}
                 (T-2F_\beta+F_{2\beta}),\quad j=1,2.
 \label{eq:defect-works}
\end{equation}
The initial store is zero and the final store is
\eqref{eq:vanishing-voltage-store}. Their difference equals the separately
integrated sum. For every fixed $\epsilon>0$, the imposed voltage steps
leave current continuous and introduce no impulse. The finite limiting energy
has thus been reached along a specified drive, with all signed transfers
retained.

## Matching selected works while stores differ

The distinction also occurs in the full two-pair network. Keep the earlier
constant voltage clamps and ideal initial currents, but add $c_\epsilon$ to
the first secondary current and $-c_\epsilon$ to the other, leaving both
primary currents initially unchanged. The added secondary currents cancel
at the shared node, so the initial node-current constraint is compatible.
Denote the two signs by $\sigma_A=1$, $\sigma_B=-1$. The exact differences
from the original clamped solution are
\begin{equation}
 \delta s_X=\sigma_Xc_\epsilon e^{-\beta_+t},\quad
 \delta d_X=-\sigma_Xc_\epsilon e^{-\beta_-t},\quad
 \delta i_{X1}=\frac{\sigma_Xc_\epsilon}{2h_X}
                    (e^{-\beta_+t}-e^{-\beta_-t}).
 \label{eq:hidden-common-mode}
\end{equation}
For fixed $c_\epsilon=c\ne0$, both primary-current differences tend uniformly
to zero on a bounded interval, since their magnitudes are at most
$\lvert c\rvert(\beta_++\beta_-)T/(2\lvert h_X\rvert)$.
Their separately integrated differences are
$\sigma_Xc(F_{\beta_+}-F_{\beta_-})/(2h_X)$; the two secondary differences
still cancel at their node. Every original diagnostic work has a constant
velocity factor multiplying these primary-current or node-current integrals.
Hence those work differences tend to zero, while the individual secondary
currents retain opposite nonzero differences.

The initial common-mode magnetic energy of the two pairs is independently
$\ell_+c_\epsilon^2/2$. The differential-mode contribution remains
$\ell_-\sum_X(d_{X*}-\sigma_Xc_\epsilon)^2/4$.
For fixed $c$, the first term diverges. For
$c_\epsilon=c\sqrt\epsilon$ it tends to $a_Lc^2$, while the differential
and node-capacitor stores tend to zero. Thus even convergence of every named
rigid diagnostic work can coexist with a finite additional store.

No preparation or operation transfer is inferred from those endpoints.
Equation \eqref{eq:limit-preparation} applies to the newly specified initial
current vector, component by component. On operation, for each pair put
$A_s=2V_2/r_\epsilon$, $B_s=s(0)-A_s$, and $d_0=d(0)$. Replace the common-mode
primitives by their direct exponential integrals
\begin{align}
 S_1&=A_sT+B_sF_{\beta_+},\\
 S_2&=A_s^2T+2A_sB_sF_{\beta_+}+B_s^2F_{2\beta_+},\\
 S_D&=d_0(A_sF_{\beta_-}+B_sF_{\beta_++\beta_-}).
 \label{eq:general-clamp-primitives}
\end{align}
Retain $D_1=d_0F_{\beta_-}$ and $D_2=d_0^2F_{2\beta_-}$.
Each winding heat and node-clamp work is then its earlier stated combination
of these separately integrated products. Evaluate the full magnetic and
capacitive stores at both endpoints. The zero residual belongs to that complete
clamped boundary; it does not remove the difference in stores or winding
states. This construction holds the voltages by actual clamp ports. A passive
receiver imposes a different selection of efforts.

## Passive receivers and preparation-dependent limits

Retain the source resistor and the original ground and carrier-return loads.
Let $G_g=G_O+G_P+G_R$ and $G_n=G_C$, and set
$a_v=1-h_F/h_H$. With the held voltage zero, the limiting voltage constraints
give $v_F=a_vv_C$ and $v_P=(1-1/h_H)v_C$. Their KCL and ampere-turn
constraints independently yield
\begin{equation}
 \bar v_C=\frac{u}{1+R_s[G_ga_v^2+G_n(a_v-1)^2]},\quad
 \bar v_F=a_v\bar v_C,\quad
 \bar I_F=-[G_ga_v+G_n(a_v-1)]\bar v_C.
 \label{eq:passive-limit}
\end{equation}
The source and load select these efforts. They need not equal the fixed
$\tau_*$ effort in the rigid comparison.

A precise sufficient convergence condition can be derived from the finite
equations. On a constant-connection interval, order reduced nodes as $(F,C,P)$.
For each pair define the columns
$B_{\pm,X}=B_{X1}/(2h_X)\pm B_{X2}/2$. Let
$\mathsf C_0$ be the positive diagonal capacitance before multiplication by
$\epsilon$, and let $\mathsf G$ include the source and receiver conductances.
In the variables $(v,d)$ the exact fast matrix is
\begin{equation}
 \mathsf A_\epsilon=
 \begin{pmatrix}
 -\mathsf C_0^{-1}\mathsf G&-\mathsf C_0^{-1}B_-\\
 (2/a_L)B_-^T&-(b_R/a_L)\epsilon^2 I
 \end{pmatrix}.
 \label{eq:fast-matrix}
\end{equation}
The time equation is $\epsilon\dot{(v,d)}=\mathsf A_\epsilon(v,d)+
(\mathsf C_0^{-1}(b_uu-B_+s),0)^T$.
For $\mathsf H=\operatorname{diag}(\mathsf C_0,a_LI/2)$, direct
multiplication at $\epsilon=0$ gives
\begin{equation}
 \mathsf H\mathsf A_0+\mathsf A_0^T\mathsf H
       =\operatorname{diag}(-2\mathsf G,0).
 \label{eq:fast-dissipation}
\end{equation}
This is a calculated matrix identity, with no energy-constancy premise.

Assume $R_s>0$, $G_g+G_n>0$, and $h_H\ne1$.
The null space of $\mathsf G$ then has $v_F=v_C=0$.
For an eigenvalue on the imaginary axis, \eqref{eq:fast-dissipation} forces
those two voltages to vanish. Their two nodal equations force both differential
currents to vanish: the determinant of the corresponding two by two part of
$B_-$ is $(h_H-1)/(4h_Fh_H)\ne0$.
The remaining winding equation then forces $v_P=0$. No nonzero such
eigenvector exists. Every eigenvalue of $\mathsf A_0$ has negative real part.
All five stated geometries meet the winding-ratio condition. A zero receiver
and zero probe before reset need a separate damping check; they are not
included by this sufficient condition.

For a dimensionally specified norm, choose fixed positive scales $V_*,I_*$
and set
\begin{equation}
 \mathsf S=\operatorname{diag}(V_*I_3,I_*I_2),\qquad
 \widetilde x=\mathsf S^{-1}(v,d)^T,\qquad
 \widetilde s=s/I_*,\qquad
 \widetilde{\mathsf A}_\epsilon=\mathsf S^{-1}\mathsf A_\epsilon\mathsf S.
 \label{eq:passive-normalization}
\end{equation}
All following vector norms are Euclidean norms of these dimensionless
coordinates and matrix norms are their induced norms. Similarity preserves
the preceding spectral result. Consequently there are positive constants
$M,\gamma$ and a sufficiently small
$\epsilon_0$ such that
$\|e^{\widetilde{\mathsf A}_\epsilon t/\epsilon}\|\leq
M e^{-\gamma t/\epsilon}$ for $0<\epsilon\leq\epsilon_0$.
This follows by continuity of the finite matrices and their stable spectral
separation. Let $x_*=(\bar v,\bar d)$ solve the constrained source/load
equations with zero common mode, on a smooth interval. Variation of constants
gives the exact inequality for $\widetilde x_*=\mathsf S^{-1}x_*$,
with $\widetilde{\bar d}=\bar d/I_*$:
\begin{align}
 \|\widetilde x(t)-\widetilde x_*(t)\|
 \leq{}&M e^{-\gamma(t-t_0)/\epsilon}
                       \|\widetilde x(t_0)-\widetilde x_*(t_0)\|\\
 &+\frac M\gamma\left(
 \frac{I_*}{V_*}\|\mathsf C_0^{-1}B_+\|\sup\|\widetilde s\|
 +\frac{b_R}{a_L}\epsilon^2\sup\|\widetilde{\bar d}\|
 +\epsilon\sup\|\dot{\widetilde x}_*\|\right).
 \label{eq:passive-bound}
\end{align}
Here $M$ is dimensionless and $\gamma$ has units of inverse time.
All suprema are over that interval. Writing $\widetilde v=v/V_*$,
the common-mode convolution separately gives
$\sup\|\widetilde s\|\leq\|\widetilde s(t_0)\|
+2TV_*\|B_+^T\|\sup\|\widetilde v\|/(\ell_+I_*)$.
For bounded drive, derivative, and initial fast states, substitution into
\eqref{eq:passive-bound} has a coefficient multiplying
$\sup\|\widetilde x-\widetilde x_*\|$
that tends to zero. Taking it below one gives a finite uniform bound.
If the initial common currents tend to zero, the right-hand side then tends
to zero away from the initial endpoint. Each connection change begins another
such decaying layer. Uniform convergence at a mismatched initial or switching
state is not asserted. The modal-energy examples show why this state statement
alone does not guarantee disappearance of every prepared store.

Fixed unbalanced common currents instead remain in the nodal forcing
$-B_+s$ and can change the limiting efforts. Zero data, compatible passive
data, voltage or differential-current mismatch, opposite common currents,
and unbalanced common currents of either sign are thus distinct preparations.
For changing clamps, an exact reversal such as
$v_C(t)=2\pi[1-4t/(3\,\mathrm s)]$ V on $[0,3/2]$ s can be combined
with the mesh voltage constraints, or with an independently prescribed
$d_t$. Constant, square-root, linear, and quadratic powers of $\epsilon$
in a differential-drive defect have the respective behaviors determined by
\eqref{eq:general-mode-paths}–\eqref{eq:vanishing-voltage-store}.

Every passive stage retains its ten physical powers and independent stores.
Each linear preparation uses its actual initial currents and capacitor
voltages in \eqref{eq:limit-preparation}. For constant connections and these
constant or polynomial commands, \eqref{eq:matrix-work} independently gives
each operation integral. Finite return ramps retain their stated paths and
constitutive balance, with no unevaluated work promoted to a value. Source
work can be negative: if a prepared state has $v_C>u>0$, its source product
$u(u-v_C)/R_s$ is negative, and continuity retains that sign on a following
interval. All other transfers and the separately evaluated decrease of stored
energy remain in the comparison. The preparation, returned work, and remaining
store are three separate results.

## Singular constitutive laws and prepared clamps

The regular inverse in \eqref{eq:compound-matrix} must not be used when a
capacitance vanishes or $k=1$. For prescribed linear external laws
$I_{\rm ext}=b_u u-\mathsf Gv$, retain the descriptor equations
\begin{equation}
 \underbrace{\begin{pmatrix}\mathsf C&0\\0&\mathsf L\end{pmatrix}}_{\mathsf E}
 \dot x=
 \underbrace{\begin{pmatrix}-\mathsf G&-B\\B^T&-\mathsf R\end{pmatrix}}_{\mathsf A_d}x
 +\begin{pmatrix}b_u u\\0\end{pmatrix}.
 \label{eq:descriptor}
\end{equation}
Dynamic and algebraic coordinates are separated by the constraints, not by
inverting $\mathsf E$. For a regular pencil and compatible data the reduced
dynamic system has its own matrix exponential and individual power
integrals. Initial algebraic variables must satisfy the constraints and any
necessary differentiated constraints. Across an event without a declared
impulse, integrating \eqref{eq:descriptor} requires
$\mathsf E(x^+-x^-)=0$ for fixed constitutive matrices. An algebraic jump
in the null space of this symmetric matrix changes no quadratic store;
a required charge or flux jump cannot be hidden in an algebraic update.

For exactly $k=1$ in one lossy pair, let $a_h=(h,1)^T$,
$\mathsf L=L_0a_ha_h^T$, $\phi=L_0a_h^Ti$, and assume its resistance
matrix is positive definite. Its winding voltage vector $u_w$ gives
\begin{equation}
 \dot\phi=\frac{a_h^T\mathsf R^{-1}u_w-\phi/L_0}
                   {a_h^T\mathsf R^{-1}a_h},\qquad
 i=\mathsf R^{-1}(u_w-a_h\dot\phi),\qquad
 E_m=\frac{\phi^2}{2L_0}.
 \label{eq:singular-pair}
\end{equation}
The constraint $a_h^Ti=\phi/L_0$ follows directly. Multiplication gives
$u_w^Ti-i^T\mathsf Ri=\phi\dot\phi/L_0$, so the magnetizing store
remains. At the chosen scale $\alpha=1$, the independent mechanical model
has one spring coordinate $\phi$, the same positive mobility matrix,
and algebraic forces $f=\mathsf R^{-1}(u_w-a_h\dot\phi)$ when winding
voltages are replaced by relative angular rates. Its spring energy is
$\phi^2/(2L_0)$. An arbitrary null-mode current is not an independent
initial state; it is fixed by this algebraic law.

With only the free-member capacitance zero, its KCL equation becomes a
force-balance counterpart without inertia. With all capacitances zero,
$I_{\rm ext}=Bi$ holds at every instant; a node with no external actuator
also imposes its differentiated current constraint on $\dot i$.
Zero source resistance is specified instead by $v_C=u$ and an unknown
reaction current from KCL. Its source power $uI_s$ is retained; no
$1/R_s$ formula is evaluated at zero. These compound constrained models
have their own compatible data and do not settle every singular limit of
the earlier tapped-transformer experiment. A zero winding ratio is excluded
by the positive tooth counts and nonzero $h_X$ used here.

A prepared short or an energized lock changes stored energy. For a capacitor
initially at $v_-$, connect an external constant voltage $U$ through a positive
resistance $R_c$. On the ensuing interval $[0,T]$, the single-capacitor event
model has $v=U+(v_--U)e^{-t/(R_cC)}$, $i=(U-v)/R_c$. With
$a_T=e^{-T/(R_cC)}$, its separate signed port integrals are
\begin{align}
 W_s(0,T)&=\int_0^T Ui\,dt=CU(U-v_-)(1-a_T),\\
 W_h(0,T)&=-\int_0^T R_ci^2dt
              =-\tfrac12C(U-v_-)^2(1-a_T^2).
 \label{eq:finite-clamp}
\end{align}
Independently $E(0)=Cv_-^2/2$ and
$E(T)=C[U+(v_--U)a_T]^2/2$. Substitution gives zero residual for every
$R_c,T>0$. In a vanishing-duration approach with
$T/(R_cC)\to\infty$, the event limits are
\begin{equation}
 W_s^{\rm imp}=CU(U-v_-),\qquad
 W_h^{\rm imp}=-\tfrac12C(U-v_-)^2,
 \qquad E^+-E^-=\tfrac12C(U^2-v_-^2).
 \label{eq:clamp-event}
\end{equation}
The source and heat terms have been integrated independently before taking
the limit. A short sets $U=0$ and exports $Cv_-^2/2$ as heat.
The independent rotor law $J\dot\omega=(\Omega_t-\omega)/\rho_c$
gives motor power $\Omega_t(\Omega_t-\omega)/\rho_c$ and heat export
$-(\Omega_t-\omega)^2/\rho_c$, with the same integrals after the
dimensional map. In the vanishing-duration limit with other efforts bounded, applying this
law to each rotor gives a full energized lock.
For regular finite inductance and bounded winding voltages during the shrinking
event, flux and current stay continuous; magnetic or elastic energy may then
relax over the subsequent finite interval. Exactly singular pairs retain
flux continuity and their algebraic current constraint.

A finite clamp conductance $20C/\delta$ over width
$\delta\in\{1/1000,1/2000,1/4000\}\,\mathrm s$ is a separate model.
For the isolated capacitor its voltage error is exactly
$(v_--U)e^{-20}$; in the coupled network the other winding currents also
enter KCL and must be retained. Neither finite transition is assigned the
ideal clamp endpoint without its own path calculation. Prepared locked
states may have zero ground shaft throughput while stored winding or elastic
efforts give nonzero indicated powers in a rotating observer frame. Such a
ratio remains undefined nonzero-over-zero; the clamp reaction belongs to the
actual boundary, beyond the original nine diagnostics.

## Finite reversible histories and complete polynomial event sets

A finite circuit can return to zero state after nonzero transfers without
being a storage-free ideal transformer. For this control alone set the four
winding resistances to zero and use externally prescribed node actuators;
retain the positive capacitances and coupled inductances of the finite model.
The receiver boundary is \eqref{eq:active-boundary} with no heat export:
four node-source ports and four compensation ports. Driver and rail are
outside this particular boundary, with their costs given separately above.

Let $T_*=1$ s, $z=t/T_*$, and prescribe $v(t)=\mathbf u f(z)$ on
$[0,T_*]$, where $\mathbf u$ is a constant voltage vector and
$F(z)=\int_0^z f(\zeta)d\zeta$. Three complete profiles are
\begin{align}
 f_1(z)&=z(1-z)(1-2z),& F_1(z)&=\tfrac12z^2(1-z)^2,\\
 f_2(z)&=z(1-z)(z-1/3)^2(z-5/7),&
 F_2(z)&=-\frac{z^2(1-z)^2(21z^2-18z+5)}{126},\\
 f_0(z)&=0,&F_0(z)&=0.
 \label{eq:finite-profiles}
\end{align}
Differentiation checks every primitive. Both $f$ and $F$ vanish at 0 and 1.
The second profile has an interior double zero at $z=1/3$, with
$F_2(1/3)=-8/15309\ne0$; thus products proportional to $fF$ have a
tangent zero there when their coefficient is nonzero.

The held member $H$ and planet have $u_H=u_P=0$. Let the free member be $F$
and $U_*=1$ V. For $k>0$ choose
\begin{equation}
 u_C=U_*,\qquad
 u_F=U_*\left(1+\frac{h_F}{h_H}-\frac{2h_F}{k}\right).
 \label{eq:polynomial-voltages}
\end{equation}
For $k=0$ choose $u_C=0$, $u_F=U_*$. These definitions apply to both held
members of all five configurations and to the equal-ratio two-external
assembly, with $k\in\{0,19/20,99/100\}$. They come from the no-external-
planet-current constraint, not from a work requirement. Indeed, put
$a_i=\mathsf L^{-1}B^T\mathbf u$. With zero initial flux the independent
winding and KCL equations give
\begin{equation}
 \lambda=T_*B^T\mathbf u F(z),\qquad i=T_*a_iF(z),\qquad
 I_{\rm ext}=\mathsf C\mathbf u\,f'(z)/T_*+T_*Ba_iF(z).
 \label{eq:polynomial-state}
\end{equation}
For $k>0$ the sum of secondary-current coefficients is proportional to
$k u_C/h_H-k(u_F-u_C)/h_F-2u_C$, which vanishes by
\eqref{eq:polynomial-voltages}. At $k=0$ both secondary currents are zero.
Since $v_P=0$, the planet capacitive current is also zero. Thus
$I_{{\rm ext},P}=0$ throughout. Independent integration of the mechanical
relative rates gives $z_m=T_*B^T\mathbf u F/\alpha$, and the prescribed
elastic law gives $f_m=\alpha i$.

For any one of the ground, carrier, or two member frames write
$r=u_f f(z)$, where $u_f=0,u_C,u_A,u_B$, respectively.
For an arbitrary subinterval $[T_*z_0,T_*z_1]$ write
$[g]=g(z_1)-g(z_0)$. Each physical port integrates separately to
\begin{align}
 W_{a,X}&=\tfrac12C_X(u_X-u_f)u_X[f^2]
       +\tfrac12T_*^2(u_X-u_f)(Ba_i)_X[F^2],\\
 W_{e,X}&=-\tfrac12C_X(u_X-u_f)u_f[f^2],\\
 E_C(z)&=\tfrac12\sum_X C_X(u_X-u_f)^2f(z)^2,
 \qquad E_m(z)=\tfrac12T_*^2a_i^T\mathsf La_iF(z)^2.
 \label{eq:polynomial-works}
\end{align}
The first line follows from the source product and
$\int f f' dz=[f^2]/2$, $\int fFdz=[F^2]/2$; the second follows from
the compensation product. The last line is evaluated from the state, not
assigned from those works. Since $B^T\mathbf1=0$, their independently
summed difference equals the endpoint store change on every subinterval.
At both endpoints of the complete interval every state and store is zero,
and each of the eight signed works is zero. Intermediate stores are nonzero
for the two nontrivial profiles. For instance $f_1(1/2)=0$ and
$F_1(1/2)=1/32$, leaving positive magnetic energy when $a_i\ne0$;
the two half-interval transfers must therefore retain their opposite signs.

The original nine diagnostics also have separately integrated zero works.
To see this without assuming cancellation, define their finite electrical
counterparts in the chosen frame as three products
$(v_X-r)I_{{\rm ext},X}$ for $X=A,B,C$, the four mesh-side products
\begin{equation}
 i_{X1}\big[(1-h_X)(v_C-r)+h_X(v_P-r)\big],\qquad
 -i_{X1}(v_X-r),\qquad X=A,B,
 \label{eq:finite-mesh-products}
\end{equation}
and the two opposite pin products
$\pm[J_{\rm orb}\dot v_C/\alpha^2+(h_A-1)i_{A1}+(h_B-1)i_{B1}](v_C-r)$.
Every one is a linear combination of $ff'/T_*$ and $T_*fF$, so the same
two primitives prove the separate full-interval zeros. This statement
does not say that each finite mesh pair cancels instantaneously; its modal
elastic path remains part of the physical model. All ratios of the zero
full-interval signed works are undefined zero-over-zero.

These histories also allow exact reasoning about all continuous power events.
Each displayed power has the form $P_j=f(A_jf'+D_jF)$, with rational
coefficients in the stated SI scale; its coefficients follow directly from
its effort and flow. Thus the remaining factors for every power and every
pairwise sum or difference are $Af'+DF$, using respectively
$(A_j,D_j)$ or $(A_j\pm A_l,D_j\pm D_l)$.

For the first profile put $q_z=z(1-z)$. Then $f'_1=1-6q_z$ and
$F_1=q_z^2/2$, so every remaining factor is the quadratic
\begin{equation}
 R_{A,D}(q_z)=A(1-6q_z)+\tfrac12Dq_z^2.
 \label{eq:polynomial-events}
\end{equation}
For $D\ne0$ its candidate roots are
$q_z=(6A\pm\sqrt{36A^2-2AD})/D$; only real values in $[0,1/4]$
are retained. For $D=0$, $A\ne0$, the root is $q_z=1/6$.
Each retained value gives $z=(1\pm\sqrt{1-4q_z})/2$. Together with
$z=0,1/2,1$, these are the complete events for the first profile, with
multiplicities inherited from the displayed factors. The case $A=D=0$
is an identity, not an isolated event.

For the second profile the explicit rational polynomials $f_2$ and
$Af'_2+DF_2$ similarly specify every factor. Their exact real roots on
$[0,1]$, isolated with multiplicities, include crossings and the double
zero already identified. Between consecutive distinct roots no power sign
or absolute-order relation can change, since
$P_j^2-P_l^2=(P_j-P_l)(P_j+P_l)$. At any nonzero-$f$ point the maximizing
set is exactly the indices attaining
$\max_j\lvert A_jf'+D_jF\rvert$; one interior point determines that set
throughout each open partition interval. At a root all equalities and
inequalities are evaluated there; at a zero of $f$ every power is zero.
This includes tangencies that leave the neighboring maximizing sets
unchanged. Coprime factors cannot share a root; distinct isolating intervals
must be separated rather than merging nearby events. Endpoint roots and
persistent ties are retained. The zero profile is identically tied throughout.

Every partition interval, including any isolating interval, retains its
own works and stores from \eqref{eq:polynomial-works}; their sum is the
full-interval integral. Observational roots add no physical switch or impulse.
This algebraic completeness argument applies to the displayed polynomials.
Initial all-zero states are boundary ties with undefined zero-over-zero ratios.
Hardware realization and arbitrary parameter interiors require further
determination. Dissipative histories admit a different, bounded certificate.

## What certifies a dissipative event set

For a fixed constitutive history with constant or linearly changing receiver
conductances, the augmented state equation has the exact form
$\dot y=[A_0+A_1(t-t_e)]y$ on each smooth interval. Its state is analytic
there. Each power is an analytic product of its actual effort and flow;
maximizing-port events additionally satisfy $P_j-P_k=0$ or $P_j+P_k=0$.
An identity remains a persistent equality, rather than a collection of
isolated events. Negative amplitude with compatibly reversed preparation
preserves the quadratic powers and event times; zero amplitude gives the
identically zero control.

\begin{theorem}[Completeness from a bounded event certificate]
For these analytic functions on a declared compact interval, suppose a finite
cover establishes every nonidentically-zero factor as nonzero on each
complementary interval and isolates all its remaining roots with their
multiplicities. Suppose also that common roots or their separation are
proved, endpoint roots are retained, and every maximizing set is determined
both at the roots and on the complements. Then the resulting event partition
is complete for that constitutive history.
\end{theorem}

\noindent\textit{Proof.}
The cover leaves no time unclassified. A nonzero factor has fixed sign on
each connected root-free complement. Including both pairwise sums and
differences fixes the sign of $P_j^2-P_k^2$ there, hence fixes the absolute
ordering. The separately established root multiplicities retain tangencies,
and the root equalities determine the maximizing sets at the events.
An additional event would contradict one of these classifications. $\square$

Analytic enclosures can supply the needed sign and uniqueness statements.
For a complex disk of radius $\rho$ about $c$, the integral equation along
each radius gives the exact bound
\begin{equation}
 \|y(c+z)\|\leq\|y(c)\|
       \exp\!\left(\|A(c)\|\rho+\tfrac12\|A_1\|\rho^2\right),
 \qquad |z|\leq\rho,
 \label{eq:analytic-state-bound}
\end{equation}
using a consistent induced norm. Bound the analytic observable $f$ on that
disk by $M_f$, including its explicit time-dependent coefficients. Cauchy's
coefficient formula gives $|a_n|\leq M_f/\rho^n$ for its exact local series.
For $0<r<\rho$, $q_r=r/\rho$, and its degree-$N$ polynomial $p_N$, the
complete remainders satisfy
\begin{equation}
 |f-p_N|\leq\frac{M_fq_r^{N+1}}{1-q_r},\qquad
 |f'-p_N'|\leq\frac{M_f}{\rho}
       \frac{q_r^N[(N+1)-Nq_r]}{(1-q_r)^2}.
 \label{eq:analytic-remainders}
\end{equation}
Both inequalities follow by summing the corresponding convergent geometric
tails. They are bounds on the exact function; no remainder is discarded and
no truncated series is substituted as the physical model. Initial-state
uncertainty must propagate into $M_f$ and the coefficient enclosures.

A value enclosure excluding zero proves absence of a root. A strictly signed
derivative and opposite endpoint signs prove a unique simple root. Squared
loss factors preserve double zeros. Exact relations
$f(t)=c(t)g(t)$ with $c$ finite and nonzero on the root interval establish
coincident factors and their orders; overlapping intervals alone do not.
Endpoint factors and identities require their exact algebraic treatment.
Any undecided sign, root coincidence, or maximizing set leaves that part
of the certificate unresolved.

A complete certificate therefore establishes a bounded dissipative event
result for its specified linear or affine history, independently of earlier
finite root brackets. Such a result does not settle the clipped, state-dependent
reference model or other parameter histories. Here the polynomial controls
have explicit algebraic event sets, and the theorem states the sufficient
conditions for the dissipative case; no unevaluated nonlinear event set is
claimed complete. Observational roots introduce no physical switch, impulse,
or omitted interval of work. Each interval retains its full signed integrals
and independent stores.

\clearpage

# References {-}

1. Martin L. Culpepper (2002), *2.000 Planetary Gear Application & Derivation*,
   MIT OpenCourseWare, *How and Why Machines Work*, Spring 2002, pp. 1–5.
   [Course notes][gears].
2. Massachusetts Institute of Technology (2022), “Non-Inertial Linear and Rotating
   Reference Frames,” Chapter 31 of *8.01 Classical Mechanics*, Spring 2022
   chapter edition, especially Section 31.4, pp. 7–15. [Published chapter][frames].
3. Hermann A. Haus and James R. Melcher (1989), *Electromagnetic Fields and
   Energy*, Prentice Hall, Englewood Cliffs, NJ. Section 9.7, “Magnetic
   Circuits,” especially “Electrical Terminal Relations and
   Characteristics.” [Author text hosted by MIT][hm].
4. Floyd A. Firestone (1933), “A New Analogy between Mechanical and Electrical
   Systems,” *The Journal of the Acoustical Society of America* **4**(3),
   249–267. DOI: [10.1121/1.1915605](https://doi.org/10.1121/1.1915605).
   [Original paper][firestone].

5. Belden Universal, “Connecting Multiple U-Joints,” technical guidance,
   accessed 29 September 2026. [Manufacturer guidance][joints].
6. Nikola Tesla (1919), “The Moon's Rotation,” *Electrical Experimenter*,
   June 1919, pp. 132–133, 156–157, 160. [Original issue scan][tesla].
7. James F. Murray III (2017), *Switched Energy Resonant Power Supply System*,
   US20170169941A1, published 15 June 2017, Figures 11 and 19.
   [Patent publication][serps].
8. Hob Nilre and Bo C. Herlin (2026), *Finite Transfers and Open Energy
   Balances: Physical tests of loaded gears, switched returns, and prepared states*.
   [Companion article][companion].

[hm]: https://web.mit.edu/6.013_book/www/chapter9/9.7.html
[gears]: https://ocw.mit.edu/courses/2-000-how-and-why-machines-work-spring-2002/432880e8fab4781d81ef88470751b397_PlanetaryGearTrains.pdf
[frames]: https://ocw.mit.edu/courses/8-01sc-classical-mechanics-fall-2016/mit8_01scs22_chapter31.pdf
[firestone]: https://physics.umd.edu/courses/Phys410/Anlage_Fall14/Firestone%20Electro-Mechanical%20Analogy%20Paper%20AJP%201.1915605.pdf

[joints]: https://www.beldenuniversal.com/resources/technical-information/connecting-multiple-u-joints
[tesla]: https://worldradiohistory.com/Archive-Electrical-Experimenter/EE-1919-06.pdf
[serps]: https://patents.google.com/patent/US20170169941A1/en
[companion]: https://github.com/hobnilre/physics-gear-op
