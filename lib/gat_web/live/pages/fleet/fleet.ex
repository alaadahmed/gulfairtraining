defmodule GATWeb.Pages.Fleet do
  use GATWeb, :live_component

  defp fleets do
    [
      %{
        name: "2 x Cessna 172M",
        range: "1639",
        speed: "243",
        passengers: "4",
        specs: """
        The Cessna 172 Skyhawk is an American four-seat, single-engine, high wing, fixed-wing aircraft made by the Cessna Aircraft Company.
        Measured by its longevity and popularity, the Cessna 172 is the most successful aircraft in history. Cessna delivered the first production model in 1956, and as of 2015, the company and its partners had built more than 44,000 units. The aircraft remains in production today.
        Cessna 172 is a high-wing monoplane – meaning the wings sit high above the cockpit. This is very useful for student pilots because it gives them a better view of the ground and makes the aircraft much easier to land.
        """,
        img: "172.jpg"
      },
      %{
        name: "2 x Cesnna 150",
        range: "463",
        speed: "185",
        passengers: "2",
        specs: """
        The C-150 is a classic aviation training aircraft, with a special place in the history of the aviation industry, and we are proud to say that it is in Gulf Air Academy’s Fleet. It is also the Third Most Popular Aircraft Ever Made, closely behind one of our other aircrafts, the C-172. It has been used to train Pilots for decades, and its robust design continues to be Airworthy to this day. It is the perfect aircraft for ab-initio flight cadets, and gives our flying students the knowledge they need to get ahead in the industry.
        """,
        img: "152.jpg"
      },
      %{
        name: "2 x Cesnna 152",
        range: "767",
        speed: "206",
        passengers: "2",
        specs: """
        The C-152 is one of the most prominent 2-Seater Aircrafts used throughout the world, and plays a very important role in Flight Training. It is particularly useful for IFR Proficiency and Hour Building and has comparatively low operational costs, making it less expensive to train on. Its handling characteristics are excellent, and by applying a little pressure on the control column Pilots get a great response from the aircraft. The skills, knowledge and experience Pilots get from this aircraft build an excellent foundation for more advanced stages of our Courses, and more demanding stages of their Careers.
        """,
        img: "C152.jpg"
      },
      %{
        name: "1 x PA-34-220T Seneca III",
        range: "1611",
        speed: "206",
        passengers: "6",
        specs: """
        The Piper PA-34 Seneca is a twin-engine light aircraft, produced in the United States by Piper Aircraft. It has been in non-continuous production since 1971. The Seneca is primarily used for personal and business flying.
        """,
        img: "fleet.jpg"
      },
      %{
        name: "1 x Tecnam P2006T",
        range: "1374",
        speed: "287",
        passengers: "4",
        specs: """
        The Tecnam P2006T is an Italian high-winged, twin-engined all-metal light aircraft built by Costruzioni Aeronautiche Tecnam, which is based in Capua, Italy (near Naples). Certified in the European Union by EASA under CS23, the P2006T received Federal Aviation Administration FAR Part 23 certification in 2010.
        The P2006T is the lightest twin-engined certified aircraft available, and is a four-seat aircraft with fully retractable landing gear and liquid-cooled Rotax engines that can run on 92 octane unleaded automotive gasoline as well as 100LL.
        """,
        img: "gaa3-1.jpg"
      }
    ]
  end
end
