#import "components/header.typ": *
#import "components/experience.typ": *
#import "components/education.typ": *
#import "components/projects.typ": *
#import "components/skills.typ": *

#set page("us-letter", margin: 0.5in)
#set par(leading: 0.5em)
#set text(font: "Liberation Sans")

// #let data = yaml("data/devops.yaml")
#let data = yaml("data/fullstack.yaml")

#header(data.header.title)

#experience-section(
  ..data.experiences.map(exp => experience-entry(
    exp.role,
    exp.company,
    exp.duration,
    exp.location,
    // use a map to translate strings to content, allowing us to render markdown text properly
    exp.bullets.map(bullet => eval("[" + bullet + "]")),
  )),
)
#education-section()

#projects-section(
  ..data.projects.map(proj => project-entry(
    proj.name,
    proj.technologies,
    proj.bullets.map(p => eval("[" + p + "]")),
  )),
)

#skills-section(
  languages: data.skills.languages,
  technologies: data.skills.technologies,
  certifications: data.skills.certifications,
)
