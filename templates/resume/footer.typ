/* Packages */
#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *

/* Footer */
#let cvFooter() = {
  place(bottom, table(
    columns: (1fr, auto),
    inset: 0pt,
    stroke: none,
    footerStyle([#firstName #lastName]),
    footerStyle(languageSwitch(cvFooterInternational)),
  ))
}
