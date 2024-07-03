#import "../../templates/resume/section.typ": *
#import "../../templates/resume/entry.typ": *
#import "@preview/fontawesome:0.1.0": *

#v(10pt)

#cvSection("Formation")

#cvEntry(
    title: [Master en Mathématiques Appliquées],
    society: [Université de Reims Champagne-Ardenne],
    date: [2003 - 2006],
    location: [France],
    description: list(
      [Mathématiques appliquées à la finance et à l'industrie: modélisation statistique, processus stocastiques, réseaux de neurones.],
      [Thèse de Master: Application de l'équation de Black scholes pour le pricing de produits dérivés.],    
    ),
    logo: "reims.png",
    tags: ("C++", "Langage R", "MATHLAB", "Pricing de produits financiers", "SAS", "Réseaux de neurones")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Lycée Clemenceau et Roosevelt, Reims],
    society: [CPGE],
    date: [2000 - 2003],
    location: [France],
    description: list(
      [Classe de mathématiques Spéciales, option science de l'ingénieur.],
      [Classe de mathématiques Supérieures, option informatique.],
    ),
    logo: "cpge.png",
)
