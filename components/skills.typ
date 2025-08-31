#let skills-section(
  languages: "",
  frameworks: "",
  certifications: "",
  technologies: "",
) = {
  text(size: 18pt)[Technical Skills]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  pad(left: 1em)[
    #text(size: 12pt, weight: "bold")[Languages: ] #text(size: 12pt)[#languages] \
    #text(size: 12pt, weight: "bold")[Technologies: ] #text(size: 12pt)[#technologies] \
    #text(size: 12pt, weight: "bold")[Certifications: ] #text(size: 12pt)[#certifications]
  ]
}
