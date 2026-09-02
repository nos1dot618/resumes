#import "/template/lib.typ": *
#import "/resumes/sections.typ": *

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: "Lakshay Chauhan",
  phone: "99114 30026",
  email: "lakshay@9th.fun",
  website: "9th.fun",
  linkedin-user-id: "nos1dot618",
  github-username: "nos1dot618",
)

#education-section()

#work-experience-section()

#custom-title("Projects")[
  #project-heading(
    "Quorum — Distributed Key-Value Store",
    "https://gitlab.com/ninthcircle/quorum",
    datetime(year: 2026, month: 1, day: 1),
    datetime(year: 2026, month: 3, day: 1),
  )[
    - Engineered a distributed key-value store in Java, focusing on scalable backend architecture, inter-node communication, and fault-tolerant request processing.
    - Designed data replication and synchronization mechanisms to maintain consistency across multiple nodes under concurrent workloads. Built modular networking, persistence, and concurrency components enabling reliable request handling and distributed systems experimentation.
  ]

  #project-heading(
    "Quill — Task-Based Parallel Runtime Library",
    "https://gitlab.com/ninthcircle/quill",
    datetime(year: 2025, month: 9, day: 1),
    datetime(year: 2025, month: 12, day: 1),
  )[
    - Developed a task-based parallel runtime library in C++ for efficient execution of concurrent workloads across worker threads.
    - Implemented work scheduling, task dispatch, and synchronization primitives to maximize throughput while minimizing coordination overhead.
    - Designed reusable abstractions for parallel execution, improving scalability and resource utilization in multithreaded applications.
  ]

  #project-heading(
    "Analysis of Congestion Control algos in TCP Variants",
    "https://gitlab.com/ninthcircle/cctl-analysis",
    datetime(year: 2024, month: 8, day: 1),
    datetime(year: 2024, month: 11, day: 1),
  )[
    - Conducted performance analysis of TCP congestion control algorithms using C++, evaluating throughput, latency, and network behavior under varying conditions.
    - Built benchmarking and data collection workflows to compare algorithmic trade-offs across multiple TCP variants. Investigated protocol-level optimization techniques and system bottlenecks, strengthening understanding of low-latency networking and performance engineering.
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
