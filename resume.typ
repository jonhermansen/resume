#import "@preview/modern-cv:0.9.0": *
#show: resume.with(
  author: (
    firstname: "Jon",
    lastname: "Hermansen",
    email: "jon@jh86.org",
    phone: "(+1) 978-905-6967",
    github: "jonhermansen",
    linkedin: "jonhermansen",
    address: "77 Main St, Greenville, NH 03048",
    positions: (
      "Software Developer in Test",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "us-letter",
)

= Summary
SDET with over ten years of experience specializing in test automation, build systems, and continuous integration. Deep background in Linux systems administration, configuration management, and ensuring reproducibility across development and production environments. Active open source contributor passionate about packaging, dependency management, and declarative infrastructure. Interested in all aspects of software processes, from build to deployment.

= Technical Skills
#resume-skill-item(
  "Languages",
  ("TypeScript", "Python", "Perl", "Shell", "Nix"),
)
#resume-skill-item(
  "Build & CI/CD",
  ("Jenkins", "Docker"),
)
#resume-skill-item(
  "Configuration",
  ("Chef", "Puppet", "Terraform"),
)
#resume-skill-item(
  "Testing & Automation",
  ("Playwright", "Cypress", "Selenium"),
)

= Work Experience
#resume-entry(
  title: "Senior UI QA Engineer",
  location: "Lexington, MA",
  date: "June 2019 - February 2023",
  description: "Mimecast (Cybersecurity)",
  title-link: "https://www.mimecast.com/company/",
)
#resume-item[
  - Lead tester on security awareness training and email security products, responsible for end-to-end quality assurance.
  - Built comprehensive test automation suite using Cypress with TypeScript, replacing legacy Selenium-based tests.
  - Designed and implemented reproducible test environments using Chef and Test Kitchen with Docker, enabling proper integration testing where none existed before.
  - Debugged and resolved complex AWS infrastructure issues (EC2, RDS) blocking test environment deployment, working across database schemas, Chef recipes, and cloud configuration.
  - Managed bi-monthly production deployments using Puppet to distribute RPM packages across hundreds of machines in multiple regions and availability zones.
  - Conducted code reviews for Angular frontend and Java backend, contributing to architecture and design discussions.
]

#resume-entry(
  title: "Senior Software Engineer in Test",
  location: "Boston, MA",
  date: "November 2017 - August 2018",
  description: "Eze Software (Financial Technology)",
  title-link: "https://www.ezesoft.com/about-us",
)
#resume-item[
  - Developed automated regression tests for portfolio management frontend using Angular and JavaScript.
  - Refactored legacy BDD testing tool to improve reliability and produce machine-readable output for CI integration.
  - Integrated test suite into Jenkins CI pipeline, implementing flakiness tracking with dashboards to monitor test health trends over time.
  - Led cross-functional QA discussions, sharing testing strategies across product teams.
]

#resume-entry(
  title: "Software Developer In Test",
  location: "Los Angeles, CA",
  date: "August 2015 - February 2017",
  description: "Verizon Digital Media Services (Content Delivery Network)",
  title-link: "https://www.verizondigitalmedia.com/our-company/about/",
)
#resume-item[
  - Lead tester for Azure Portal integration, validating provisioning, authentication, and communication between Verizon CDN services and Microsoft Azure.
  - Built API test framework from scratch using Mocha and icedfrisby, generating tests automatically from Swagger specifications extracted from ASP.NET services.
  - Ported legacy C\# test suite to run on Linux via Jenkins, enabling automated testing after every deployment.
  - Created comprehensive test strategies for HTTP APIs and user interfaces across multiple products.
]

#resume-entry(
  title: "Member of Technical Staff",
  location: "San Jose, CA",
  date: "September 2013 - August 2015",
  description: "Pi-Coral (Block Storage Appliance)",
  title-link: "https://www.crunchbase.com/organization/pi-coral",
)
#resume-item[
  - Designed and deployed Jenkins CI infrastructure from scratch to support continuous integration of FreeBSD-based storage appliance.
  - Automated FreeBSD system image builds using buildworld/buildkernel, cross-compiling on Linux for rapid developer feedback.
  - Optimized build pipeline to support incremental builds, reducing build times and enabling per-commit smoke testing.
  - Developed and maintained iSCSI protocol conformance tests, integrating machine-readable output into Jenkins for automated validation.
  - Implemented performance testing using fio with automated result visualization in Jenkins dashboards.
  - Maintained Python-based RESTful API for appliance management.
  - Updated Cinder driver to support newer OpenStack releases.
]

#resume-entry(
  title: "QA Engineer",
  location: "Los Angeles, CA",
  date: "July 2010 - September 2013",
  description: "Media Temple (Web Hosting)",
  title-link: "https://mediatemple.net/company/about",
)
#resume-item[
  - Automated testing of customer and internal portals using Perl and WWW::Selenium.
  - Implemented Puppet-based configuration management across thousands of Linux servers at web hosting scale.
  - Developed CI infrastructure for automated testing and deployment.
]

= Open Source Contributions
#resume-entry(
  title: "NixOS/nixpkgs",
  location: github-link("NixOS/nixpkgs"),
  date: "July 2025 - Present",
  description: "Open Source",
)
#resume-item[
  - Active contributor with regular merged pull requests for package updates, maintenance, and bug fixes.
  - Package maintainer and member of the NixOS GitHub organization.
]

#resume-entry(
  title: "Additional Projects",
  location: "",
  date: "",
  description: "",
)
#resume-item[
  Contributed to Jenkins plugins, Homebrew, MacPorts, Cypress, Playwright, Protractor, and libiscsi, among many other projects.
]

= Training & Certifications
#resume-entry(
  title: "Architecting on AWS",
  date: "2022",
  description: "Amazon Web Services",
)

#resume-entry(
  title: "CloudBees Jenkins Platform Engineer",
  date: "2016",
  description: "CloudBees",
)

#resume-entry(
  title: "Jenkins Engineer",
  date: "2016",
  description: "Jenkins Project",
)

= Education
#resume-entry(
  title: "Fitchburg State College",
  location: "Fitchburg, MA",
  date: "2004-2005",
  description: "Writing",
)
