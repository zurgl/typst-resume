/* Resume Header */
#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *

#let headerFont = ("Roboto")

#let headerFirstNameStyle(str) = {
  text(
    font: headerFont,
    size: 32pt,
    weight: "light",
    fill: regularColors.darkgray,
    str,
  )
}

#let headerLastNameStyle(str) = { text(font: headerFont, size: 32pt, weight: "bold", str) }

#let headerInfoStyle(str) = { text(size: 10pt, fill: accentColor, str) }

#let headerQuoteStyle(str) = { text(size: 10pt, weight: "medium", style: "italic", fill: accentColor, str) }

#let cvHeader(align: left, hasPhoto: true) = {

  let makeHeaderInfo() = {
    let personalInfoIcons = (
      phone: fa-phone(),
      email: fa-envelope(),
      linkedin: fa-linkedin(),
      homepage: fa-pager(),
      github: fa-square-github(),
      gitlab: fa-gitlab(),
      orcid: fa-orcid(),
      researchgate: fa-researchgate(),
      location: fa-location-dot(),
      extraInfo: "",
    )
    let n = 1
    for (k, v) in personalInfo {
      // A dirty trick to add linebreaks with "linebreak" as key in personalInfo
      if k == "linebreak" {
        n = 0
        linebreak()
        continue
      }
      if k.contains("custom") {
        // example value (icon: fa-graduation-cap(), text: "PhD", link: "https://www.example.com")
        let icon = v.at("icon", default: "")
        let text = v.at("text", default: "")
        let link_value = v.at("link", default: "")
        box({
          icon
          h(5pt)
          link(link_value)[#text]
        })
      } else if v != "" {
        box({
          // Adds icons
          personalInfoIcons.at(k) + h(5pt)
          // Adds hyperlinks
          if k == "email" {
            link("mailto:" + v)[#v]
          } else if k == "linkedin" {
            link("https://www.linkedin.com/in/" + v)[#v]
          } else if k == "github" {
            link("https://github.com/" + v)[#v]
          } else if k == "gitlab" {
            link("https://gitlab.com/" + v)[#v]
          } else if k == "homepage" {
            link("https://" + v)[#v]
          } else if k == "orcid" {
            link("https://orcid.org/" + v)[#v]
          } else if k == "researchgate" {
            link("https://www.researchgate.net/profile/" + v)[#v]
          } else {
            v
          }
        })
      }
      // Adds hBar
      if n != personalInfo.len() {
        hBar()
      }
      n = n + 1
    }
  }

  let makeHeaderNameSection() = table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 6mm,
    [#headerFirstNameStyle(firstName) #h(5pt) #headerLastNameStyle(lastName)],
    [#headerInfoStyle(makeHeaderInfo())],
    [#headerQuoteStyle(languageSwitch(headerQuoteInternational))],
  )

  let makeHeaderPhotoSection() = {
    if profilePhoto != "" {
      box(image(profilePhoto, height: 3.6cm), radius: 50%, clip: true)
    } else {
      v(3.6cm)
    }
  }

  let makeHeader(leftComp, rightComp, columns, align) = table(
    columns: columns,
    inset: 0pt,
    stroke: none,
    column-gutter: 15pt,
    align: align + horizon,
    { leftComp },
    { rightComp },
  )

  if hasPhoto {
    makeHeader(makeHeaderNameSection(), makeHeaderPhotoSection(), (auto, 20%), align)
  } else {
    makeHeader(makeHeaderNameSection(), makeHeaderPhotoSection(), (auto, 0%), align)
  }
}