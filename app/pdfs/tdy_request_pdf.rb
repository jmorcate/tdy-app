class TdyRequestPdf < Prawn::Document 
   require "prawn/measurement_extensions"
   def initialize( events = {})
      super(events)
     
       # Names
       text_box "Ronaldo",  at: [4.mm, 205.mm],
                            width: 37.mm,
                            height: 5.mm,
                            valign: :center,
                            overflow: :shrink_to_fit
     
       text_box "Messi",    at: [4.mm, 199.mm],
                            width: 37.mm,
                            height: 5.mm,
                            overflow: :shrink_to_fit
      text_box "Benzema",   at: [4.mm, 194.mm],
                            width: 37.mm,
                            height: 5.mm,
                            overflow: :shrink_to_fit
       text_box "Suarez",   at: [4.mm, 189.mm],
                            width: 37.mm,
                            height: 5.mm,
                            overflow: :shrink_to_fit

       # First names.
       text_box "Cristiano",  :at => [62.mm, 204.mm],
                              :width => 35.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
       text_box "Cristiano",  :at => [62.mm, 199.mm],
                              :width => 35.mm,
                              :height => 8.mm,
                              :overflow => :shrink_to_fit
       text_box "Karim",  :at => [62.mm, 194.mm],
                               :width => 35.mm,
                              :height => 8.mm,
                              :overflow => :shrink_to_fit
      text_box "Luis",  :at => [62.mm, 189.mm],
                              :width => 35.mm,
                              :height => 8.mm,
                              :overflow => :shrink_to_fit
       
       # Grade - Civilian
       text_box "A7",  :at => [120.mm, 204.mm]
       text_box "A7",  :at => [120.mm, 199.mm]
       text_box "A7",  :at => [120.mm, 194.mm]
       text_box "A7",  :at => [120.mm, 189.mm]
       
       #Nationatity
       text_box "PT",  :at => [133.mm, 204.mm]
       text_box "ARG",  :at => [133.mm, 199.mm]
       text_box "FR",  :at => [133.mm, 194.mm]
       text_box "URU",  :at => [133.mm, 189.mm]
       
       # Telephone
       text_box "9369",  :at => [146.mm, 204.mm]
       text_box "9369",  :at => [146.mm, 199.mm]
       text_box "9369",  :at => [146.mm, 194.mm]
       text_box "9369",  :at => [146.mm, 189.mm]
       
       # NCIs
       text_box "NCI-0001673-00",  :at => [160.mm, 204.mm],
                              :width => 25.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
       text_box "NCI-0001673-00",  :at => [160.mm, 199.mm],
                              :width => 25.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
       text_box "NCI-0001673-00",  :at => [160.mm, 194.mm],
                              :width => 25.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
       text_box "NCI-0001673-00",  :at => [160.mm, 189.mm],
                                :valign => :center,
                               :width => 25.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
      
       # Destination
       text_box "Barcelona sdasdasd sdasdas asdasd asdasda asdasd asdasd asdasd asdasdad",  :at => [16.mm, 183.mm],
                               :valign => :center,
                               :width => 43.mm,
                              :height => 9.mm,
                              :overflow => :shrink_to_fit
       
       # Destination airport
       text_box "Barcelona sdasdasd sdasdas asdasd asdasda asdasd asdasd asdasd asdasdad",  :at => [80.mm, 183.mm],
                               :valign => :center,
                               :width => 43.mm,
                              :height => 9.mm,
                              :overflow => :shrink_to_fit
       
       # Duration
       text_box "120",  :at => [145.mm, 183.mm],
                               :valign => :center,
                               :width => 43.mm,
                              :height => 9.mm,
                              :overflow => :shrink_to_fit
       
       # Dayly Return
       text_box "Yes",  :at => [179.mm, 183.mm],
                               :valign => :center,
                               :width => 43.mm,
                              :height => 9.mm,
                              :overflow => :shrink_to_fit
       
       # Purpose
       text_box "Yes "*300,  :at => [-2.mm, 169.mm],
                             :valign => :center,
                              :width => 113.mm,
                              :height => 9.mm,
                              :overflow => :shrink_to_fit
       
       
       # Dates 
       text_box "12-Jan-21", :at => [76.mm, 152.mm],
                              :valign => :center,
                              :width => 22.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit

       text_box "22:22", :at => [97.mm, 152.mm],
                              :valign => :center,
                              :width => 18.mm,
                              :height => 5.mm,
                              :overflow => :shrink_to_fit
       
       
       go_to_page 2
       text_box "Messi",  :at => [17.cm, 13.cm]
   end
end
#bounding_box([4.cm, 10.cm], :width => 7.cm, :height => 6.cm, :color => 'FF0000') do