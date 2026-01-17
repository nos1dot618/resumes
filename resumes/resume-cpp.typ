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
    "Minimal Compiler Infrastructure",
    "https://github.com/nos1dot618/irl",
    datetime(year: 2024, month: 5, day: 1),
    "Present",
  )[
    - _*Key Skills:* Compiler Infrastructure, Design and Optimization, Rust, FASM, WASM, Graphviz_
    - Developed a minimal compiler infrastructure inspired by LLVM. It converts source code into an optimized control flow graph (CFG) and translates it into target-specific assembly code.
    - Implemented CFG optimization passes, such as identifier validation, constant folding, and CFG simplification, ensuring high-performance code generation.
  ]

  #project-heading(
    "Immediate-Mode GUI Framework",
    "https://github.com/nos1dot618/voyage",
    datetime(year: 2024, month: 2, day: 1),
    datetime(year: 2024, month: 5, day: 1),
  )[
    - _*Key Skills:*  C/C++, Graphics Programming, Systems Programming, UI Frameworks, Rendering Pipelines_
    - Designed and implemented a lightweight immediate-mode GUI framework from scratch using a low-level graphics library. Built a real-time rendering loop, input/event handling system, and modular UI components with minimal abstraction overhead. 
    - Focused on performance, explicit state management, and predictable memory usage for interactive applications.
  ]

  #project-heading(
    "Needham Shcroeder Based PDF Print Server",
    "https://github.com/nos1dot618/keyden",
    datetime(year: 2025, month: 3, day: 1),
    datetime(year: 2025, month: 5, day: 1),
  )[
    - _*Key Skills:* C/C++, Networking, Cryptography, Client-Server Systems, Security Protocols_
    - Implemented a secure client-server print service using the Needham–Schroeder authentication protocol. Designed custom request/response messaging and session validation to prevent unauthorized access. Gained hands-on experience with low-level networking, protocol correctness, and security-aware systems design.
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
