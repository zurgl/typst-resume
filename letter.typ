#import "templates/main.typ": letterHeader, layout, letterSignature, letterFooter
#show: layout
#set text(size: 12pt) //set global font size

#letterHeader(
  myAddress: [1 Rue Gonnet \ 75003 Paris, France], recipientName: [ABC Company], recipientAddress: [15 Boulevard Roi \ 75011 Paris, France], date: [03/07/2024], subject: "Subject: Job Application for Tech Leader",
)

Dear Hiring Manager,

....

Thank you for considering my application. I look forward to the opportunity to
discuss my qualifications further.

Sincerely,

#letterSignature("/assets/signature.png")
#letterFooter()

