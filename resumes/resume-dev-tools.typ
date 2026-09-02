#import "/template/lib.typ": *
#import "/resumes/sections.typ": *

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: "Lakshay Chauhan",
  phone: "(+91) 99114 30026",
  email: "lakshay@9th.fun",
  website: "9th.fun",
  linkedin-user-id: "nos1dot618",
  github-username: "nos1dot618",
)

#education-section()

#work-experience-section()

#custom-title("Projects")[
  #project-heading(
    "Axiom Text Editor",
    "https://github.com/nos1dot618/axiom",
    datetime(year: 2025, month: 12, day: 1),
    "Present",
  )[
    - _*Key Skills:* C\#, .NET, Language Server Protocol (LSP), Desktop Applications, Editor Architecture_
    - Developed a native Windows text editor with multi-language support and Language Server Protocol integration for intelligent code editing features. Implemented modular editor components including syntax highlighting, file management, and extensible language tooling, focusing on maintainable architecture and responsive UI design.
  ]

  #project-heading(
    "Quorum Distributed Coordination System",
    "https://github.com/nos1dot618/quorum",
    datetime(year: 2025, month: 10, day: 1),
    datetime(year: 2025, month: 12, day: 1),
  )[
    - _*Key Skills:* Distributed Systems, Consensus Algorithms, Networking, Fault Tolerance, Systems Programming_
    - Implemented a distributed coordination service inspired by quorum-based consensus mechanisms for maintaining consistency across nodes. Designed message protocols and state synchronization logic to handle leader coordination, replication, and fault tolerance in distributed environments.
  ]

  #project-heading(
    "Java Developer Tools",
    "https://github.com/nos1dot618/java-dev-tools",
    datetime(year: 2025, month: 8, day: 1),
    datetime(year: 2025, month: 10, day: 1),
  )[
    - _*Key Skills:* Java, Developer Tooling, CLI Utilities, Build Systems, Software Engineering Automation_
    - Built a collection of developer productivity tools in Java to automate common development tasks and streamline workflows. Designed modular command-line utilities for code analysis, project management, and development automation with emphasis on extensibility and clean software engineering practices.
  ]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:*  C, C++, Rust, Assembly, Java, Kotlin, JavaScript, Python, Bash, Haskell
    - *Frameworks:* PyTorch, Django, ReactJS, Numpy, Pandas, Tauri, LibGDX, Raylib
    - *Developer Tools:* Emacs, Linux, Git, GDB, Markdown, Google Cloud Platform, OpenLiteSpeed, SqlLite3
    - *Technical Electives:* Data Structures \& Algorithms, Operating Systems, Cryptography, Database Management, Computer Security, Computer Networks, Compilers, Machine Learning, Natural Language Processing
  ]
]

#awards-section()
