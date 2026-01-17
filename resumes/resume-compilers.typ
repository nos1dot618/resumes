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
    "Exploring Compiler Optimizations",
    "https://github.com/nos1dot618/cop",
    datetime(year: 2024, month: 11, day: 1),
    datetime(year: 2025, month: 2, day: 1),
  )[
    - _*Key Skills:*  Compiler Optimization, Compiler Passes, Garbage Collectors, Type Safety, LLVM, C, C++_
    - Developed LLVM-based compiler and runtime systems including a null pointer dereference detection pass, a conservative bump-pointer garbage collector for C with root scanning, and memory safety mechanisms enforcing spatial and weak type safety through bounds tracking and invalid pointer prevention.
  ]

  #project-heading(
    "Task-Based Parallel Runtime Library",
    "https://github.com/nos1dot618/quill",
    datetime(year: 2025, month: 1, day: 1),
    datetime(year: 2025, month: 4, day: 1),
  )[
    - _*Key Skills:* Parallel Programming, Runtime Systems, C++, Multithreading, NUMA_
    - Designed and implemented a task-based parallel runtime library focused on efficient management of concurrent tasks using a worker-based model to minimize synchronization overhead.
    - Developed multiple custom runtime systems including async-finish, energy-efficient, numa-aware, receiver-initiated, and trace-and-replay runtime to explore scalability, energy efficiency, and memory locality across heterogeneous hardware.
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
