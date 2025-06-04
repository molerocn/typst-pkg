#import "languages.typ": *

#let validate-inputs(data, data-type) = {
  if data == (:) {
    panic("At least one " + data-type + " must be defined.")
  }

  if data != (:) {
    data
  }
}


#let print-name(authors) = {
  if type(authors) != content and type(authors) != str {
    if authors.len() == 1 {
      authors.at(0).name
    } else {
      let author-names = authors.map(it => it.name)
    }
  } else {
    authors
  }
}


#let pc = (citation) => {
  set cite(form: "prose")
  citation
}
