defmodule GAT.Training.Data do
  alias GAT.Training.Course

  @data [
    %{
      id: "1",
      title: "ATPL Integrated",
      description:
        "This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline. Gulf Air Academy’s Integrated ATPL Course is (EASA) approved & designed to give you the exact knowledge and expertise to meet the requirements of all the major airline companies around the world. Once you finish this course, you will be ready to take a right seat in all the major airlines!",
      duration: "12 - 18",
      duration_type: "Months",
      featured_image: "atpl-integrated.jpg",
      inclusions: [
        "Uniform",
        "Accommodation [Optional]",
        "Transportation",
        "Studing Materials & Books [All Subjects]",
        "CBT [Computer Based Training]",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Air Transport Management Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation, with an extra charge, and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "55000",
      pay_in_advance: "51000",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          header: [
            "Phase",
            "Theoretical Knowledge",
            "Flight Training"
          ],
          rows: [
            [
              "Phase 1",
              "Stage1: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision",
              "13 Flying hours SEP"
            ],
            [
              "Phase 2 & 3",
              "Stage2: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision\nBrush-ups",
              "20 Flying hours SEP\n48.5 Flying hours\nSEP/IR/PBN"
            ],
            [
              "Phase 4",
              "Stage3: Revision & Preparation for HCAA Examinations.\nHCAA Exams",
              "100 Flying hourse\nSEP/MEP/SIM"
            ],
            [
              "Phase 5",
              "N/A",
              "48.5 Flying hours\nSIM/Advanced\nMCC/Advanced UPRT"
            ]
          ],
          footer: "Total Flight Hours: 230 Hours"
        }
      ]
    },
    %{
      id: "2",
      title: "ATPL Integrated + FI + Job Opportunity",
      description:
        "In this course, the student is taken from zero experience all the way to a guaranteed job opportunity with Gulf Air Academy in less than 2 Years. The immediate job placement we offer is due to our pilots being trained with the highest standards, thus making them ready to fulfil the job requirements without the need for any additional training, as usually requested by other training organizations. At the end of this course, you will get:\n Integrated Airline Transport Pilot License\nFlight Instructor Rating\nJob Placement with Gulf Air Academy\n Upon completion of this course, the student will start his career right away by getting offered a job in Gulf Air Academy as a flight instructor.",
      duration: "15 - 21",
      duration_type: "Months",
      featured_image: "ATPLFIJob-Opportunity.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees",
        "Fuel",
        "Tax Free"
      ],
      notes: "",
      price: "66000",
      pay_in_advance: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          header: [
            "Phase",
            "Theoretical Knowledge",
            "Flight Training"
          ],
          rows: [
            [
              "Phase 1",
              "Stage1: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision",
              "13 Flying hours SEP"
            ],
            [
              "Phase 2 & 3",
              "Stage2: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision\nBrush-ups",
              "20 Flying hours SEP\n48.5 Flying hours\nSEP/IR/PBN"
            ],
            [
              "Phase 4",
              "Stage3: Revision & Preparation for HCAA Examinations.\nHCAA Exams",
              "100 Flying hourse\nSEP/MEP/SIM"
            ],
            [
              "Phase 5",
              "N/A",
              "48.5 Flying hours\nSIM/Advanced\nMCC/Advanced UPRT"
            ]
          ],
          footer: "Total Flight Hours: 230 Hours"
        },
        %{
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Total Flight Training"
          ],
          rows: [
            [
              "(2 to 3) Months",
              "Stage1: Advanced FI Theoretical Training & Lectures (Full Ground School Training)",
              "30 Hours\nAdvanced flight training"
            ]
          ],
          footer: "Graduation & Immediate Job Placement"
        }
      ]
    },
    %{
      id: "3",
      title: "ATPL Integrated + Accommodation",
      description:
        "One of our main courses offered is the ATPL Integrated Course. This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline.\nGulf Air Academy’s Integrated ATPL Course is (EASA) approved & designed to give you the exact knowledge and expertise to meet the requirements of all the major airline companies around the world. Once you finish this course, you will be ready to take a right seat in all the major airlines!",
      duration: "12 - 18",
      duration_type: "Months",
      featured_image: "ATPLAccommodation.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (for 16 months)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "59900",
      pay_in_advance: "",
      installments: "62900",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          header: [
            "Phase",
            "Theoretical Knowledge",
            "Flight Training"
          ],
          rows: [
            [
              "Phase 1",
              "Stage1: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision",
              "13 Flying hours SEP"
            ],
            [
              "Phase 2 & 3",
              "Stage2: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision\nBrush-ups",
              "20 Flying hours SEP\n48.5 Flying hours\nSEP/IR/PBN"
            ],
            [
              "Phase 4",
              "Stage3: Revision & Preparation for HCAA Examinations.\nHCAA Exams",
              "100 Flying hourse\nSEP/MEP/SIM"
            ],
            [
              "Phase 5",
              "N/A",
              "48.5 Flying hours\nSIM/Advanced\nMCC/Advanced UPRT"
            ]
          ],
          footer: "Total Flight Hours: 230 Hours"
        }
      ]
    },
    %{
      id: "4",
      title: "ATPL + Aircraft Engineer Licence",
      description:
        "One of our main courses offered is the ATPL Integrated Course. This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline.\nGulf Air Academy’s Integrated ATPL Course is (EASA) approved & designed to give you the exact knowledge and expertise to meet the requirements of all the major airline companies around the world. Once you finish this course, you will be ready to take a right seat in all the major airlines!",
      duration: "14 - 20",
      duration_type: "Months",
      featured_image: "ATPLAircraft-Engineer.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Aircraft Engineer Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "85000",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Flight Training"
          ],
          rows: [
            [
              "2 months",
              "IR theoretical sessions simultaneously with the flight training",
              "50 hours flight training SIM/actual"
            ]
          ],
          footer: "Graduation"
        }
      ]
    },
    %{
      id: "5",
      title: "ATPL + Air Transport Management",
      description: """
      <p>One of our main courses offered is the ATPL Integrated Course. This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline.</p>

      <p>This course is designed to save the student 2 years of his life. The student will be studying to get 2 certificates simultaneously (Airline Transport Pilot License + Air Transport Management).</p>

      <h3>At the end of this course, you will have:</h3>

      <ul>
        <li>Airline Transport Pilot License</li>
        <li>Air Transport Management Certificate</li>
      </ul>
      """,
      duration: "14 - 20",
      duration_type: "Months",
      featured_image: "ATPLAir-Transport-Management.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Air Transport Management Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "62250",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          header: [
            "Sequence",
            "Module"
          ],
          rows: [
            [
              "Stage1",
              "Tourism & Air Transport Industry"
            ],
            [
              "Stage2",
              "Aviation Law & International Relations (EASA-IATA-UFTAA-ICAO-BSP)"
            ],
            [
              "Stage3",
              "Airlines Organization & Operation"
            ],
            [
              "Stage4",
              "Customer Service (Handling)"
            ],
            [
              "Stage5",
              "Airport Operation"
            ],
            [
              "Stage6",
              "Aviation Marketing & Ramp Management"
            ],
            [
              "Stage7",
              "Leadership & Management"
            ]
          ],
          footer: "END OF PHASE 2 Graduation"
        }
      ]
    },
    %{
      id: "6",
      title: "ATPL + Flight Dispatcher",
      description: """
      <p>One of our main courses offered is the ATPL Integrated Course. This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline.</p>

      <p>This course is designed to save the student 2 years of his life. The student will be studying to get 2 certificates simultaneously (Airline Transport Pilot License + Flight Dispatcher).</p>

      <h3 class="text-base font-bold text-gray-700">At the end of this course, you will have:</h3>

      <ul>
        <li>Airline Transport Pilot License</li>
        <li>Flight Dispatcher</li>
      </ul>
      """,
      duration: "14 - 20",
      duration_type: "Months",
      featured_image: "ATPLFlight-Dispatcher.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Flight Dispatcher Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "62000",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "ATPL Integrated",
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Total Flight Training"
          ],
          rows: [
            [
              "(0 to 3) Months",
              "Stage1: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision",
              "N/A"
            ],
            [
              "(4 to 7) Months",
              "Stage2: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision<br />
              Brush-ups",
              "75 Flying hours (Basic & Intermediate)"
            ],
            [
              "(8 to 11) Months",
              "Stage3: Revision & Preparation for HCAA Examinations.<br />
              HCAA Exams",
              "120 Flying hours (Intermediate & Advanced)"
            ],
            [
              "(12 to 18) Months",
              "N/A",
              "201 Advanced Flight Training + Multi Engine + Night Rating + MCC<br />
              *Flight Skill Test"
            ]
          ],
          footer: "END OF PHASE 1 Graduation"
        },
        %{
          header: [
            "Sequence",
            "Module"
          ],
          rows: [
            [
              "Stage1",
              "Air Law"
            ],
            [
              "Stage2",
              "Aircraft General Knowledge"
            ],
            [
              "Stage3",
              "Flight Performance Calculation - Planning procedures & Loading"
            ],
            [
              "Stage4",
              "Human Performance"
            ],
            [
              "Stage5",
              "Meteorology"
            ],
            [
              "Stage6",
              "Navigation"
            ],
            [
              "Stage7",
              "Operational Procedures"
            ],
            [
              "Stage8",
              "Principles of Flight"
            ],
            [
              "Stage9",
              "Radio Communications"
            ]
          ],
          footer: "END OF PHASE 2 Graduation"
        }
      ]
    },
    %{
      id: "7",
      title: "ATPL + Ground Handling",
      description: """
      One of our main courses offered is the ATPL Integrated Course. This course is designed to get an individual from absolutely no flight experience in aviation all the way to obtaining the ATPL, with all the necessary requirements to be selected by a Commercial Airline.

      This course is designed to save the student 2 years of his life. The student will be studying to get 2 certificates simultaneously (Airline Transport Pilot License + Ground Handling Certificate).

      The course allows its holder to work in 12 different job positions in an airport. Instead of waiting in line to get your job as a pilot, it allows the holder to be involved in the aviation industry at an earlier stage, further improving the probability of selection in an airline.

      <strong>At the end of this course, you will have:</strong>

      <li>Airline Transport Pilot License</li>
      <li>Degree in Ground Handling</li>
      """,
      duration: "14 - 20",
      duration_type: "Months",
      featured_image: "ATPLGround-Handling.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Ground Handling Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "58800",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "ATPL Integrated",
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Total Flight Training"
          ],
          rows: [
            [
              "(0 to 3) Months",
              "Stage1: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision",
              "N/A"
            ],
            [
              "(4 to 7) Months",
              "Stage2: Theoretical Training & Lectures (Full Ground School Training) + Exams Preparation & Revision<br />
              Brush-ups",
              "75 Flying hours (Basic & Intermediate)"
            ],
            [
              "(8 to 11) Months",
              "Stage3: Revision & Preparation for HCAA Examinations.<br />
              HCAA Exams",
              "120 Flying hours (Intermediate & Advanced)"
            ],
            [
              "(12 to 18) Months",
              "N/A",
              "201 Advanced Flight Training + Multi Engine + Night Rating + MCC<br />
              *Flight Skill Test"
            ]
          ],
          footer: "END OF PHASE 1 Graduation"
        },
        %{
          header: [
            "Sequence",
            "Module"
          ],
          rows: [
            [
              "Stage1",
              "Air Law"
            ],
            [
              "Stage2",
              "Aircraft General Knowledge"
            ],
            [
              "Stage3",
              "Flight Performance Calculation - Planning procedures & Loading"
            ],
            [
              "Stage4",
              "Human Performance"
            ],
            [
              "Stage5",
              "Meteorology"
            ],
            [
              "Stage6",
              "Navigation"
            ],
            [
              "Stage7",
              "Operational Procedures"
            ],
            [
              "Stage8",
              "Principles of Flight"
            ],
            [
              "Stage9",
              "Radio Communications"
            ]
          ],
          footer: "END OF PHASE 2 Graduation"
        }
      ]
    },
    %{
      id: "8",
      title: "ATPL Modular",
      description: """
      <p>This program will allow you to qualify for an Airline Transport Pilots Licence (ATPL) through what is commonly called the Modular pathway.</p>
      <p>This means that your training progresses through a series of modules. Each module will be a step forward on your training schedule, but you don’t need to commit to take all of them at once.</p>
      <p>Applicants for this course have a choice between Residential and Distance Learning Theoretical Training courses. The primary advantage of the modular pathway is that it can be completed at your own pace.</p>
      <p>This Program is made of a combination of courses and ratings, which collectively qualifies the student to the Airline Transport Pilot License.</p>
      """,
      duration: "18 - 20",
      duration_type: "Months",
      featured_image: "ATPL-Modular.jpg",
      inclusions: [
        "Uniform",
        "Accommodation (Optional)",
        "Transportation",
        "Studying Materials & Books (All Subjects)",
        "CBT (Computer Based Training)",
        "Maps & Charts",
        "Flight Computer",
        "Knee-board",
        "Aircraft Manuals",
        "Landing Fees",
        "Approach Fees",
        "Examination Fees",
        "Medical Certificate Fees {*initial}",
        "Fuel",
        "Tax Free",
        "Ground Handling Lessons"
      ],
      notes:
        "We also know that relocating to a foreign country, even if it is temporary and for education purposes, can be an incredibly challenging experience, especially for our younger applicants. Due to this, we have created solutions for Accommodation and Students can enjoy the full benefits of Athens, one of the tourist capitals of the world, whilst they complete their training.",
      price: "54000",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Minimum 17 years of age",
        "Be able to obtain Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "ATPL Integrated",
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Total Flight Training"
          ],
          rows: [
            [
              "(0 to 3) Months",
              "Stage1: Distance Learning PPL 9 Subjects + HCAA Exams",
              "45 Flying hours + PPL Skill Test"
            ],
            [
              "(4 to 7) Months",
              "Stage2: ATPL Theoretical Training (Distance Learning) + Exams Preparation & Revision Brush-ups",
              "100 Flying hours (Basic & Intermediate)"
            ],
            [
              "(8 to 11) Months",
              "Stage3: ATPL Theoretical Training (Distance Learning) + Exams Preparation & Revision Brush-ups Revision & Preparation for HCAA Examinations.",
              "150 Flying hours (Intermediate & Advanced)"
            ],
            [
              "(12 to 18) Months",
              "Revision & Preparation for HCAA Examinations.<br />
              HCAA Exams",
              "170 Advanced Flight Training"
            ],
            [
              "(18 to 20) Months",
              "Revision & Preparation for HCAA Examinations.<br />
              HCAA Exams",
              "245 Advanced Flight Training + Multi Engine + Night Rating + PBN +UPRT<br />
              *Flight Skill Test"
            ]
          ],
          footer: "Graduation & Ready for Airlines Right Seat"
        }
      ]
    },
    %{
      id: "9",
      title: "Conversion Course",
      description: """
      <p>The conversion course is designed for the holders of any ICAO Pilot Licence, who wish to obtain the EASA licence. To facilitate and obtain this licence the requirements are set by EASA.</p>
      """,
      duration: "2",
      duration_type: "Months",
      featured_image: "Conversion.jpg",
      inclusions: [],
      notes: "",
      price: "10000",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Current ICAO CPL/ME/IR",
        "EASA Class I Medical",
        "Minimum 200h total flight time, of which 100h as PIC including 50h X-C as PIC",
        "Minimum one X-C 300NM Trip with stops at two different aerodromes",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "ATPL Modular",
          header: [
            "Duration",
            "Type of Training",
            "Flight Hours"
          ],
          rows: [
            [
              "2 Months",
              "EASA ATPL Theory Distance Learning Refresh",
              "3 Hours SE<br />
              8 Hours ME<br />
              5 Hours FNTP Including PBN"
            ]
          ],
          footer: ""
        }
      ]
    },
    %{
      id: "10",
      title: "CPL/ME/IR",
      description: """
      <p>This combination of modular training courses is designed to train the applicant to the level of proficiency to operate a single or multi-engine airplane in commercial air transportation and to obtain the EASA Commercial Pilot license CPL (SE/ME).</p>
      <p>Moreover, at the end of the course, the student will have the required level of knowledge to exercise the privileges granted to the holder of an IR(A), and act as a PIC of a single- engine or multi-engine aircraft.</p>
      """,
      duration: "3",
      duration_type: "Months",
      featured_image: "CPL-ME-IR.jpg",
      inclusions: [],
      notes: "",
      price: "18500",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Private Pilot License (PPL) with Night Rating",
        "Pass EASA ATPL Theoretical Exams",
        "Have at least 150 hours flight time, of which at least 100 hours as Pilot-in-Command, including 50 hours cross country as Pilot-in-Command and one cross country trip 300 NM with two stops at aerodromes different from the base aerodrome."
      ],
      structure: [
        %{
          title: "CPL/IRSEP/MEP/IRMEP",
          header: [
            "Duration",
            "Type of Training",
            "Flight Hours"
          ],
          rows: [
            [
              "2 Weeks",
              "<p>IR/SEP FNTP</p>
              <p>IR/SEP</p>",
              "<p>35 Hours</p>
              <p>15 Hours</p>"
            ],
            [
              "1 Week",
              "MEP Initial",
              "6 Hours"
            ],
            [
              "2 Weeks",
              "<p>CPL SEP</p>
              <p>CPL MEP</p>",
              "<p>10 Hours</p>
              <p>5 Hours</p>"
            ],
            [
              "1 Week",
              "<p>IR/MEP FNTP</p>
              <p>IR/MEP</p>",
              "<p>3 Hours</p>
              <p>2 Hours</p>"
            ]
          ],
          footer: ""
        }
      ]
    },
    %{
      id: "11",
      title: "ATPL Theory",
      description: """
      <p>While the student can optionally purchase hard copies of any books or training materials required from GAA. During this period the student will be asked to attend refresh lectures and progress tests before attempting final exams at the Hellenic Civil Aviation Authority.</p>
      <p>Gulf Air Academy uses the latest & most advanced training material provided by CATS AVIATION which contains EASA ATPL Books, Study Guides, Mock ups, Presentations, Video Material, Lecture Notes, Question Bank, Progress test & Brush-up Papers preparing the student for the final examinations in the Civil Aviation Authority.</p>
      """,
      duration: "4",
      duration_type: "Months",
      featured_image: "ATPL-Theory.jpg",
      inclusions: [],
      notes: "",
      price: "2500",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Current PPL",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "ATPL THEORY - DISTANCE LEARNING",
          header: [
            "Duration",
            "Type of Training"
          ],
          rows: [
            [
              "4 Months",
              "<p>EASA ATPL Theory Distance Learning + Refresh Course</p>"
            ]
          ],
          footer: ""
        }
      ]
    },
    %{
      id: "12",
      title: "Flight Instructor",
      description: """
      <p>The aim of this course is to give adequate training to the applicant in ground and flying instructional techniques based on established teaching methods. Upon completion of the course and successfully passing the final test, the applicant will be issued with a FI (A) rating, permitting the holder to give flight training appropriate to the issue of a PPL(A) or a CPL(A).</p>
      """,
      duration: "3",
      duration_type: "Months",
      featured_image: "Flight-Instructor.jpg",
      inclusions: [],
      notes: "",
      price: "11000",
      pay_in_advance: "",
      installments: "",
      requirements: [
        "Valid CPL",
        "Valid Class I Medical Certificate",
        "Sufficient Knowledge of English"
      ],
      structure: [
        %{
          title: "Flight Instructor Course",
          header: [
            "Duration",
            "Theoretical Knowledge",
            "Total Flight Training"
          ],
          rows: [
            [
              "3 Months",
              "<p>130 Hours Advanced FI Theoretical Training & Lectures (Full Ground School Training)
              </p>",
              "30 Hours Advanced flight training"
            ]
          ],
          footer: "Graduation & Immediate Job Placement"
        }
      ]
    }
  ]

  def list_courses do
    for attrs <- @data do
      course = struct(%Course{}, attrs)
      slug = Course.slugify_title(course)
      excerpt = Course.excerpt_from_description(course)
      struct(course, %{slug: slug, excerpt: excerpt})
    end
  end

  def get_course(id) do
    Enum.find(list_courses(), fn item -> item.id == id end)
  end
end
