#import "components/header.typ": *
#import "components/experience.typ": *
#import "components/education.typ": *
#import "components/projects.typ": *
#import "components/skills.typ": *

#set page("us-letter", margin: 0.75in)
#set text(font: "Liberation Sans")

#header("Software Engineer")

#experience-section()

#education-section()

#projects-section()

#skills-section(
  languages: "Typescript, Terraform, C# (.NET), Python, Java, Go, Bash",
  technologies: "Docker, GitHub Actions, Azure, AWS",
  certifications: "AWS Cloud Practitioner, Terraform Associate, Azure Fundamentals (AZ-900)",
)
