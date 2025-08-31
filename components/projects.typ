#let project-entry(title, technologies, duration: "", description) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(size: 12pt, weight: "bold")[#title]
      #if technologies.len() > 0 [
        #text(size: 10pt)[ | ]
        #text(size: 10pt, style: "italic")[#technologies.join(", ")]
      ]
    ],
    text(size: 10pt)[#duration],
  )

  // Task bullet points with dots and indentation
  pad(left: 1.5em)[
    #for bullet in description [
      • #bullet \
    ]
  ]
}

#let projects-section() = {
  text(size: 18pt)[Projects]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  pad(left: 1.5em)[
    #project-entry(
      "Raspberry Pi Homelab",
      (
        "Ansible",
        "Docker",
        "Prometheus",
        "Grafana",
      ),
      duration: "2025",
      (
        "first",
        "second",
      ),
    )
  ]
}
