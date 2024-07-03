w-resume:
  typst watch ./resume.typ ./pdf/resume.pdf --font-path ./assets/fonts/ 

w-letter:
  typst watch ./letter.typ ./pdf/Letter.pdf --font-path ./assets/fonts/

resume:
  typst compile ./resume.typ ./pdf/resume.pdf --font-path ./assets/fonts/
  rm -rf ./resume/en/*.pdf 
  rm -rf ./resume/fr/*.pdf 
  rm -rf ./templates/*.pdf 
  rm -rf ./templates/resume/*.pdf 
  rm -rf ./templates/letter/*.pdf 
  rm -rf ./*.pdf 

letter: 
  typst compile ./letter.typ ./pdf/Letter.pdf  --font-path ./assets/fonts/ 
  rm -rf ./resume/en/*.pdf 
  rm -rf ./resume/fr/*.pdf 
  rm -rf ./templates/*.pdf 
  rm -rf ./templates/resume/*.pdf 
  rm -rf ./templates/letter/*.pdf 
  rm -rf ./*.pdf 


clean:
  rm -rf ./pdf/* 
  rm -rf ./resume/en/*.pdf 
  rm -rf ./resume/fr/*.pdf 
  rm -rf ./templates/*.pdf 
  rm -rf ./templates/resume/*.pdf 
  rm -rf ./templates/letter/*.pdf 
  rm -rf ./*.pdf 
