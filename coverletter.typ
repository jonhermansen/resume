#import "@preview/modern-cv:0.9.0": *
#show: coverletter.with(
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
  show-footer: false,
  paper-size: "us-letter",
  description: "Anduril cover letter for Jon Hermansen",
)
#hiring-entity-info(
  entity-info: (
    target: "Tom Bereknyei",
    name: "Anduril Industries",
    street-address: "83 Hartwell Ave",
    city: "Lexington, MA 02421",
  ),
)
#letter-heading(job-position: "Senior Software Engineer, Nix", addressee: "Tom")

= About Me
#coverletter-content[
I'm writing to apply for the Senior Software Engineer, Nix position at Anduril. My Linux journey started over 25 years ago when my stepfather, who worked with Unix systems and programmed in C, got me interested in building computers. We'd go to computer trade shows together, and eventually built our own PC at home. I still remember setting physical jumpers on the motherboard and reading all the documentation. Getting Linux to boot, configuring X, setting up dial-up internet—it was a total pain in the 90s, but looking back, it was formative.

During high school, I took a Unix course at summer camp that really accelerated my understanding of system administration. Around the same time, I got involved in the local 2600 meetups in Central Massachusetts and attended HOPE conferences. That hacker culture—both the "making cool stuff" kind and the security kind—has been with me ever since. I even got my A+ certification and started repairing PCs, which eventually led to my first real role at IBRIX, managing lab systems and learning about automated Linux provisioning with Cobbler.

The real turning point was discovering the Gentoo handbook. I spent countless hours installing Linux from source, understanding USE flags and dependency trees. It was confusing at first, but incredibly illuminating. I've also done Linux From Scratch, and I've been distro hopping ever since, always looking for more control and better ways to manage systems. That journey led me to Nix.

I tried Nix in 2023 but didn't get it. This year, after taking time for international travel in Thailand and Vietnam—where my brother lives with his family—I came back refreshed and decided to revisit building a security-focused Linux distribution. This time, the declarative approach clicked. I realized I'd spent years documenting setup steps and configuration tweaks, when I could have been encoding them in a reproducible way. After experiencing production incidents caused by unreproducible environments at my last job, I understood that most configuration management tools aren't truly reproducible. Nix is the antidote. In the past few months, I've contributed 50+ merged pull requests to nixpkgs and was added as a package maintainer. I'm currently running NixOS on custom hardware with Dasharo Coreboot firmware that I compiled and verified myself—because system security goes beyond just software.
]

#pagebreak()

= Why Anduril?
#coverletter-content[
I'm a proud American, and I want to contribute to work that protects the personal freedoms we value—including the right to free speech and free thought. I have family and friends who serve in the armed forces, and I want to support their mission through meaningful technical work. Your approach to bringing modern software practices to defense technology is exactly what I want to be part of.

I've adapted to many different industries throughout my career—cybersecurity, financial technology, content delivery networks, storage systems, and web hosting at scale—and I'm excited to apply my skills in defense. At Media Temple, I managed Linux infrastructure at web hosting scale, including colocation facilities where we managed both the systems and the hardware. That experience taught me what it takes to keep systems running reliably under real-world conditions.

I'm also a guitarist and have been recording music for years, which has gotten me interested in realtime kernels and signal processing. I imagine that kind of low-latency, deterministic thinking would be valuable in an environment where timing matters for autonomous systems.
]

= Why Me?
#coverletter-content[
I genuinely love working with Nix, and I think my background makes me well-suited for this role. The Gentoo experience taught me to think deeply about dependencies and build systems, and that same mindset applies directly to Nix packaging work. My QA background has made me detail-oriented in ways that matter for getting packages right—I've contributed to MacPorts, Homebrew, and Fedora in the past, and I enjoy the meticulous work of understanding build systems across different languages.

At my previous role, I experienced the pain of unreproducible systems firsthand. We had ad-hoc AMI builds, systems running pip install on startup, and production incidents caused by transitive dependency updates. During one emergency drill, I diagnosed a chmod minus x issue on a systemd service within minutes, and people were grateful someone had the Linux debugging skills to figure it out quickly. Those experiences taught me the value of reproducibility and why Nix matters.

I've worked extensively with Chef and Puppet for configuration management at scale, and I've seen their limitations. At Mimecast, I built out test environments on AWS using Chef and Test Kitchen, solving a problem that had blocked proper integration testing. At Pi-Coral, I designed and deployed Jenkins CI infrastructure from scratch. I understand what it takes to manage builds, deployments, and infrastructure at scale.

I know you've used Nix in diverse contexts—from small teams to large organizations, from academic research to operational environments—and I'd love to learn from that experience. I want to work with practitioners who can teach me more about Nix at scale. I think my combination of Linux expertise, testing background, systems debugging skills, and genuine passion for Nix would make me a good addition to your team. I'm excited about the possibility of working on reproducible infrastructure for defense systems, and I'd love to discuss how I can contribute.
]

#v(1em)

Thank you for your consideration. I look forward to the opportunity to discuss this position further.

#v(1em)

Sincerely,

Jon Hermansen
