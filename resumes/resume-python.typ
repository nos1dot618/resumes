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
  gitlab-username: "ninthcircle",
)

#education-section()

#work-experience-section()

#custom-title("Projects")[
  #project-heading(
    "AI Customer Service Agent",
    "https://gitlab.com/ninthcircle/ai-customer-service-agent",
    datetime(year: 2025, month: 5, day: 1),
    datetime(year: 2025, month: 7, day: 1),
  )[
    - Built an end-to-end AI-powered customer service agent using Python and LiveKit supporting real-time voice and chat interactions.
    - Designed backend workflows for continuous knowledge-base improvement, asynchronous task processing, and conversational context management. Integrated REST/WebSocket APIs and modular service components to enable scalable multi-channel customer support automation.
  ]

  #project-heading(
    "Real-Estate Match",
    "https://gitlab.com/ninthcircle/realestate-match",
    datetime(year: 2025, month: 7, day: 1),
    datetime(year: 2025, month: 9, day: 1),
  )[
    - Developed a full-stack real estate platform using Django enabling property discovery and interaction workflows for buyers and sellers.
    - Designed relational database schemas and backend APIs for property listings, user management, and matchmaking functionality. Implemented frontend-backend integration, authentication workflows, and scalable CRUD operations for dynamic application features.
  ]

  #project-heading(
    "Quorum — Distributed Key-Value Store",
    "https://gitlab.com/ninthcircle/quorum",
    datetime(year: 2026, month: 1, day: 1),
    datetime(year: 2026, month: 3, day: 1),
  )[
    - Engineered a distributed key-value store in Java with focus on scalable backend architecture and inter-node communication.
    - Implemented data storage and synchronization mechanisms to support distributed systems experimentation and fault-tolerant design concepts.
    - Built modular backend components for request handling, persistence, and concurrent access management in a multi-node environment.
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
