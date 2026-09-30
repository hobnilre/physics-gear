# Frames, Returns, and Port Power

Four central shafts, loaded reactions, and electrical counterparts

## What this article adds, and why it matters

In a specified ideal layout, a planet gear's rotation passes through two
correctly phased universal joints to a separate central shaft. The sun,
carrier, ring and planet output supply four accessible ports. The article
derives their speed and load freedoms, then builds two ideal electrical
realizations of the complete terminal relations in one continuous argument.

- **A loaded fourth shaft changes the other reactions.** In the recurring
  one-second control, one planet receiver takes $7/3$ J and carrier work
  changes by $7/3$ J. The held ring carries a changed torque while doing
  zero ground work. Contact constraints and free bodies establish every
  transfer before their work balance is checked.
- **Four accessible shafts have two speed freedoms.** The complete operating
  family includes held shafts, reversals, co-rotation, supplying and receiving
  outputs, and unequal planet loading. A rotation count alone does not select
  a load or its power.
- **Two electrical constructions retain the planet receiver.** Two signed
  transformer pairs and a common-flux winding with taps at 0, 14, 20 and
  35 turns reproduce the ideal terminal relations. Every branch uses its
  physical return. A finite compliant extension maps independent magnetic,
  capacitive, elastic and inertial stores.
- **Connections and preparations change what a terminal reveals.** Two
  series-cell preparations have the same entire terminal history but stores
  of 1 and 5 J. Switched full-to-tap returns, cell reconnection and complete
  source draw/return accounts show why delivered work needs its own integral.
- **A shared magnetic output changes the connected problem.** Common-flux
  compatibility and finite leakage determine which channel drives can coexist.
  A separate insulated timing model has a positive thermal increment on every
  admitted revolution, preventing full-state repetition under that boundary.

Earlier universal-joint planet takeoffs and double-Cardan kinematics provide
mechanical context. This treatment develops the explicit four-port load family,
both electrical constructions and their independent work/store comparisons.
Actual yoke clearance, spatial reactions and material laws need identification.

Coin and spoke controls develop the count distinction. Rotating-frame
stores, compound gearing, supplied references, finite controllers and prepared
limits develop its consequences. Every worked result is exact or explicitly
conditional within its declared model.

The self-contained companion,
[*Finite Transfers and Open Energy Balances*](https://github.com/hobnilre/physics-gear-op),
develops actual joint and support identification, switched circuits, hidden
states, physical supplies and the uncertainties required for measurements.

## Article and build

[Read the article (PDF)](frames-returns-and-port-power.pdf) · [Manuscript source](frames-returns-and-port-power.md)

Install GNU Make, Pandoc, XeLaTeX and the TeX Gyre fonts, including the LaTeX
packages used by `preamble.tex` and the standalone TikZ/PGFPlots figures. Run `make pdf`
from this repository. The build uses only files in this checkout; no sibling
repository or private working files are needed.

The first page gives the PDF creation time in UTC, followed by this repository's
GitHub link. An up-to-date PDF keeps its timestamp; `make -B pdf` forces a rebuild.
Intermediates go to ignored `build/` by default; `BUILD_DIR=/absolute/path`
selects another location. `make clean` removes that build directory and keeps
the published PDF and figure assets.
