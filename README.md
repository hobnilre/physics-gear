# Frames, Returns, and Port Power

Changing stores and open energy transfers in gears and transformer readouts

[Read the article (PDF)](frames-returns-and-port-power.pdf) · [Manuscript](frames-returns-and-port-power.md)

The article investigates open energy questions in loaded gear readouts, energized return changes, material endpoint states, and finite reference supplies. Separately integrated signed powers and independently evaluated stores give finite comparisons. Any surviving physical gain or deficit remains an open result with its conditions, uncertainty, and completed checks.

The first comparisons use ordinary torque, angle, voltage, current, and temperature observations:

- **Changing the stator mounting.** The same prescribed Oldham motion gives a dissipation difference of $7\pi/50$ J over $7/2$ s. The changed drive and support works belong to the same investigation. A loaded-train control derives every shaft, receiver, and drag work separately.
- **Finite reference actuation.** A one-second control ends at capacitor voltage $-(9+e^{-10})/5$ V and energy $(9+e^{-10})^2/50$ J, against the ideal 2 J. Explicit endpoint error bounds distinguish this finite departure from a full apparatus remainder.
- **Energized return commutation.** Two independently connected receiver branches specify an overlap path and a separate open-gap control. The capacitor stays on its declared return. Initial winding and capacitor energy, preparation work, each receiver integral, and physical selector supplies remain explicit.
- **Thermal and magnetic endpoints.** An adiabatic resistor control stores its $1/10$ J electrical input as thermal energy. Actual exported heat is separate from internal Joule conversion. A calibrated linear inductance matrix does not reconstruct an unobserved magnetic internal state.
- **Finite prepared winding energy.** A stated pair reaches $93/1600$ J with explicit finite voltages, currents, and source/heat works. The limiting family also exposes the preparation voltage required as its currents approach zero.

Conditional calibration budgets connect these signals to required error scales. They are not instrument specifications. The uncertainty of a whole-boundary remainder includes every port and endpoint; unknown physical contributions are not assigned to a tolerance.

The article also retains the rotating-frame work and store derivations, compound power ratios, voltage-integral controls, active reference supplies, constrained events, passive and clamped limits, and exact event-completeness arguments. Preparation, operation, switching, relaxation, and reset remain distinct energy-transfer intervals.

Build the seven standalone figures and article with `make pdf`. Exact conventions, coverage, and verification are recorded in `notes/`. The third review's corrections are incorporated; review files and build intermediates remain ignored.
