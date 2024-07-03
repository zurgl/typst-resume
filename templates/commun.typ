#import "../metadata.typ": *

/* Utility Functions */
#let hBar() = [
  #h(5pt) | #h(5pt)
]

#let autoImport(file) = {
  include { "../resume/" + varLanguage + "/" + file + ".typ" }
}

#let languageSwitch(dict) = {
  for (k, v) in dict {
    if k == varLanguage {
      return v
      break
    }
  }
  panic("i18n: language value not matching any key in the array")
}

/* Styles */
#let fontList = (
  "Source Sans Pro",
  "Font Awesome 6 Brands",
  "Font Awesome 6 Free",
)

#let headerFont = ("Roboto", "")

#let awesomeColors = (
  skyblue: rgb("#0395DE"),
  red: rgb("#DC3522"),
  nephritis: rgb("#27AE60"),
  concrete: rgb("#95A5A6"),
  darknight: rgb("#131A28"),
)

#let regularColors = (
  subtlegray: rgb("#5cb6e0"),
  lightgray: rgb("#343a40"),
  darkgray: rgb("#212529"),
)

#let accentColor = {
  if type(awesomeColor) == color {
    awesomeColor
  } else {
    awesomeColors.at(awesomeColor)
  }
}

/* Layout */
#let layout(doc) = {
  set text(font: fontList, weight: "regular", size: 9pt)
  set align(left)
  set page(
    paper: "a4",
    margin: (left: 1.4cm, right: 1.4cm, top: .8cm, bottom: .4cm),
  )
  doc
}

#let beforeSectionSkip = 1pt
#let beforeEntrySkip = 1pt
#let beforeEntryDescriptionSkip = 1pt

#let footerStyle(str) = { text(size: 8pt, fill: rgb("#999999"), smallcaps(str)) }
