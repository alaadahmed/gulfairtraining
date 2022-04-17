defmodule GATWeb.Pages.Faqs do
  use GATWeb, :live_component

  def faqs() do
    [
      %{
        q: gettext("What is the study material used in Gulf Air Academy?"),
        a:
          gettext("""
          Gulf Air Academy uses the best material in the industry, cooperating with CATS Aviation, one of the best providers in the UK & the world for the ground and distance learning material.
          """)
      },
      %{
        q: gettext("At what age can I start my training to be a pilot?"),
        a:
          gettext("""
          You can start your Private Pilot Licence training at the age of 16 & Commercial Pilot Licence (ATPL) at the age of 17.
          """)
      },
      %{
        q: gettext("Do I need to have a degree to Join Gulf Air Academy?"),
        a:
          gettext("""
          No, in order to begin your pilot training, you don’t need to have any other degree.
          """)
      },
      %{
        q: gettext("How will I find a Job after graduation?"),
        a:
          gettext("""
          We provide our students with courses that offer a direct job placement at the end of it, guaranteeing a job opportunity to start their career. Gulf Air Academy has a dedicated course (ATPL + Flight Instructor + Job Opportunity) for a direct job placement with us, after the training finishes.
          """)
      },
      %{
        q: gettext("Can I work & do my training at the same time?"),
        a:
          gettext("""
          Yes, you can. We understand the different circumstances & needs of each one, therefore we can tailor our courses to fit your needs within the requirements of EASA to help you complete the training in the best way for you.
          """)
      },
      %{
        q: gettext("Do I have to pay the whole course fee upfront?"),
        a:
          gettext("""
          In Gulf Air Academy, we try to be as flexible & supportive as we can regarding our payments. The fees can be done in instalments throughout the duration of your training, depending on the course and its duration.
          """)
      },
      %{
        q: gettext("Is Accommodation provided for students?"),
        a:
          gettext("""
          Yes, we do provide modern & fully furnished accommodation with all needs included in some of courses by default, and optional in others with a very favourable rate.
          Also, along with the accommodation we provide Transportation to/from the academy and the airport throughout the duration of your training.
          """)
      },
      %{
        q: gettext("Do I need to obtain the EASA Class I Medical before joining your academy?"),
        a:
          gettext("""
          Short answer to this question is No. The expense of the initial Class I Medical, is included in the price of the ATPL Programmes, and it will be done once you Join our Academy.
          For the applicants requiring a Student Visa, they will need to acquire a simple medical for the embassy, which can be done in any hospital in their region.
          """)
      }
    ]
  end
end
