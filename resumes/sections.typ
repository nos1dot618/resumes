#import "/template/lib.typ": *

#let education-section() = [
  #custom-title("Education")[
    #education-heading(
      "Indraprastha Institute of Information Technology (IIIT) Delhi",
      "Delhi, India",
      "Bachelor of Technology",
      "Computer Science and Engineering",
      datetime(year: 2021, month: 7, day: 1),
      datetime(year: 2025, month: 6, day: 1),
    )[]
  ]
]

#let work-experience-section() = [
  #custom-title("Work Experience")[
    #work-heading(
      "Member of Technical Staff",
      [ZL Technologies, Inc | #link("https://www.zlti.com", "Website")],
      "Hyderabad, India",
      datetime(year: 2025, month: 7, day: 1),
      "Present",
    )[
      - Developed task synchronization and bulk parallel processing mechanisms across clusters within ZL's analytics module, achieving over 100% performance improvement.
      - Implemented task completion time estimation and duplicate item detection for large-scale data loading workflows processing millions of items.
    ]

    #work-heading(
      [Research Assistant | #emph(link("https://gitlab.com/vsqoe", "Gitlab Project Organization"))],
      [Networks and Systems Security Lab - IIITD | #link("https://iiitd.ac.in/IHERN/joinus.php", "Website")],
      "Delhi, India",
      datetime(year: 2024, month: 5, day: 1),
      datetime(year: 2025, month: 5, day: 1),
    )[
      - Researched mechanisms to mitigate video streaming quality degradation during fallback from QUIC to TCP caused by UDP blocking.
      - Implemented QUIC-based notification signaling and kernel congestion window state reuse to bypass TCP slow start, reducing buffering and improving user experience during fallback transitions.
    ]
  ]
]

#let awards-section() = [
  #custom-title("Awards")[
    - Awarded the *Summer Undergraduate Research Fellowship* (2023) by *IRD-IIITD* for the project _"Utilizing Ultrasonic Distance Sensors as a Mapping Tool to Design User-Friendly CST"_.
    - Awarded the *CHANAKYA Fellowship* (2024) by *iHub Anubhuti Foundation* for the project _"A Unified Approach to User Emotion Detection through Emojis and Textual Analysis"_.
  ]
]
