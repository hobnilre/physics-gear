# PDF build metadata verification — 2026-09-28

`make pdf` successfully rebuilt the 59-page article with an automatic UTC
timestamp above the repository link, both in `\scriptsize`. The timestamp
is generated once per PDF recipe and shared by all LaTeX passes. A subsequent
`make pdf` left both the timestamp and PDF modification time unchanged.

The manuscript differs only in the first-page metadata block. PDF text
extraction confirmed the timestamp, repository URL, and absence of unresolved
`??` references. Visually inspected the first page at reading size and all
three pages affected by reflow; no clipping or overlap was found.
