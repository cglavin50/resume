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
  text(size: 14pt)[Projects]
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
        [Designed and deployed a containerized homelab infrastructure with *Ansible* for host provisioning, UFW for firewall automation, and *Docker* for service configuration],
        [Engineered an automated *CI/CD* pipeline with *Github Action* self-hosted runners for deployment version-control],
        [Built real-time observability stack with *Prometheus*, *Grafana*, and *Alert Manager* - integrated with Discord to provide incident notifications],
      ),
    )
    #project-entry(
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
    )
  ]
}
