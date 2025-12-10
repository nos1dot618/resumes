#import "template/lib.typ": *

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
      - Contributed to the development of ZLUA, a core component of ZL Tech's unified cloud-native data governance platform, used by Fortune 500 enterprises to manage unstructured data at scale.
      - Designed and implemented backend features using Java, C\#, JSP, and XML, integrating with Apache Tomcat, Maven, Tika, and Ant for deployment and content processing.
    ]

    #work-heading(
      [Research Assistant | #emph(link("https://gitlab.com/vsqoe", "GitLab Project Organization"))],
      [Networks and Systems Security Lab - IIITD | #link("https://iiitd.ac.in/IHERN/joinus.php", "Website")],
      "Delhi, India",
      datetime(year: 2024, month: 5, day: 1),
      datetime(year: 2025, month: 5, day: 1),
    )[
      - *Objective:* Address quality degradation in video streaming applications when fallback from QUIC to TCP occurs due to UDP blocking.
      - *Solution:* Implemented a mechanism to send notifications in QUIC packets to anticipate UDP blocking. Server logs the kernel congestion window state to be used in the upcoming TCP connection. Improved user experience by avoiding TCP slow start, thus preventing buffering during fallback.
    ]
  ]
]

#let awards-section() = [
  #custom-title("Awards")[
    Awarded *Summer Undergraduate Research Fellowship* in 2023 by IRD-IIITD for the project _"Utilizing ultrasonic distance sensors as a mapping tool to design user-friendly CST"_. \
    Awarded *CHANAKYA Fellowship* by *iHub Anubhuti Foundation* in 2024 for the project _"A Unified Approach to User Emotion Detection through Emojis and Textual Analysis"_.
  ]
]
