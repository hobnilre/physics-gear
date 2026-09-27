# Frames, Returns, and Port Power

Changing stores and open energy transfers in gears and transformer readouts

## What this article adds, and why it matters

The article starts from open energy questions: how much work changes when a loaded readout is remounted, what energy moves during an energized return change, and what remains after preparation and reset. Finite reference supplies and energy held in warm components and magnetic cores add further measurable questions. Torque meters, encoders, voltage and current traces, and temperature probes provide direct routes into these investigations.

Exact work integrals and independently evaluated stores give each comparison a definite target. The article develops the mechanical reactions, electrical return paths, switching connections, and supply works needed to pursue those targets through a complete energy account.

- **The same motion, a different drag-energy bill.** Moving an Oldham readout's stator from ground to carrier changes the predicted dissipation by $7\pi/50$ J over $7/2$ s—approximately $0.440$ J. Hold the motion fixed and integrate the measured drag torque against relative angle. The changed drive and support works expose the next question: how does the complete loaded apparatus account for that difference?

- **A passive readout changes the carrier's work.** Attaching three loaded outputs changes the carrier's signed work by $5019\pi/200$ J in the stated $3/2$ s control. The receivers collect $987\pi/40$ J, with drag dissipation evaluated separately. Synchronized torque and encoder observations make this a substantial transfer to investigate. Moving-support reactions, joint forces, and the phase actuator carry the open energy question into the full mechanism.

- **Energy on the move when a return changes.** An initially 4 V capacitor and a 1 V source give an energized return change a concrete scale. Two receiver branches specify an overlap lasting $1/10$ s; a separate connection history introduces an open gap. Ordinary synchronized voltage and current traces can follow each receiver and supply transfer. Extending those observations through preparation, operation, switching, relaxation, and reset addresses the larger open problem: the complete-cycle receiving-work difference and any signed energy remainder.

- **A finite reference leaves a different capacitor energy.** The one-second actuator control ends at voltage $-(9+e^{-10})/5$ V. Its capacitor energy differs from the ideal 2 J by $[(9+e^{-10})^2-100]/50$ J—approximately $-0.380$ J. Capacitor-voltage observations give a direct first comparison; separate actuator and reference-driver voltage–current products reveal its supply costs. The open physical investigation is how closely a real reference circuit reproduces these individual works and endpoint stores.

- **Heat that remains inside the apparatus.** The adiabatic resistor control receives $1/10$ J electrically and retains it as thermal energy. With the stated heat capacity, that is a $1/10$ K temperature rise. Voltage, current, and temperature observations connect the input to the changing material state. Repeating winding preparations at recorded temperatures opens the broader question of how thermal history, remanence, and hysteresis change signed work and stored energy.

- **Prepared winding energy at ordinary voltage and current levels.** A finite winding pair reaches $93/1600$ J with currents of $-1/3$ A and $1/4$ A and explicitly derived preparation voltages of a few volts. Each source and heat work has its own integral. This gives the magnetic-state investigation a finite target, while the wider derivation shows how currents approaching zero can retain energy as the component parameters change. Internal-state observations and a complete preparation account determine what a physical pair actually retains.

The proposed measurements include explicit uncertainty budgets for these finite signals. Each port work and each endpoint state receives its own accuracy requirement. Any positive or negative remainder that survives the complete account stays open with its magnitude, conditions, and uncertainty. Rotating-frame analysis, compound power ratios, active supplies, and exact switching and limiting arguments provide the mathematical framework for pursuing it.

## Article

[Read the article (PDF)](frames-returns-and-port-power.pdf) · [Manuscript](frames-returns-and-port-power.md)

Build the seven standalone figures and article with `make pdf`. Exact conventions, coverage, and verification are recorded in `notes/`.
