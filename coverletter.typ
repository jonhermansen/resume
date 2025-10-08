#import "@preview/modern-cv:0.9.0": *
#show: coverletter.with(
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
  show-footer: false,
  closing: block[],
  paper-size: "us-letter",
  description: "Anduril cover letter for Jon Hermansen",
)
#hiring-entity-info(
  entity-info: (
    target: "Company Recruitment Team",
    name: "Anduril Industries",
    street-address: "83 Hartwell Ave",
    city: "Lexington, MA 02421",
  ),
)
#letter-heading(job-position: "Senior Software Engineer, Nix", addressee: "Sir or Madame")

= About Me
#coverletter-content[
I'm writing to apply for the Senior Software Engineer position at Anduril. My Linux journey began over 25 years ago, building PCs and installing Linux in the 90s. Early exposure to hacker culture shaped my approach to problem-solving and system exploration. Professionally, I scaled from managing lab systems for developers into QA and development roles, gaining experience with systems at scal.e

I deepened my technical understanding through Gentoo, exploring package dependencies and build systems in depth. That path naturally led me to Nix, where declarative, reproducible infrastructure finally connected all my past experience. I continue to manage my own systems end-to-end, including open-source firmware, emphasizing rigorous control over hardware, software, and configuration.
]

= Why Anduril?
#coverletter-content[
I want to contribute to work that defends personal freedoms and supports the mission of those serving our country. Anduril's integration of modern software practices into defense technology aligns perfectly with my goal of applying technical expertise to meaningful, high-impact problems. My background across cybersecurity, low-level systems, and managing Linux infrastructure has prepared me to adapt quickly and maintain reliability in complex environments.
]

= Why Me?
#coverletter-content[
My career combines Linux expertise, QA, and systems engineering. I realized that testing has little value unless the system under test closely matches production; if production is not reproducible, test results cannot be trusted. This insight has shaped how I design, debug, and maintain systems.

More recently, my work with Nix has been the culmination of this experience. I contribute actively to nixpkgs and maintain reproducible systems, applying lessons from years of managing dependencies, debugging production incidents, and optimizing build systems. My focus on complete system integrity—from firmware to software—demonstrates a level of rigor relevant to defense and high-assurance computing.
]

#text(0.95em, weight: "light")[Sincerely,]
#v(0em)
#text(1em, weight: "bold")[Jon Hermansen]
