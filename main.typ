#import "components/header.typ": *
#import "components/experience.typ": *
#import "components/education.typ": *
#import "components/projects.typ": *
#import "components/skills.typ": *

#set page("us-letter", margin: 0.75in)
#set text(font: "Liberation Sans")

#header("Software Engineer")

#experience-section(
  experience-entry(
    "Software Developer / DevSecOps Engineer",
    "Easy Dynamics Corp",
    "Jul 2024 -- Present",
    "McLean, VA",
    (
      [Collaborated with cross-functional teams to deliver *secure, scalable infrastructure* for government clients, focusing on reliability and compliance.],
      [Built and maintained *Terraform modules* for Azure (AKS, networking, Service Bus, SQL, storage, Front Door CDN) to accelerate delivery team velocity and ensure *FedRAMP High compliance*.],
      [Designed and optimized *CI/CD pipelines* (GitHub Actions) for Terraform and application deployments, including automated linting, testing, and dependency management.],
      [Configured cloud-native services (Azure Front Door, VNets, App Service, Function Apps) to align with evolving client requirements and business needs.],
      [Developed internal tooling and documentation to support adoption of platform resources, ensuring quality, consistency, and compliance across teams.],
    ),
  ),
  experience-entry(
    "Research Assistant",
    "Georgetown University",
    "Jan 2023 -- May 2024",
    "Washington, DC",
    (
      [Research secure communication protocols (TCP/IP, DNS, BGP, ESNI, ECH) and drafted paper with findings - emphasizing network resiliency and data privacy.],
      [Built a *peer-to-peer* messaging system in *Go* (Libp2p), implementing end-to-end encyption, pub/sub messaging, relaying, and proxying for secure networking.],
    ),
  ),
  experience-entry(
    "Software Engineer Intern",
    "Heimdall Data",
    "Newark, CA",
    "Aug 2023 -- Apr 2024",
    (
      [Improved logging and query caching in a *JDBC database proxy*, boosting reliability and performance.],
      [Automated AWS product registration workflows via APIs and EC2 metadata, increasing customer retention and sales.],
    ),
  ),
  experience-entry(
    "Solutions Architect Intern",
    "Telos Corp",
    "Ashburn, VA",
    "Jun 2022 -- Oct 2022",
    (
      [Automated security ingestion pipeline with *Python + AWS Lambda*, adding Wazuh support for risk and compliance automation platform.],
    ),
  ),
)

#education-section()

#projects-section(
  project-entry(
    "Raspberry Pi Homelab",
    (
      "Ansible",
      "Docker",
      "Prometheus",
      "Grafana",
    ),
    duration: "2025",
    (
      [Designed and deployed a containerized homelab infrastructure with *Ansible* for host provisioning, UFW for firewall automation, and *Docker* for service configuration],
      [Engineered an automated *CI/CD* pipeline with *Github Action* self-hosted runners for deployment version-control],
      [Built real-time observability stack with *Prometheus*, *Grafana*, and *Alert Manager* - integrated with Discord to provide incident notifications],
    ),
  ),
  project-entry(
    "Mens Ultimate Frisbee Club Slack Bot",
    (
      "Python (Flask)",
      "Docker",
      "AWS",
    ),
    duration: "June 2023 - May 2024",
    (
      [Created a fitness tracker bot with leaderboards and activity logs using *Python* (Flask) and the Slack API],
      [Deployed with *Docker* to *AWS*, using *terraform* to provision AWS VPC, Lightsail Instance, static IP, and automated backups],
    ),
  ),
)

#skills-section(
  languages: "Typescript, Terraform, C# (.NET), Python, Java, Go, Bash",
  technologies: "Docker, GitHub Actions, Azure, AWS",
  certifications: "AWS Cloud Practitioner, Terraform Associate, Azure Fundamentals (AZ-900)",
)
