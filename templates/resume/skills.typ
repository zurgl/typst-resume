#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *


/* resumse skills */
#let skillTypeStyle(str) = {
  align(right, text(size: 10pt, weight: "bold", str))
}

#let skillInfoStyle(str) = { text(str) }

#let cvSkill(type: "Type", info: "Info") = {
  table(
    columns: (16%, 1fr),
    inset: 0pt,
    column-gutter: 10pt,
    stroke: none,
    skillTypeStyle(type),
    skillInfoStyle(info),
  )
  v(-6pt)
}
