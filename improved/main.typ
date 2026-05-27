/*
=== NOTICE ===
This template uses the Font Awesome 7 Desktop icons
You can download the fonts here: https://fontawesome.com/download
You either need to install them on your system, or upload them
to your project folder if you use the Typst web app.
*/

#import "@preview/lavandula:0.1.1": *

#show: lavandula-theme

#set text(lang: "en")
#set document(
  title: "John Doe (CV)",
  author: "John Doe",
  date: none,
)

#cv(
  sidebar-position: "left",
  sidebar: [
    = Ignacio Casso
    ==== Software Engineer

    #contact-list((
      (icon: "location", text: "Barcelona"),
      (icon: "at", icon-solid: true, text: link("mailto:ignacio.casso.work@mailbox.org")[ignacio.casso.work\@mailbox.org]),
      (icon: "linkedin", text: link("https://linkedin.com/in/ignacio-casso")[linkedin.com/in/ignacio-casso]),
      // (icon: "pencil", text: link("https://blog.johndoe.com/")),
      // (icon: "phone", text: "(123) 456-789"),
    ))

    #sidebar-section(title: "About me")[
        #set par(justify: true)
        #show par: it => block(width: 100%, it)

        Software engineer with 5 years of experience spanning research
        and backend development. Proactive, fast learner, motivated by
        new challenges and continuos growth, and with a strong
        interest in exploring new domains beyond my core experience
        and broadening my skill set rather than over-specializing.

      // Creative and detail-oriented Software Engineer with over
      // #highlight[5 years of experience] building responsive web
      // applications and dynamic backend services.

      // Passionate about #highlight[clean code],
      // #highlight[user-first design], and #highlight[scalable
      // solutions]. I thrive in fast-paced environments and love
      // collaborating across teams to bring ideas to life.
    ]

    #sidebar-section(title: "Technical skills")[

      #skill-group(
        name: "Main Programming Languages",
        icon: "python",
        skills: (
          "Python",
          "Java",
        )
      )


      #skill-group(
        name: "Backend development",
        icon: "database",
        skills: (
          "Spring Boot",
          "FastAPI",
          "PostgreSQL",
          "Kafka",
        )
      )

      #skill-group(
        name: "Cloud & Infrastructure",
        icon: "cloud",
        icon-solid: true,
        skills: (
          "Kubernetes",
          "Docker",
          "Terraform",
          "Helm",
          "FluxCD",
          "Azure",
        )
      )

      #skill-group(
        name: "Observability & CI/CD",
        icon: "cloud",
        icon-solid: true,
        skills: (
          "Datadog",
          "Github Actions",
        )
      )

      #skill-group(
        name: "Other",
        icon: "tools",
        skills: (
          "Bash",
          "Behave",
          "C/C++",
          "Clojure",
          "Emacs Lisp",
          "Emacs",
          "Git",
          "Haskell",
          "LaTeX",
          "MSSQL",
          "Maven",
          "Prolog",
          "REST",
          "Rust",
          "Typst",
        )
      )
    ]

    #sidebar-section(title: "Languages")[
      #skill-levels((
        // Example flag icons from https://github.com/gosquared/flags/tree/master/flags/flags-iso/shiny/64 (under MIT license)
        (icon: image("assets/flags/es.png"), text: "Spanish", level: 100%),
        (icon: image("assets/flags/gb.png"), text: "English", level: 95%),
          (icon: image("assets/flags/de.png"), text: "German", level: 30%),
      ))
    ]
  ],
  main-content: [
    #section(title: "Work Experience")[
      #section-element(
        title: "Software Engineer @ Midokura (A Sony Group Company)",
        info: [_2022 --- 2025_],
        [
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "shield-halved", text: [Backend software engineer on the cloud component of Sony AITRIOS, supporting remote configuration, management and telemetry ingestion for edge AI camera devices.]),
              (icon: "shield-halved", text: [Worked in a team with strong engineering best practices and operational ownership: code reviews, automated testing (unit, integration, E2E), CI/CD, on-calls and incident managemnt, infrastructure as code, observability, etc]),
              (icon: "wrench", text: [Backend stack: Java | Python | Bash | PostgreSQL | Kafka | MSSQL | Spring | FastAPI | Maven ]),
              (icon: "wrench", text: [Reliability stack:  Datadog | Github Actions | Kubernetes | Helm | Docker | Flux | Terraform | Azure | Git | Behave]),
          ))
        ],
      )

      #section-element(
        title: "Software Engineer @ Capitole Consulting",
        info: [_2022 --- 2023_],
        [
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "shield-halved", text: [Working for Midokura as a contractor until I was hired there directly, so see above for details]),
          ))
        ],
      )

      #section-element(
        title: "Research Intern @ IMDEA Software Institute",
        info: [_2018 --- 2020_],
        [
          #set text(size: sizes.text-s2)
          #icon-list((
              (icon: "scroll", text: [Researched static analysis and testing within the #link("https://ciao-lang.org")[#highlight[Ciao]] Development Team and #link("https://cliplab.org")[#highlight[CLIP Lab]] group.]),
            (icon: "react", text: [Research Topics: Logic Programming, Program Assertions, Abstract Interpretation, Test Case Generation.]),
              (icon: "wrench", text: [Technologies used: Prolog | LaTeX | Git | Emacs]),
          ))
        ],
      )

/*
      #section-element(
        title: "Software Engineering Intern @ Mad Tech",
        info: [_2017_],
        lorem(20),
      )
*/
    ]

    #section(title: "Education")[
      #section-element(
        title: "Master in Artificial Intelligence",
        info: [_2019 --- 2021_],
        [
          #set text(size: sizes.text-s2)
            Universidad Politécnica de Madrid
            #h(1fr)
            #highlight[Cumulative GPA: 8,26/10]
        ],
      )

      #section-element(
        title: "Degree in Computer Science",
        info: [_2012 --- 2018_],
        [
          #set text(size: sizes.text-s2)
            Universidad Complutense de Madrid
            #h(1fr)
            #highlight[Cumulative GPA: 8,54/10]
        ],
      )

      #section-element(
        title: "Degree in Mathematics",
        info: [_2012 --- 2018_],
        [
          #set text(size: sizes.text-s2)
            Universidad Complutense de Madrid
            #h(1fr)
            #highlight[Cumulative GPA: 8,2/10]
        ],
      )
    ]

    #show link: it => underline(text(fill: blue)[#it])

    #section(title: "Achievements")[
      #section-element(title: "Publications")[
        #set text(size: sizes.text-s2)
        #icon-list((
            (icon: "book", text: [_Towards Computing Abstract Distances in Logic Programs_ - #link("https://link.springer.com/chapter/10.1007/978-3-030-45260-5_4")[_LOPSTR 2020_]]),
            (icon: "book", text: [_An Integrated Approach to Assertion-Based Random Testing in Logic Programs_ - #link("https://link.springer.com/chapter/10.1007/978-3-030-45260-5_10")[_LOPSTR 2020_]]),
            (icon: "book", text: [_Testing Your (Static Analysis) Truths_ - #link("https://link.springer.com/chapter/10.1007/978-3-030-68446-4_14")[_LOPSTR 2021_]]),
        ))
      ]

      #section-element(title: "Awards")[
        #set text(size: sizes.text-s2)
        #icon-list((
          (icon: "trophy", text: [#highlight[Honours Distinction in Master Thesis (2021)]: Awarded a distinction (Matrícula de Honor) by the UPM for an oustanding Master Thesis.]),
            (icon: "medal", text: [#highlight[Academic Excellence Scholarships (2012-2014)]: Three times recipient of the academic excellence scholarship for graduate students.]),
        ))
      ]

/*
      #section-element(title: "Projects")[
        #set text(size: sizes.text-s2)
        #icon-list((
          (icon: "pepper-hot", text: [MyMealz: a React Native app to plan, share and rate meals (#highlight[10K+ downloads]).]),
          (icon: "star", icon-solid: true, text: [AI-Powered Portfolio Analyzer: built a tool using GPT-4 API to give feedback on resumes.]),
        ))
      ]
*/

/*
      #section-element(title: "Contributions")[
        #set text(size: sizes.text-s2)
        #icon-list((
          (icon: "github", text: [Regular contributor to `react-hook-form` and `is-even` on GitHub.]),
          (icon: "gitlab", text: [Submitted over 40 PRs across 10+ public repositories.]),
        ))
      ]
*/
    ]

  ],
)
