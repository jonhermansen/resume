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
  profile-picture: image("profile.png"),
  date: datetime.today().display(),
  language: "en",
  // colored-headers: true,
  show-footer: false,
  paper-size: "us-letter",
  description: "Cover letter",
)

#hiring-entity-info(
  entity-info: (
    target: "Company Recruitement Team",
    name: "Google, Inc.",
    street-address: "1600 AMPHITHEATRE PARKWAY",
    city: "MOUNTAIN VIEW, CA 94043",
  ),
)

#letter-heading(job-position: "Software Engineer", addressee: "Sir or Madame")

= About Me
#coverletter-content[
  #lorem(80)
]

= Why Google?
#coverletter-content[
  #lorem(90)
]

= Why Me?
#coverletter-content[
  #lorem(100)
]
