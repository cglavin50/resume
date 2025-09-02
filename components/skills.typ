#let skills-section(
  languages: "",
  frameworks: "",
  certifications: "",
  technologies: "",
) = {
  text(size: 14pt)[Technical Skills]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  pad(left: 1em)[
    #text(size: 10pt, weight: "bold")[Languages: ] #text(size: 10pt)[#languages] \
    #text(size: 10pt, weight: "bold")[Technologies: ] #text(size: 10pt)[#technologies] \
    #text(size: 10pt, weight: "bold")[Certifications: ] #text(size: 10pt)[#certifications]
  ]
}
