#import "templates/main.typ": *
#import "templates/resume/header.typ": *
#import "templates/resume/footer.typ": *
#import "templates/resume/entry.typ": *
#import "@preview/fontawesome:0.1.0": *

#show: layout

#cvHeader(hasPhoto: true, align: left)
  #autoImport("professional")
  #autoImport("education")
  #autoImport("skills")
#cvFooter()

$/*
  #autoImport("projects")
*/$