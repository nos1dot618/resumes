#import "template/lib.typ": *
#import "sections.typ": *

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
    "Minimal Compiler Infrastructure 'irl'",
    "https://github.com/nos1dot618/irl",
    datetime(year: 2024, month: 5, day: 1),
    "Present",
  )[
    - _*Key Skills:* Compiler Infrastructure, Design and Optimization, Rust, FASM, WASM, Graphviz_
    - Developed a minimal compiler infrastructure inspired by LLVM. It converts source code into an optimized control flow graph (CFG) and translates it into target-specific assembly code.
    - Implemented CFG optimization passes, such as identifier validation, constant folding, and CFG simplification, ensuring high-performance code generation.
  ]

  #project-heading(
    "C Federated Machine Learning Library 'Cerberus'",
    "https://github.com/nos1dot618/cerberus",
    datetime(year: 2024, month: 11, day: 1),
    datetime(year: 2025, month: 2, day: 1),
  )[
    - _*Key Skills:* C Programming, Federated Learning, Machine Learning, Networking, Distributed Systems_
    - Built a federated learning framework in C enabling distributed clients to collaboratively train models without sharing raw data.
    - Implemented socket-based client-server communication and global model aggregation across multiple training participants.
  ]

  #project-heading(
    "Real Estate Aggregator Platform '25acres'",
    "https://github.com/W1NDSOR/25acres",
    datetime(year: 2024, month: 4, day: 1),
    datetime(year: 2025, month: 5, day: 1),
  )[
    - _*Key Skills:* System Design, Rest API, Authentication, Cryptography, Security, Django, Python_
    - Developed a comprehensive real estate aggregator platform designed to secure transactions and protect user data by implementing advanced security protocols like end-to-end encryption and Kerberos authentication.
    - Integrated multiple security features, including SSL, HTTPS, PKI, OTP, SQLite, Nginx, and e-signatures, which collectively reduced fraud incidents by 85\%.
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
