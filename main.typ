#import "components/header.typ": *
#import "components/experience.typ": *
#import "components/education.typ": *
#import "components/projects.typ": *
#import "components/skills.typ": *

#set page("us-letter", margin: 0.75in)

#header("Software Engineer")

#experience-section()

#education-section()

#projects-section()

#skills-section(
  languages: "Typescript, Terraform, C#, Python, Java, Go, Bash",
  certifications: "AWS Cloud Practitioner, Terraform Associate, Azure Fundamentals (AZ-900)",
)
