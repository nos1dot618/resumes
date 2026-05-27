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
    "Quorum — Distributed Key-Value Store",
    "https://gitlab.com/ninthcircle/quorum",
    datetime(year: 2026, month: 1, day: 1),
    datetime(year: 2026, month: 3, day: 1),
  )[
    - Built a distributed key-value store in Java supporting concurrent client requests and inter-node communication for scalable data storage.
    - Designed core distributed system components including request routing, replication mechanisms, and fault-tolerant data handling Applied concepts of networking, synchronization, and scalable backend architecture.
  ]

  #project-heading(
    "AI Customer Service Agent",
    "https://gitlab.com/ninthcircle/ai-customer-service-agent",
    datetime(year: 2025, month: 5, day: 1),
    datetime(year: 2025, month: 7, day: 1),
  )[
    - Developed an end-to-end AI-powered customer service agent with real-time voice and chat capabilities using LiveKit and Python.
    - Implemented continuously evolving knowledge-base integration and asynchronous workflows for contextual response generation. Worked with event-driven systems, LLM integration, and scalable backend orchestration.
  ]

  #project-heading(
    "JDBC Transaction-Based Locking Mechanism for Java",
    "https://gitlab.com/ninthcircle/transaction-lock-java",
    datetime(year: 2026, month: 2, day: 1),
    datetime(year: 2026, month: 3, day: 1),
  )[
    - Implemented a database-backed distributed locking mechanism in Java using JDBC transactions and row-level locks.
    - Enabled synchronization across threads, processes, and multiple application instances while ensuring transactional consistency and concurrency safety. Explored concepts such as isolation levels, deadlock prevention, and reliable coordination in distributed environments.
  ]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Java, Python, C, C++, Rust, JavaScript, SQL, Bash
    - *Frameworks \& Technologies:* ReactJS, Django, PyTorch, REST APIs, gRPC, LiveKit, Raylib
    - *Databases:* PostgreSQL, SQLite3, Elasticsearch, MsSQL, MongoDB
    - *Developer Tools \& Platforms:* Git, Linux, Docker, Emacs, Gradle, Maven, Google Cloud Platform (GCP), GDB, OpenLiteSpeed
    - *Core Concepts:* Data Structures \& Algorithms, Distributed Systems, Operating Systems, Database Management Systems, Computer Networks, Object-Oriented Programming, Concurrency \& Synchronization, Compiler Design, Machine Learning
  ]
]

#awards-section()
