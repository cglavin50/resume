#import "../requirements.typ": *
#let header(title) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    align: (left, right),

    // Left side - Name and title
    [
      #text(size: 24pt, weight: "bold")[Cooper Glavin] \
      #v(-0.75em)
      #text(size: 16pt, style: "italic")[#title]
    ],

    // Right side - Contact information
    align(right)[
      #text(size: 10pt)[
        #box[#text(
            size: 8pt,
          )[#fa-linkedin()] #h(0.3em) #link("https://www.linkedin.com/in/cooper-glavin-5852351aa/")[Cooper Glavin]] \
        #box[#text(size: 8pt)[#fa-phone()] #h(0.3em) #link("tel:+13122416116")[+1 (312) 241-6116]] \
        #box[#text(
            size: 8pt,
          )[#fa-envelope()] #h(0.3em) #link("mailto:cooperglavin@gmail.com")[cooperglavin\@gmail.com]] \
        #box[#text(size: 8pt)[#fa-github()] #h(0.3em) #link("https://github.com/cglavin50")[cglavin50]]
      ]
    ]
  )
}
