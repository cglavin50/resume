#let experience-entry(
  title,
  company,
  duration,
  location,
  tasks,
) = {
  // Job title and duration on same line
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(size: 12pt, weight: "bold")[#title], text(size: 10pt)[#duration],
  )

  // Company and location on same line
  v(-0.5em)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(size: 10pt, style: "italic")[#company], text(size: 10pt, style: "italic")[#location],
  )

  // Task bullet points with dots and indentation
  v(-0.5em)
  pad(left: 1.5em)[
    #for task in tasks [
      • #task \
    ]
  ]
}

#let experience-section(..entries) = {
  // Section title
  text(size: 14pt)[Experience]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  // Experience entries with indentation
  pad(left: 1em)[
    #for entry in entries.pos() [
      #entry
    ]
  ]
}
