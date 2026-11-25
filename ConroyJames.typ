#import "./template.typ": *
#import "@local/florilegium:2.1.0": florilegium

#let garden = sys.inputs.at("garden", default: "false") == "true"
#set page(paper: "us-letter")

#show: if garden {
  florilegium.with(
    margin: (left: 60mm, right: 15mm, top: 15mm, bottom: 15mm),
  )
} else {
  it => it
}
#let garden = sys.inputs.at("garden", default: "false") == "true"

// Your personal information replace mine with yours (pls don't steal my identity)
#let name = "James Conroy"
#let location = "Northern Virginia"
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
  author-font-size: 20pt,
  font-size: 12pt,
  lang: "en",
  margin: if garden { none } else { 1in },
)

//#set list(spacing: 0.65em)

== Summary <summary>

Senior DevOps Engineer with an *active security clearance* and *#experience+*
years building CI/CD, infrastructure as code and test infrastructure for
security-critical, embedded and air-gapped systems. Known for turning
unreliable pipelines into fast, trustworthy ones.

== Technical Skills <technical-skills>


- *Programming Languages*: Python, GoLang, Shell/Bash
- *Infrastructure*: Kubernetes (k3s), VMware vSphere/ESXi, Proxmox, OpenStack, Terraform/OpenTofu, Ansible, Docker/Podman, QEMU
- *CI/CD & GitOps*: GitLab CI/CD, Flux, Git, Make
- *Observability*: Prometheus, Grafana
- *Operating Systems*: Linux (RHEL/CentOS, Ubuntu/Debian distributions)


== Work Experience <work-experience>

#work(
  company: "Two Six Technologies",
  role: "Senior DevOps Engineer",
  dates: dates-util(start-date: "December 2025", end-date: "Present"),
  location: "Arlington Virginia",
)

- Own CI/CD for two security-critical embedded product teams, a trusted
  computing platform and a Hardware Security Module (HSM), on *GitLab CI*

- Raised *PetaLinux* (*Yocto*) pipeline success from 20% to 81% and cut build
  times from 45 to 20 minutes by reworking runner storage and moving the
  sstate cache from NFS to *S3* object storage on *OpenStack*

- Cut median *Go* build time from 12–18 minutes to ~3 (p90: 35–42 down to ~7 minutes)

- Took over an internal artifact dependency manager and rolled it out to every
  product job, eliminating artifact-pull failures that caused ~half of all
  embedded build failures

- Built hardware-free over-the-air (OTA) update testing in *QEMU*, so firmware
  upgrades are validated on every merge request instead of queuing for limited
  hardware-in-the-loop (HIL) servers

- Rebuilt the HSM provisioning pipeline with typed inputs, trusted-only gating
  for HIL tests and fail-fast checks, cutting asset check-in failures from 65%
  to 18% and hardware update failures from 50% to ~20%

- Overhauled a team's *Terraform* for *Proxmox* VM deployments: moved state
  out of Git into *GitLab*-managed remote state with locking, replaced a
  script that copied modules into scratch directories with native module
  calls, and added `terraform plan` on every merge request

- Replaced long-lived access tokens in pipelines with scoped `CI_JOB_TOKEN`
  auth and deleted the old tokens entirely, then trained the IT organization
  on the pattern

#work(
  company: "Def-Logix",
  role: "DevOps Engineer III",
  dates: dates-util(start-date: "June 2023", end-date: "November 2025"),
  location: "San Antonio Texas",
)

- Led cross-functional team of 3 engineers to design and implement a *Python*
  end-to-end test framework in order to test Red Team tooling

- Replaced legacy windows based test reporting tool with modernized *GoLang*
  application which reduced report generation from 1 week to 15 minutes

- Architected testing infrastructure with *Terraform*, *Ansible* and *GoLang*
  supporting 25+ OS/CPU architecture combinations, cutting iteration time from
  12+ minutes to 3

- Ran end-to-end testing and reporting for quarterly product releases for over
  a year, delivering test reports to stakeholders on schedule

#work(
  company: "Def-Logix",
  role: "DevOps Engineer II",
  dates: dates-util(start-date: "Jan 2022", end-date: "June 2023"),
  location: "San Antonio Texas"
)

- Architected and maintained air-gapped package repository system serving 30-40
  developers across several development teams

- Built local mirrors of *PyPI*, *Linux* distributions, *Rust* and other
  package repositories, cutting environment setup from 1 day to 30 minutes

- Reduced dependency-related support tickets from 8+ monthly to 6 annually

- Built custom SAST-to-Jira integration for GitLab CI pipelines using *GoLang*
  to surface security findings without premium licensing reducing cost by \$60k
  annually



#work(
  company: "Def-Logix",
  role: "DevOps Engineer I",
  dates: dates-util(start-date: "June 2021", end-date: "Jan 2022"),
  location: "San Antonio Texas"
)

== Projects <projects>

#project(name: "Kubernetes Homelab")

- Run a mixed amd64/arm64 *k3s* cluster on old laptops and Raspberry Pi 5s,
  managed through *GitOps* with *Flux* and monitored with *Prometheus* and
  *Grafana*

- Deployed an LLM chat service via *Flux*, calling hosted models through *OpenRouter*

- Built an in-cluster AI agent pipeline: a dispatcher polls *Linear* for
  labeled issues and turns them, one at a time, into pull requests for review

== Education

#edu(
  institution: "The Catholic University of America",
  location: "Washington DC",
  degree: "Bachelor of Science in Computer Science",
)

// vi: ft=typst
