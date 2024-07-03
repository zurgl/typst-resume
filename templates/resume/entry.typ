#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *
/*      fill: regularColors.subtlegray, */

/* cv entry specific */
#let entryTagStyle(str) = { align(center, text(white, size: 7pt, weight: "medium", str)) }

#let entryTagListStyle(tags) = {
  for tag in tags {
    box(
      inset: (x: 0.3em),
      outset: (y: 0.3em),
      fill: rgb("#53565c"),
      radius: 5pt,
      entryTagStyle(tag),
      stroke: rgb("#000000")
    )
    h(5pt)
  }
}

#let entryA1Style(str) = { text(size: 10pt, weight: "bold", str) }

#let entryA2Style(str) = {
  align(
    right,
    text(weight: "medium", fill: accentColor, style: "oblique", str),
  )
}

#let entryB1Style(str) = { text(size: 8pt, fill: accentColor, weight: "medium", smallcaps(str)) }

#let entryB2Style(str) = {
  align(
    right,
    text(size: 8pt, weight: "medium", fill: gray, style: "oblique", str),
  )
}

#let entryDescriptionStyle(str) = {
  text(fill: regularColors.lightgray, {
    v(beforeEntryDescriptionSkip)
    str
  })
}

#let cvEntry(
  title: "Title",
  society: "Society",
  date: "Date",
  location: "Location",
  description: "Description",
  logo: "",
  tags: (),
  double: "",
) = {
  
  let ifSocietyFirst(condition, field1, field2) = {
    return if condition { field1 } else { field2 }
  }
  let ifLogo(path, ifTrue, ifFalse, two) = {
    return if varDisplayLogo {
      if path == "" { ifFalse } else { 
        if two == "" { ifTrue} else { 8% } }
    } else { ifFalse }
  }
  let setLogoLength(path) = {
    return if path == "" { 0% } else { 4% }
  }
  let setLogoContent(path) = {
    return if logo == "" [] else { image("../../assets/logos/" + path, width: 100%) }
  }
  v(beforeEntrySkip)
  table(
    columns: (ifLogo(logo, 4%, 0%, double), 1fr),
    inset: 0pt,
    stroke: none,
    align: horizon,
    column-gutter: ifLogo(logo, 4pt, 0pt, ""),
    setLogoContent(logo),
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      row-gutter: 6pt,
      align: auto,
      { entryA1Style(ifSocietyFirst(varEntrySocietyFirst, society, title)) },
      { entryA2Style(ifSocietyFirst(varEntrySocietyFirst, location, date)) },
      { entryB1Style(ifSocietyFirst(varEntrySocietyFirst, title, society)) },
      { entryB2Style(ifSocietyFirst(varEntrySocietyFirst, date, location)) },
    ),
  )
  entryDescriptionStyle(description)
  { align(left, entryTagListStyle(tags)) }
}
