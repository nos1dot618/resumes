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
    "Task-Based Parallel Runtime Library",
    "https://github.com/nos1dot618/quill",
    datetime(year: 2025, month: 1, day: 1),
    datetime(year: 2025, month: 4, day: 1),
  )[
    - *Key Skills:* Parallel Programming, Runtime Systems, C++, Multithreading, NUMA
    - Designed a task-based parallel runtime using a worker-based model to minimize synchronization overhead.
    - Developed async-finish, energy-efficient, NUMA-aware, receiver-initiated, and trace-and-replay runtimes to study scalability and memory locality.
  ]

  #project-heading(
    "Minimal Compiler Infrastructure",
    "https://github.com/nos1dot618/ebe",
    datetime(year: 2024, month: 5, day: 1),
    "Present",
  )[
    - *Key Skills:* Compiler Infrastructure, Optimization, Rust, FASM, WASM, Graphviz
    - Developed a minimal LLVM-inspired compiler that converts source code into optimized CFGs and target-specific assembly.
    - Implemented CFG optimization passes including identifier validation, constant folding, and CFG simplification.
  ]

  #project-heading(
    "TCP Congestion Window Analysis with eBPF",
    "https://github.com/nos1dot618/cwndebpf",
    datetime(year: 2024, month: 11, day: 1),
    datetime(year: 2024, month: 12, day: 1),
  )[
    - *Key Skills:* C/C++, Linux Kernel, eBPF, TCP/IP, Systems Programming
    - Developed eBPF programs to observe and modify TCP congestion windows via kernel hooks and user-space BPF maps.
    - Implemented kernel-user space interaction using libbpf and bpftool for runtime control, tracing, and performance analysis.
  ]
]

#open-source-section()

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:*  C, C++, Rust, Assembly, Java, Kotlin, JavaScript, Python, Bash, Haskell
    - *Frameworks:* PyTorch, Django, ReactJS, Numpy, Pandas, Tauri, LibGDX, Raylib
    - *Developer Tools:* Emacs, Linux, Git, GDB, Markdown, Google Cloud Platform, OpenLiteSpeed, SqlLite3
  ]
]

#awards-section()
