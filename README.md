# Frames, Returns, and Port Power

Changing stores and open energy transfers in gears and transformer readouts

## What this article adds, and why it matters

The article investigates open energy questions in epicyclic gears, physical shaft readouts, and transformer circuits. The complete preparation and reset cycle, physical return commutation, loaded linkage reactions, and imperfect reference supplies remain physical investigations with unknown signed remainders. Exact work integrals and independently evaluated stores give quantitative comparisons for those investigations.

The revision following `REVIEW_2.md` brings these questions into the abstract, introduction, and local derivations. It adds a coupled axial train/readout model, complete-cycle and switching definitions, finite sensors and actuators with conversion losses, and exact examples where vanishing currents or voltage mismatches retain energy. A negative finite-actuation energy difference is derived with every source and heat work retained. Any unexplained physical gain or deficit remains open with its conditions and uncertainty.

- **A spin-up that raises one energy expression and lowers another.** Accelerating the reference gear train from rest increases its ground-frame kinetic energy while decreasing its carrier-frame effective energy. Exact ramp integrals expose the shaft work, Euler contribution and centrifugal-potential change separately. The split between shaft-work and effective-field contributions changes with the preparation history and can give the two shares opposite signs.

- **Steady motion with sharply different reported work.** The sun transfers $987\pi/8$ J in ground coordinates and $705\pi/8$ J in carrier coordinates over the same interval. The held ring acquires nonzero work in the carrier frame. Across five compound geometries, the maximum-power ratio ranges from $100/441$ to $2950/21$, making the observation frame decisive even before acceleration enters.

- **A zero voltage integral with substantial delivered energy.** A reversing drive brings both voltage-integral readouts back to zero while the two receiving circuits collect $256/3$ J and $48$ J. A second exact comparison gives 16 J versus 9 J after changing the load return. These examples separate what a winding readout records from what an attached receiver obtains.

- **Energy that changes during preparation and remains after shutdown.** Changing the receiving circuit can change the energy held in coupled windings and capacitors at the start of operation, even when both preparations start from zero. Setting the source voltage to zero begins another energy-transfer interval. Starting from a charged capacitor, the exact passive-reset law leaves a positive store at every finite time, putting remaining charge, winding preparation and active-reset work directly within reach of measurement.

- **A return path worth $21/4$ J.** Omitting one terminal contribution after a common voltage shift leaves an exact signed energy discrepancy of $21/4$ J. Physical ground bonds, probes and chassis paths introduce further transfers and stores. The article identifies the voltage and current observations needed to resolve their contributions individually.

- **An active realization of moving-reference energy.** Magnetic energy maps to elastic energy and capacitor energy to rotational kinetic energy. Floating sources and driven capacitor returns reproduce the shaft and Euler powers separately. The reference driver, finite supply rail, controller demand, and preparation have their own work integrals. A nonzero instantaneous reference change requires divergent driver dissipation at fixed resistance; real bandwidth and conversion losses remain unmeasured.

- **Finite models with explicit rigid limits and switching work.** A joint constitutive limit with compatible preparation and matched drives recovers the rigid compound works. Constrained equations retain magnetizing storage at unity coupling, while prepared shorts and energized locks retain their event heat. Finite lossless reversal histories return to zero endpoint stores and zero signed interval works after nonzero intermediate transfers.

- **Small currents with finite stores.** A common winding current approaching zero retains a limiting magnetic store of $3/50$ J in the stated preparation. A different drive with vanishing voltage mismatch produces a limiting store of $25/12$ J and growing current. Selected port works can converge while winding states and stored energy remain different. The passive-load limit has its own effort selection and preparation-dependent initial layers.

- **A determined departure from an ideal active reference.** With finite actuator response, the reference-only receiver finishes at $(9+e^{-10})^2/50$ J instead of 2 J under the stated one-second control. Each source and heat product is integrated separately. The wider model includes sensor, actuator, command, driver, and rail stores, with hardware discrepancies still unmeasured.

Polynomial event sets and a bounded analytic completeness criterion retain their distinct scopes. Work accuracy and endpoint accuracy remain separate: a short transfer can have no sign-changing power zero, and a small energy change can depend on the accuracy of two large stores.

## Article

[Read the article (PDF)](frames-returns-and-port-power.pdf) · [Manuscript](frames-returns-and-port-power.md)

Build the figures and PDF with `make pdf`. Exact conventions, coverage, and verification are recorded in `notes/`.
