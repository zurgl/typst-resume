#import "../../templates/resume/section.typ": cvSection
#import "../../templates/resume/skills.typ": cvSkill, hBar
#import "@preview/fontawesome:0.1.0": *

#v(10pt)


#cvSection("Compétences")

#cvSkill(
  type: [Langues],
  info: [Anglais #hBar() Français]
)

#cvSkill(
  type: [Tech Stack],
  info: [Rust #hBar() Typescript #hBar() PostgreSQL #hBar() Docker #hBar() React #hBar() HTML/CSS #hBar() Linux]
)

#cvSkill(
  type: [Centres d'intérêt],
  info: [Natation #hBar() Cyclisme #hBar() Cuisine]
)
