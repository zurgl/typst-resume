#import "../../metadata.typ": *
#import "../commun.typ": *
#import "@preview/fontawesome:0.1.0": *


#let letterHeaderNameStyle(str) = { text(fill: accentColor, weight: "bold", str) }

#let letterHeaderAddressStyle(str) = { text(fill: gray, size: 0.9em, smallcaps(str)) }

#let letterDateStyle(str) = { text(size: 0.9em, style: "italic", str) }

#let letterSubjectStyle(str) = { text(fill: accentColor, weight: "bold", underline(str)) }

#let letterHeader(
  myAddress: "Your Address Here",
  recipientName: "Company Name Here",
  recipientAddress: "Company Address Here",
  date: "Today's Date",
  subject: "Subject: Hey!",
) = {
  letterHeaderNameStyle(firstName + " " + lastName)
  v(1pt)
  letterHeaderAddressStyle(myAddress)
  v(1pt)
  align(right, letterHeaderNameStyle(recipientName))
  v(1pt)
  align(right, letterHeaderAddressStyle(recipientAddress))
  v(1pt)
  letterDateStyle(date)
  v(1pt)
  letterSubjectStyle(subject)
  linebreak(); linebreak()
}

#let letterSignature(path) = {
  linebreak()
  place(right, dx: -5%, dy: 0%, image(path, width: 35%))
}

#let letterFooter() = {
  place(bottom, table(
    columns: (1fr, auto),
    inset: 0pt,
    stroke: none,
    footerStyle([#firstName #lastName]),
    footerStyle(languageSwitch(letterFooterInternational)),
  ))
}
