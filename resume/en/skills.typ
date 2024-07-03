#import "../../templates/resume/section.typ": *
#import "../../templates/resume/skills.typ": *
#import "@preview/fontawesome:0.1.0": *

#cvSection("Skills")

#cvSkill(
  type: [Languages],
  info: [English #hBar() French #hBar() Chinese]
)

#cvSkill(
  type: [Tech Stack],
  info: [Tableau #hBar() Python (Pandas/Numpy) #hBar() PostgreSQL]
)

#cvSkill(
  type: [Personal Interests],
  info: [Swimming #hBar() Cooking #hBar() Reading]
)
