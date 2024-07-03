#import "../../templates/resume/section.typ": cvSection
#import "../../templates/resume/entry.typ": cvEntry
#import "@preview/fontawesome:0.1.0": *


#let innerList(str) = {
  text(fill: rgb("#343a40"), {
    v(-2pt)
    str
  })
}

#cvSection("Expérience Professionnelle")

#cvEntry(
    title: [Freelance],
    society: [YetAnotherSolution],
    date: [Février 2021 - Présent],
    location: [Troyes, France],
    description: list(
      [Conseil en ingénierie des S.I auprès d'entreprise nationale et internationale],
      [Focus prioritaire sur les nouvelles technologies et leur intégration],
      [Blockchain, IA générative, résilience et fiabilité des S.I.]
    ),
    logo: "yas.png",
    tags: ("Solana", "Typescript", "Rust", "PyTorch", "Linux", "Next.js", "Git", "IA Générative", "LLM" , "Stable Diffusion")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Solana Smart Contract Dev],
    society: [Figment - Solana],
    date: [Février 2022 - Septembre 2022],
    location: [Remote, Canada],
    description: list(
      [ Développement d'un smart contract sur Solana pour la création d'une plateforme web de création de contenu, à la "Medium".],
      [ Emission de deux tokens: un "Soul Bond Token" pour gérer les droits d'accès, un token utilitaire pour récompenser les membres.],
      [ Les fonctions du contract permettent "on-chain": la gestion de la communauté (DAO-like), le sponsoring des créateurs, la proposition, la validation, la révision et la publication de nouveaux contenus.],
    ),
    logo: "fig-sol.png",
    tags: ("Solana", "SPL", "Rust", "linux", "DAO", "Soul bond token", "JIRA", "Scrum", "DAO", "Système d'économie de jetons"),
    double: "yes",
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ethereum Smart Contract Dev],
    society: [Figment - Ethereum],
    date: [Novembre 2021 - Fevrier 2022],
    location: [Remote, Canada],
    description: list(
      [ Création d'un smart contract sur Ethereum ciblant l'étape 0 du projet Ethereum 2.0: "Beacon Chain".],
      [ L'objet du contract est la création de "batch de transaction" facilitant le stacking massif d'ETH (jusqu'à 100 x 32 ETH).],
      [ Audit externe, validation et deploiement du contrat sur la "Beacon Chain" en production.],
),
    logo: "fig-eth.png",
    tags: ("Git", "Solidity", "Ethereum 2.0", "Smart contract Auditing", "Smart Contract Hardening", "Stacking"),
    double: "yes",
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur logiciel - Content writer],
    society: [Figment],
    date: [Avril 2021 - Octobre 2021],
    location: [Remote, Canada],
    description: list(
      [ Création de tutoriels pour diverses blockchains afin de diffuser les compétences de base en codage pour le web3.],
      [ Depuis une application NextJS et en React: #innerList(list(
        [ Connexion au wallet et soumission de transaction], 
        [ Récupération des donnée liées au wallet],
        [ Intéraction avec des contracts "on-chain"],
        [ Codage et déploiement de smart contract],
      ))],
      [ Périmètre: Solana, CELO, TheGraph, APTOS, Tezos, Avalanche, Arweave, NEAR, Polygon, Polkadot, Ethereum],
    ),
    logo: "figment.png",
    tags: ("Typescript", "Next.js", "Github", "React", "Rust", "Solidity", "Move", "Markdown", "HTML/CSS")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Enseignant de Mathématiques],
    society: [Cours Saint-François de Sales],
    date: [Septembre 2017 - Août 2020],
    location: [Paris, France],
    description: list(
      [Gestion de classes et transmission des savoirs.],
      [Création de supports de cours et évaluation des élèves.],
    ),
    logo: "sfds.png",
    tags: ("Gestion de groupe", "Résolution des conflits", "Pédagogie", "Latex", "GeoGebra", "Scratch")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur recherche et développement],
    society: [Université Technologique de Troyes],
    date: [Avril 2016 - Juin 2017],
    location: [Paris, France],
    description: list(
      [Recours à théorie des graphes pour modéliser et résoudre des problèmes de planifications.],
      [Implémentation de la solution sous la forme d'une bibilothèque C++.],
      [Intégration de la solution sous la forme d'un service web interfaçant la lib C++ et les usagers du système d'information.],
    ),
    logo: "utt.png",
    tags: ("Théorie des graphes", "Recherche opérationnelle", "Planification", "C++", "Git", "Oracle", "PHP", "HTLM/CSS", "API", "FFI")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Enseignant de Mathématiques],
    society: [Ministère de l'Éducation nationale],
    date: [Janvier 2013 - Septembre 2015],
    location: [Paris, France],
    description: list(
      [Répetiteur à domicile en sciences auprès d'élèves de tous niveaux, du collège jusque BAC+2.],
      [Enseignant de sciences au CFA],
      [Chargé de TD en mathématiques financière au sein de Y-Schools],
    ),
    logo: "marie.png",
    tags: ("Ecole de commerce", "CFA", "Enseignement", "Pédagogie")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Globetrotteur, Polymathe],
    society: [Période de césure],
    date: [Janvier 2012 - Décembre 2012],
    location: [Troyes, France],
    description: list(
      [Année de césure dédiée aux voyages et à la veille scientifiques concernant les applications de la théories des catégories à la conception de nouveau langage de programmation.]
    ),
    logo: "globe.png",
    tags: ("Théorie des Topos", "Theorie des catégories", "Programmation fonctionnelle", "Lambda Calcul", "Haskell", "LISP", "Théorie des types")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur logiciel],
    society: [Cetelem],
    date: [Juin 2011 - Décembre 2011],
    location: [Paris, France],
    description: list(
      [En charge de l'évolution de l'application de calculs du risque de défaut des crédits à la consommation.],
      [Mise en place d'un nouveau schéma de partitionnement des jeux de donnée à l'aide d'un algorithme de hachage.],
      [Cette amélioration a permis la parallélisation des caculs offrant un gain de performance important dans la production des indicateurs.],
    ),
    logo: "cetelem.png",
    tags: ("SAS", "Langage C", "Bash scripting", "Linux", "Big Data")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur recherche et développement, Data Analyste],
    society: [BNP Arbitrage],
    date: [Mars 2010 - Janvier 2011],
    location: [Paris, France],
    description: list(
      [Collaboration avec les analystes quantitatifs à l'évolution applicative d'une solution intégrant tous les fournisseurs de données financières.],
      [Normalisation et "cleaning" de 1 To de donnée journalière.],
      [Création d'un nouveau pipeline dédié à l'indice VIX.],
      [Consolidation du référentiel interne pour supprimer les données en double.],
    ),
    logo: "bnp.png",
    tags: ("Reuters", "Bloomberg", "Linux", "Python", "HDF5", "SQLite", "C++", "Linux", "Langage C")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur logiciel, Gestion des risques],
    society: [Société Générale],
    date: [Février 2009 - Décembre 2009],
    location: [Paris, France],
    description: list(
      [En charge de la maintenance et de l'évolution d'une application d'évaluation des risques financiers sur les fonds d'investissement.],
      [Implémentation de la "Value At Risque" sur l'intégralité du périmètre.],
      [Implémentation de 8 scénarios de "Stress Test", portant sur des variations importantes des: Taux, Devises, Actions, Bonds],
      [Mise en place d'un reporting quotidien diffusant les indicateurs de risques aux équipes de gestion avant l'ouverture des marchés],
    ),
    logo: "sg.png",
    tags: ("Excel", "Java", "Visual Basic", "RiskData", "Control-M")
)

$/*   -----------------------------  */$

#cvEntry(
    title: [Ingénieur logiciel, Chef de Projet],
    society: [State Street Corporation],
    date: [Juin 2007 - Décembre 2008],
    location: [Paris, France],
    description: list(
      [Reengineering d'une application chargée de l'attribution de performance de fonds financiers.],
      [Leader de la migration (Outsourcing) du système d'information du middle office d'AXA IM au profit de SSC. Migration incluant la réecriture en Java de 40 applications chargées de l'inventaire, de la valorisation et du reporting des produits financiers d'AXA IM.],
    ),
    logo: "ssc.png",
    tags: ("MS Access", "Java", "VBA", "Excel", "SQL", "Gestion de projet")
)

$/*   -----------------------------  */$
#cvEntry(
    title: [Statisticien, Analyste de Donnée],
    society: [EDF],
    date: [Juin 2006 - Mai 2007],
    location: [Noisy-le-Grand, France],
    description: list(
      [Analyse statistique portant sur l'optimisation des stocks des pièces de rechanges pour les sites de production nucléaire.],
      [Fourniture d'indicateurs aux logisticiens pour gérer leur protefeuille de commande.]
    ),
    logo: "edf.png",
    tags: ("Excel", "SAS", "SQL", "ERP", "VBA")
)

#v(50pt)