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
  gitlab-username: "ninthcircle",
)

#education-section()

#work-experience-section()

#custom-title("Projects")[
  #project-heading(
    "Minimal Compiler Infrastructure",
    "https://gitlab.com/ninthcircle/irl",
    datetime(year: 2024, month: 5, day: 1),
    "Present",
  )[
    - _*Key Skills:* Compiler Infrastructure, Design and Optimization, Rust, FASM, WASM, Graphviz_
    - Developed a minimal compiler infrastructure inspired by LLVM. It converts source code into an optimized control flow graph (CFG) and translates it into target-specific assembly code.
    - Implemented CFG optimization passes, such as identifier validation, constant folding, and CFG simplification, ensuring high-performance code generation.
  ]

  #project-heading(
    "Exploring Compiler Optimizations",
    "https://gitlab.com/ninthcircle/cop",
    datetime(year: 2024, month: 11, day: 1),
    datetime(year: 2025, month: 2, day: 1),
  )[
    - _*Key Skills:*  Compiler Optimization, Compiler Passes, Garbage Collectors, Type Safety, LLVM, C, C++_
    - Developed LLVM-based compiler and runtime systems including a null pointer dereference detection pass, a conservative bump-pointer garbage collector for C with root scanning, and memory safety mechanisms enforcing spatial and weak type safety through bounds tracking and invalid pointer prevention.
  ]

  #project-heading(
    "Garbage Collector for C",
    "https://gitlab.com/ninthcircle/gcc",
    datetime(year: 2025, month: 2, day: 1),
    "Present",
  )[
    - _*Key Skills:* Runtime Systems, C, Garbage Collection, Memory Management, Systems Programming_
    - Developed a conservative mark-and-sweep garbage collector for C with an 8-byte aligned bump allocator and segmented heap design.
    - Implemented stack, heap, and global-root scanning for automatic memory reclamation.
    - Designed page-level memory management using `mmap`, `mprotect`, and `madvise`.
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
