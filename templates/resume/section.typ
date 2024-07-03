#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *


/* resume section */
#let sectionTitleStyle(str, color: black) = { text(size: 16pt, weight: "bold", fill: color, str) }

#let cvSection(title, highlighted: true, letters: 3) = {
  let highlightText = title.slice(0, letters)
  let normalText = title.slice(letters)

  v(beforeSectionSkip)
    if highlighted {
      sectionTitleStyle(highlightText, color: accentColor)
      sectionTitleStyle(normalText, color: black)
    } else {
      sectionTitleStyle(title, color: black)
    }
  h(2pt)
  box(width: 1fr, line(stroke: 0.9pt, length: 100%))
}

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
