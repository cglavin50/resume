#let education-section() = {
  // Section title
  text(size: 14pt)[Education]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  v(-0.5em)
  pad(left: 1.5em)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 12pt, weight: "bold")[Georgetown University], text(size: 10pt)[Washington, DC],
    )
    #v(-0.5em)
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 10pt, style: "italic")[Bachelor of Science in Computer Science, Minor in Mathematics - 3.89 GPA],
      text(
        size: 10pt,
        style: "italic",
      )[August 2020 - May 2024],
    )
  ]
}
