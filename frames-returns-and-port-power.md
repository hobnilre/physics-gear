---
title: "Frames, Returns, and Port Power"
subtitle: "Exact work balances for epicyclic gears and transformer readouts"
author: "Hob Nilre & Bo C. Herlin"
date: "2026-09-26"
abstract: |
  An angular displacement, a voltage integral, and a transferred work are
  different observables. We derive their relations for a parallel-axis
  epicyclic train, physical shaft readouts, and tapped or isolated coupled
  windings. Signed port integrals locate the effect of a rotating mechanical
  frame at every rate-dependent port; a common electrical voltage offset
  reallocates terminal contributions while preserving complete port powers.
  A held-ring example transfers $987\pi/8$ joules at the sun in ground
  coordinates and $705\pi/8$ joules in carrier coordinates. A missing
  electrical return produces an exact apparent deficit of $21/4$ joules.
  Five compound geometries give frame-dependent maximum-power ratios from
  $100/441$ to $2950/21$, with unit ground-reference ratio throughout.
  Closed-form finite-state balances retain leakage, loading, preparation,
  switching, and nonzero final stores. A compliant electrical–mechanical
  correspondence is exact under its stated constitutive map, but a voltage
  coordinate shift does not physically realize accelerating-frame storage.
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

Latest PDF on GitHub:

<https://github.com/hobnilre/physics-gear/blob/main/frames-returns-and-port-power.pdf>

# Observations and energy boundaries

A planet gear can turn relative to its carrier while an observer on the housing
reports another angular displacement. A winding terminal can likewise be read
against either of two returns. Neither observation specifies the work delivered
to an attached receiver. Work requires the effort and flow at the receiver's
actual boundary, and attaching the receiver can change the motion or circuit.
The purpose here is to separate these operations through exact derivations.

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

# Rolling constraints and three kinds of count

## A parallel-axis train

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

## The actual port sides

The train boundary encloses all gears, carrier, and pins. Its physical inputs
are the three shafts, including the held-member reaction. Internal transfers
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

A useful correction concerns Coriolis force. At fixed $a$ the planet-centre
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
 q_\beta(x)=F_\beta'(x)=
 \frac{c_\beta^2}{c_\beta^4\cos^2x+\sin^2x},\qquad
 c_\beta^2\leq q_\beta\leq c_\beta^{-2}.
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

For the carrier-fixed map $\theta_o=\phi+F(x)$ and constant input rates,
put $d=\omega_p-\omega_c$, $q=F'(x)$, and
$\omega_o=\omega_c+qd$. A linkage boundary includes a rotor of spin inertia
$I_R$ and mass $m_R$ orbiting at $a$, an output inertia $I_o$, and massless
coupling members. Its ground kinetic store is
$K_L^0=I_R\omega_p^2/2+m_Ra^2\omega_c^2/2+I_o\omega_o^2/2$;
its other-frame stores follow \eqref{eq:frame-store} with their own $J,H$.
The stator, imposed output torque $\tau_L$, and drive are external.

Let the drag magnitude be $d_0\geq0$, with
$s_\sigma=\operatorname{sgn}(\omega_o-\omega_\sigma)$ away from a zero.
The output equation gives coupling torque
$T=I_o\dot\omega_o-\tau_L+d_0s_\sigma$.
Virtual angular displacements in $\theta_o(\theta_p,\phi)$ give
$\tau_{
 d}=Tq$ and $\tau_{
 u}=T(1-q)$ at the drive and carrier support.
Their work integrals and those of the load, drag, and rotor pin are
\begin{align}
 W_d^f&=\int Tq(\omega_p-\Omega)dt,&
 W_u^f&=\int T(1-q)(\omega_c-\Omega)dt,\\
 W_L^f&=\int\tau_L(\omega_o-\Omega)dt,&
 W_{\rm drag}^f&=\int(-d_0s_\sigma)(\omega_o-\Omega)dt,\\
 W_{\rm pin}^f&=\int m_Ra\dot\omega_c\,a(\omega_c-\Omega)dt.
 \label{eq:linkage-work}
\end{align}
All integrals in this section have the explicitly stated readout or cycle
interval. At constant $\omega_c$ the rotor-pin power is zero, whereas the
support port can be nonzero. In accelerating motion the pin and effective
frame terms must both be restored. Summing the first four instantaneous
products yields $I_o\dot\omega_o(\omega_o-\Omega)$; the rotor and orbital
terms complete the independently evaluated store change. This torque-path
model does not resolve transverse Cardan joint forces or bending-couple ports;
two joints alone do not determine that system. Attaching it to a train with
unchanged prescribed torques is not a solved combined loaded apparatus.

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
fixed mounting leaves its relative drag dissipation unchanged. A prescribed
$\tau_L=-47/40\,\mathrm{N\,m}$ is not necessarily a passive load:
when $\omega_o<0$ its ground-frame power is positive. Describing a torque as
a brake therefore requires its relative velocity as well as its sign.

For the quarter-turn Hooke path, one cycle has
$T_b=\pi/\lvert d\rvert$. Assume $\tau_L$ and $s_\sigma$ remain constant
through that cycle. Set $T_0=-\tau_L+d_0s_\sigma$. Since
$F(x+\pi)-F(x)=\pi$, $\int(1-q)dt=0$. Also
$\dot\omega_o=d\dot q$. The ground support work integrates exactly to
\begin{equation}
 W_u^0=\omega_c\left\{T_0\int(1-q)dt+
 I_od\left[q-\frac{q^2}{2}\right]_{t_0}^{t_0+T_b}\right\}=0.
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

For the bevel path $q=\kappa$, the support work is instead
$T_0(1-\kappa)(\omega_c-\Omega)T_b$. As an exact example choose
$Z_s=Z_p=12$, $Z_r=36$, $(\nu_s,\nu_c)=(7/3,5/4)$,
$\kappa=2$, $\tau_L=-47/40$, $d_0=1/50$ in SI units.
Then $\nu_p=1/6$, $\nu_o=-11/12$, $T_b=6/13\,\mathrm s$, and
$T_0=231/200\,\mathrm{N\,m}$ for either listed stator. Thus
\begin{equation}
 W_u^0=-\frac{693\pi}{520}\,\mathrm J,\qquad W_u^c=0.
 \label{eq:bevel-work}
\end{equation}
The other integrals in \eqref{eq:linkage-work} balance it with unchanged
endpoint stores. Nonzero work at one support is a transfer across that
boundary; it is not a residual or an independent energy source.

# Windings, returns, and the electrical observation

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

![Schematic tapped circuit. The source reaches $a$ through $R_s$; the coupled winding sections are $a$–$c$ and $b$–$a$. The capacitor remains across $b$–$c$. The receiver and probe may return to $a$ or $c$, while the effective core-loss conductance remains across $a$–$c$. Dotted coupling is magnetic, not a wire.](figures/transformer-ports.pdf){#fig:circuit width=96%}

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

An energy correspondence needs a dimensional scale $\alpha$ using radians:
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
sun terminal, accelerating reference supply, and independently phased Hooke
linkage are not realized by the three-terminal kinematic map.

## A common zero and a missing return

For a fixed physical circuit, changing every potential to $V_j+g(t)$ leaves
all complete port voltages unchanged. Individual terminal contributions
$q_j=V_jI_j$ instead obey
\begin{equation}
 q_j^g-q_j=gI_j,\qquad
 \sum_j(q_j^g-q_j)=g\sum_j I_j=0,
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

Whether the different receiving circuits can be prepared and reset with all
controller works accounted for is a separate accessible question [OP-TRF-05].
For an explicit capacitor-only reset, a fixed resistor $R$ across an initially
charged $C$ gives $v(t)=V_0e^{-t/(RC)}$. On $[0,T]$ its own heat-port
integral is
\begin{equation}
 W_R=-\int_0^T\frac{V_0^2}{R}e^{-2t/(RC)}dt
 =-\frac{CV_0^2}{2}(1-e^{-2T/(RC)}),\qquad
 E(T)=\frac{CV_0^2}{2}e^{-2T/(RC)}.
 \label{eq:reset}
\end{equation}
A voltmeter and resistor-current measurement at ordinary voltage levels
resolve the remaining charge and the finite reset work. This distinguishes a
finite residual store from a claimed exact reset. An active reset may instead
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
For $q$ equally loaded massless planets, choose $\tau_A=T$.
Their axial free-body equation is
$s_Ar_{pA}F_A+s_Br_{pB}F_B=0$, with $q r_A F_A=T$.
The pin reaction is $R_t=-(F_A+F_B)$, giving
\begin{equation}
 (\tau_A,\tau_B,\tau_C)=T(1,-R,R-1).
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
$w=2\pi\,\mathrm{rad/s}$, $T=47/4\,\mathrm{N\,m}$, and interval
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
rational $R=p/q$, the two-external assembly
$(Z_A,Z_{pA},Z_{pB},Z_B)=(2q,2p,p+q,p+q)$ realizes that ratio with positive
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
current, sign reversals, and exact current zeros. For example replace
$T$ by $T_*(t-3/4)\,\mathrm{s^{-1}}$ on $[0,3/2]\,\mathrm s$ with
constant rates. Each signed work vanishes over the full interval, while its
two subinterval integrals have opposite values proportional to
$\int_0^{3/4}(t-3/4)dt=-9/32\,\mathrm{s^2}$ and $+9/32\,\mathrm{s^2}$.
Instantaneous absolute power and absolute integrated work remain nonzero.
Zeros and maximizing-port ties follow from the individual polynomial
products; undefined zero-throughput ratios must be retained. Arbitrary
constant and linear common offsets, including the earlier nine choices,
change terminal products according to \eqref{eq:gauge} while leaving the
complete-port works fixed.

# Finite correspondence and its physical obstruction

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
A finite transition of width $1/1000$, $1/2000$, or $1/4000\,\mathrm s$
requires a declared conductance history on that transition. The instantaneous
identity still follows from the differential equations, but finite numerical
results for those histories are not exact closed-form results of this article.
They are conditional extensions until their individual path integrals are
specified. No limiting switch work is inferred from the instantaneous model.

Linearity gives an exact amplitude control: reversing the source and the
compatible prepared state reverses all physical states and leaves their
quadratic physical powers and works unchanged. Zero drive with zero state is
the exact null. Common-offset cross terms $gI_j$ do reverse with current and
must be recomputed; they are not copied from positive drive. Neither amplitude
homogeneity nor a regular finite model at $R=1$ proves the singular rigid
constraint or an energized locking law.

In fixed ground coordinates, define the instantaneous diagnostic denominator
on the actual trajectory by
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
to report at that event. In a finite prepared example, ratios at
$3/20$, $1/4$, and $3/4\,\mathrm s$ are obtained by evaluating its exact
state and individual powers there, not by reusing \eqref{eq:carrier-ratio}.
Inertia, compliance, resistance, loading, and excitation all change them.
No ordering or extremum over those stages follows from the rigid table.

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
store rather than the actual grounded capacitors. Realizing moving capacitor
returns requires new driven connections and their supplies. Their work and
hardware discrepancy are unknown. Equation \eqref{eq:reference-obstruction}
locates a difference of store definitions and does not justify adding an
invented reference-energy transfer to the physical circuit.

Consequently the regular compliant correspondence is exact, while full rigid
loaded duality, independently driven reference motion, actual reference
commutation, and linkage-phasing realization remain open physical questions.
Finite $k\to1$ with fixed inductances, inertias, and resistances does not
recover the rigid quasistatic boundary automatically. Exact shorting,
zero-capacitance constraints, zero source resistance, prepared locking,
and finite full-interval zero-net-work controls need separate formulations.
The ideal counterpart remains useful within its own stated scope.

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

For the windings, common-coordinate invariance proves nothing about a new
physical ground path. Regular linear closure proves nothing about nonlinear
core or thermal behavior, singular limits, real switching supplies, missing
preparation, or exact reset. Individual parameter controls do not validate
all joint physical parameter combinations. A calibrated hardware comparison
must retain the source, receiver, probe, all returns, each energy store, and
instrument loading over the same event-split interval. Any unexplained signed
remainder then remains an open result with its magnitude, sign, conditions,
and completed checks; an expected conservation law is not a substitute for
that investigation.

# Conclusion

Signed effort–flow integrals distinguish a change of observation from a change
of apparatus. In the gear example, the sun's $987\pi/8\,\mathrm J$ ground
work becomes $705\pi/8\,\mathrm J$ in carrier coordinates, accompanied by
an explicit held-ring contribution and the appropriate frame stores.
The locked zero-drive control changes the body count while every physical
port work stays zero. The history-dependent split of frame terms follows
\eqref{eq:history}, not a universal equal-partition rule.

A common electrical voltage shift preserves complete port powers and moves
only their terminal decomposition. The exact missing-return residual
$21/4\,\mathrm J$ and the loaded $16\,\mathrm J$ versus $9\,\mathrm J$
example follow from separately integrated products. Finite loading changes
both trajectories and endpoint stores; it cannot be inferred from volt-seconds.

The compound maximum-power ratios $100/441$ through $2950/21$ belong to
specified observations, while their ground-reference values are one.
The ideal terminal map and the regular compliant state map have exact stated
scopes. A physical accelerating electrical reference, fully loaded lead-out
reaction paths, reactive commutation, and hardware discrepancies remain open;
none is supplied by a coordinate identity or by an undeclared transfer.

# References {-}

1. Hermann A. Haus and James R. Melcher (1989), *Electromagnetic Fields and
   Energy*, Prentice Hall, Englewood Cliffs, NJ. Section 9.7, “Magnetic
   Circuits,” especially “Electrical Terminal Relations and
   Characteristics.” [Author text hosted by MIT][hm].

[hm]: https://web.mit.edu/6.013_book/www/chapter9/9.7.html
