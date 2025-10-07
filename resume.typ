#import "@preview/modern-cv:0.9.0": *
#show: resume.with(
  author: (
    firstname: "Jon",
    lastname: "Hermansen",
    email: "jon@jh86.org",
    phone: "(+1) 978-905-6967",
    github: "jonhermansen",
    linkedin: "jonhermansen",
    address: "77 Main St, Greenville, NH",
    positions: (
      "Software Developer in Test",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: true,
  paper-size: "us-letter",
)

= Summary
Customer-focused engineer with a background in web development and over ten years of professional experience specializing in web application testing, with a knack for finding unusual bugs using exploratory practices and automated tooling. Extensive experience with build systems, continuous integration, and configuration management. Open source advocate who enjoys programming and experimenting with new technology. Interested in all aspects of software processes, from conception to delivery.

= Technical Skills
#resume-skill-item(
  "Build Systems & CI/CD",
  (strong("Jenkins"), strong("Nix"), strong("Docker"), "NixOS"),
)
#resume-skill-item(
  "Configuration Management",
  (strong("Chef"), strong("Puppet"), "Terraform", "OpenStack", "AWS"),
)
#resume-skill-item(
  "Languages",
  (strong("Python"), strong("JavaScript"), strong("TypeScript"), "Ruby", "Perl"),
)
#resume-skill-item(
  "Testing & Automation",
  ("Cypress", "Protractor", "System Debugging", "RESTful APIs"),
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
  - Lead tester on a security awareness training and phishing simulation product built with Angular.
  - Built and maintained end-to-end and component-level test automation using Cypress with TypeScript, replacing legacy Protractor-based tests.
  - Brought up test environments on AWS infrastructure using Chef and Test Kitchen, enabling proper integration testing where none existed before.
  - Configured Linux systems to use cgroups v1 to enable Test Kitchen functionality with systemd services.
  - Responsible for testing and overall quality of product components.
  - Identified and communicated technical issues, risks, and inter-component dependencies.
  - Heavily involved in development, code reviews, configuration management, and deployments.
  - Frequently assisted other departments in supporting the platform and products.
]

#resume-entry(
  title: "Senior Software Engineer in Test",
  location: "Boston, MA",
  date: "November 2017 - August 2018",
  description: "Eze Software (Financial Technology)",
  title-link: "https://www.ezesoft.com/about-us",
)
#resume-item[
  - Created and expanded automated regression tests for a portfolio management product using Protractor with JavaScript.
  - Improved automated build and test gates within the CI/CD pipeline.
  - Identified XSS vulnerabilities and input validation issues in customer-facing web applications.
  - Refactored in-house testing tools, increasing consistency across test runs and confidence in results.
  - Developed system to track test flakiness over time with dashboards indicating test health trends.
  - Participated and presented in cross-functional QA meetings, collaborating with engineers across different product areas.
]

#resume-entry(
  title: "Software Developer In Test",
  location: "Los Angeles, CA",
  date: "August 2015 - February 2017",
  description: "Verizon Digital Media Services (Content Delivery Network)",
  title-link: "https://www.verizondigitalmedia.com/our-company/about/",
)
#resume-item[
  - Lead tester on a project integrating Verizon's CDN services with Microsoft Azure Portal.
  - Developed testing frameworks and tools from scratch using JavaScript and Python.
  - Contributed to existing testing frameworks and tools written in C\#.
  - Created comprehensive test strategies for proposed HTTP APIs and user interfaces.
  - Developed test cases and plans for current and new products.
]

#resume-entry(
  title: "Member of Technical Staff",
  location: "San Jose, CA",
  date: "September 2013 - August 2015",
  description: "Pi-Coral (Block Storage Appliance)",
  title-link: "https://www.crunchbase.com/organization/pi-coral",
)
#resume-item[
  - Implemented features and bug fixes across the entire product.
  - Designed and deployed CI infrastructure using Jenkins.
  - Responsible for builds, deployments, automated regression testing, and performance testing.
  - Developed a RESTful API for appliance management using Python.
  - Updated in-house Cinder driver for use with OpenStack cloud compute platform.
]

#resume-entry(
  title: "QA Engineer",
  location: "Los Angeles, CA",
  date: "July 2010 - September 2013",
  description: "Media Temple (Web Hosting)",
  title-link: "https://mediatemple.net/company/about",
)
#resume-item[
  - Created automated tests to validate internal and customer portals using Perl.
  - Implemented configuration management and developed libraries to support it using Puppet and Ruby.
  - Developed CI systems for automated testing and deployment.
  - Managed Linux server infrastructure at web hosting scale.
]

= Open Source Contributions
#resume-entry(
  title: "NixOS/nixpkgs Maintainer & Contributor",
  location: github-link("NixOS/nixpkgs"),
  date: "July 2025 - Present",
  description: "Open Source",
)
#resume-item[
  - Merged 50+ pull requests to nixpkgs, including package updates, maintenance, and bug fixes.
  - Added as package maintainer and member of the NixOS GitHub organization.
  - Enhanced nixos-install --flake functionality to improve user experience.
  - Fixed pci.ids file resolution issues affecting virt-manager and related packages.
  - Contributed to repository maintenance by removing unbuildable packages and unused code.
]

#resume-entry(
  title: "Additional Projects",
  location: "",
  date: "",
  description: "",
)
#resume-item[
  Contributed to jenkinsci (Jenkins plugins), Homebrew (build formulae), MacPorts (port files), libiscsi (protocol conformance tests), and picard (music fingerprinting).
]

= Certifications
#resume-entry(
  title: "AWS Certified Solutions Architect - Associate",
  location: "",
  date: "November 2022",
  description: "Amazon Web Services",
)

#resume-entry(
  title: "CloudBees Jenkins Platform Engineer",
  location: "San Francisco, CA",
  date: "2016",
  description: "CloudBees",
)

#resume-entry(
  title: "Jenkins Engineer",
  location: "San Francisco, CA",
  date: "2016",
  description: "Jenkins Project",
)

= Education
#resume-entry(
  title: "Fitchburg State College",
  location: "Fitchburg, MA",
  date: "2004-2005",
  description: "General Education",
)
