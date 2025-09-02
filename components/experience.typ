#let experience-entry(title, company, duration, location, tasks) = {
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

#let experience-section() = {
  // Section title
  text(size: 14pt)[Experience]
  v(-1em)
  line(length: 100%, stroke: 0.5pt + gray)

  // Experience entries with indentation
  pad(left: 1em)[
    #experience-entry(
      "Software Developer",
      "Easy Dynamics Corp",
      "Jul 2024 -- Present",
      "McLean, VA",
      (
        "Implemented Auth0 integration with *Python (FastAPI)* for user-management system, leading to first sale of new web application *(TypeScript, React, MUI)*.",
        "Developed responsive, mobile-friendly pages with *TypeScript and React*",
      ),
    )

    #experience-entry(
      "Software Engineer",
      "Digital Solutions LLC",
      "Jun 2020 - Dec 2021",
      "Austin, TX",
      (
        "Developed responsive web applications using React and Node.js",
        "Optimized database queries resulting in 40% performance improvement",
        "Participated in agile development process and sprint planning",
        "Built RESTful APIs consumed by mobile and web applications",
      ),
    )

    #experience-entry(
      "Junior Developer",
      "StartupCorp",
      "Aug 2019 - May 2020",
      "Remote",
      (
        "Built frontend components using modern JavaScript frameworks",
        "Wrote comprehensive unit tests achieving 85% code coverage",
        "Assisted in migration from legacy systems to cloud infrastructure",
        "Contributed to open-source projects and internal tooling",
      ),
    )
  ]
}
