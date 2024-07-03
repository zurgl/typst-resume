/* Personal Information */
#let firstName = "Yacine"
#let lastName = "El Ayar"
#let personalInfo = (
  phone: "+33 6 95 11 01 26",
  email: "elayar.yacine@gmail.com",
  linkedin: "yacine-elayar",
  homepage: "elayar.fr",
)

/* Resume specific */
#let headerQuoteInternational = (
  "en": [Experienced Data Analyst looking for a full time job starting from now],
  "fr": [Ingénieur logiciel, Analyste de donnée, freelance, actuellement en recherche active],
)

#let cvFooterInternational = (
  "en": "Resume",
  "fr": "Curriculum vitae",
)

/* Letter specific */
#let letterFooterInternational = (
  "en": "Cover Letter",
  "fr": "Lettre de motivation",
)

/* Layout Setting */

// Optional: skyblue, red, nephritis, concrete, darknight
#let awesomeColor = "skyblue" 

// Leave blank if profil photo is not needed
#let profilePhoto = "../../assets/avatar.png" 

// INFO: value must matches folder suffix; i.e "zh" -> "./modules_zh"
#let varLanguage = "fr" 

// Decide if you want to put your company in bold or your position in bold
#let varEntrySocietyFirst = true

// Decide if you want to display organisation logo or not
#let varDisplayLogo = true 