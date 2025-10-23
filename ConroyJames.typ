#import "./template.typ": *

// Your personal information replace mine with yours (pls don't steal my identity)
#let name = "James Conroy"
#let location = "San Antonio Texas"
#let email = "James.Conroy@hey.com"
#let phone = "(202) 255-2703"
#let linkedin = "linkedin.com/in/jamesconroy-cua"
#let github = "github.com/JamesMConroy"
// #let portfolio = "aybangueco.vercel.app"
#let experience = years-since(date: datetime(day: 1, month: 6, year: 2021))

#show: resume.with(
  author: name,
  author-position: center,
  // Personal information
  // Below these lines are optional
  // Feel free to comment out and remove them
  location: location,
  email: email,
  phone: phone,
  linkedin: linkedin,
  github: github,
  // portfolio: portfolio,
  personal-info-position: center,
  // Document formatting and values
  // These are already defined by default, feel free to omit or edit them
  color-enabled: true,
  text-color: "#000080",
  font: "Libertinus Serif",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 12pt,
  lang: "en",
)

//#set list(spacing: 0.65em)

== Summary <summary>

DevOps Engineer III with *active security clearance* and *#experience+* years of
experience specializing in automation and testing infrastructure. Led
development of multi-architecture testing frameworks and package
management solutions for air-gapped environments. Proven track record of
reducing development friction and leading technical teams in government
contract space. Seeking a role as Sr. DevOps Engineer.

== Technical Skills <technical-skills>


- *Programming Languages*: Python, GoLang, Shell/Bash
- *Infrastructure*: VMware vSphere/ESXi, Terraform/OpenTofu, Ansible, Docker/Podman
- *CI/CD & Tools*: GitLab CI/CD, Git, Make
- *Operating Systems*: Windows, Linux (RHEL/CentOS, Ubuntu/Debian distributions)


== Work Experience <work-experience>

#work(
  company: "Def-Logix",
  role: "DevOps Engineer III",
  dates: dates-util(start-date: "June 2023", end-date: "Present"),
  location: location,
)

- Led cross-functional team of 3 engineers to design and implement a *Python*
  end-to-end test framework in order to test Red Team tooling

- Replaced legacy windows based test reporting tool with modernized *GoLang*
  application which reduced report generation from 1 week to 15 minutes

- Architected scalable testing infrastructure using *Terraform*, *Ansible*, and
  *GoLang*, supporting 25+ OS/CPU architecture combinations

- Optimized test execution environment using *Ansible* and *Terraform*, reducing
  iteration time from 12+ minutes to 3 minutes

- Introduced mob/pair programming practices, improving team problem-solving
  capabilities and knowledge transfer

- Managed end-to-end testing and reporting for quarterly product releases over
  1+ year, coordinating manual testing efforts and delivering comprehensive
  test reports to stakeholders on schedule

#pagebreak()

#work(
  company: "Def-Logix",
  role: "DevOps Engineer II",
  dates: dates-util(start-date: "Jan 2022", end-date: "June 2023"),
  location: location,
)

- Architected and maintained air-gapped package repository system serving 30-40
  developers across several development teams

- Streamlined secure dependency management by implementing local mirrors of
  *PyPI*, *Linux* distributions, *Rust* and other language-specific
  repositories, reducing environment setup time from 1 day to 30 minutes.

- Reduced dependency-related support tickets from 8+ monthly to 6 annually

- Improved code quality through implementation of automated linting and testing
  processes

- Built custom SAST-to-Jira integration for GitLab CI pipelines using *GoLang*
  to surface security findings without premium licensing reducing cost by \$60k
  annually

- Standardized CI/CD pipelines, resulting in more predictable and reliable
  releases

- Initiated and led technical talks to promote knowledge sharing across
  development teams


#work(
  company: "Def-Logix",
  role: "DevOps Engineer I",
  dates: dates-util(start-date: "June 2021", end-date: "Jan 2022"),
  location: location,
)

- Developed *GoLang* based Rocket.Chat bot to surface open merge requests to project
  channels, reducing code review backlog and improving turnaround time

- Streamlined deployment processes by refactoring complex Makefiles and
  build dependencies

- Developed tools for configuration management and deployment automation
  in air-gapped environment

#work(
  company: "Cigna",
  role: "Associate System Analyst",
  dates: dates-util(start-date: "Oct 2019", end-date: "Jun 2021"),
  location: "St. Louis, Missouri",
)
- Triage and resolve IT tickets in response to monitoring and reported
  issues

- Automated incident response processes, reducing manual intervention
  time

- Developed and maintained Standard Operating Procedures for incident
  management

== Education

#edu(
  institution: "The Catholic University of America",
  location: "Washington DC",
  degree: "Bachelor of Science in Computer Science",
)

// vi: ft=typst
