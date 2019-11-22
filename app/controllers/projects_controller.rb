class ProjectsController < ApplicationController
  def show
    
    params['type'] ? @type = "#{params['type']}" : @type = 'residential'

    residential_array = [

      {   "id":"palo_alto_farmhouse",
          "title":"Palo Alto Farmhouse 1",
          "description":"This new contemporary farmhouse in Palo Alto appears modest from the street, 
                         but opens into generous indoor/outdoor living spaces around a central courtyard.  
                         A full basement adds a large recreation room and bonus rooms.",
          "type":"residential",
          "order_num":0.0},
      
      {   "id":"palo_alto_farmhouse_2",
          "title":"Palo Alto Farmhouse 2",
          "description":"A long, narrow lot presented a challenge for the design of this modern 
                         farmhouse. Photos: Rick Rowland",
          "type":"residential",
          "order_num":1.0},
      
      {   "id":"palo_alto_modern",
          "title":"Palo Alto Modern",
          "description":"Open corners, natural light, modern style, and playfulness were design 
                         themes for this new home on a corner lot in Palo Alto. The kitchen and 
                         family room open to the rear deck and yard for indoor-outdoor living.  
                         A floating stainless steel staircase with slide serves as a visual focal 
                         point on all three levels. The two kids' bedrooms each have corner window 
                         seats and share a play loft.",
          "type":"residential",
          "order_num":2.0},
  
      {   "id":"contemporary_craftsman",
          "title":"Palo Alto Craftsman",
          "description":"New Craftsman residence in Palo Alto. The main level includes 
                        a guest bedroom suite, formal living room, dining room, powder, 
                        kitchen, pantry, breakfast nook, and family room open to the rear yard.  
                        A master bedroom suite, laundry area, and two kids' bedrooms with a shared 
                        bath are upstairs.  The full basement includes a large recreation room 
                        with built-in bar area, two additional bedrooms with bath, and storage.",
          "type":"residential",
          "order_num":3.0},
  
      {   "id":"los_altos_farmhouse_1",
          "title":"Los Altos Farmhouse 1",
          "description":"A single-story farmhouse design enables soaring ceilings throughout this 
                         6-bedroom home on a spacious corner lot. Photos: Marcell Puzsar",
          "type":"residential",
          "order_num":4.0},
      
      {   "id":"modern_farmhouse",
          "title":"Los Altos Farmhouse 2",
          "description":"A modern interpretation of the farmhouse style provides spacious rooms, good 
                         circulation flow for family life and entertaining, and indoor-outdoor living 
                         for a family in Los Altos.  The upstairs includes four bedrooms with vaulted 
                         ceilings, three baths, and a laundry room.",
          "type":"residential",
          "order_num":5.0},
  
      {   "id":"los_altos_craftsman",
          "title":"Los Altos Craftsman",
          "description":"The single-story design of this new contemporary Craftsman residence 
                         in Los Altos enabled soaring ceilings, kids' bedroom lofts, and a feeling of 
                         openness throughout. A separate guest cottage with full bath and kitchenette 
                         complements the main house.",
          "type":"residential",
          "order_num":6.0},
  
      {   "id":"mountain_view_renovation",
          "title":"Mountain View Renovation",
          "description":"The creation of a new entry, family and kitchen wing enabled a modern 
                         transformation of a classic Mountain View bungalow.  The young family 
                         wanted light-filled, open spaces with easy access to the backyard for 
                         their children to play.",
          "type":"residential",
          "order_num":7.0},
  
      {   "id":"mid_century_renovation",
          "title":"Mid-Century Renovation",
          "description":"A floor plan reconfiguration and a complete remodel transformed 
                         this mid-century modern home on the Stanford campus for contemporary family life.  
                         A new pop-up roof with clerestory windows and skylights brought light and 
                         height into the core of the home.",
          "type":"residential",
          "order_num":8.0},
  
      {   "id":"atherton_residence_2",
          "description":"A reconfiguration & enlargement updated a 1950s Atherton ranch 
                         home to satisfy a new family's desires for higher ceilings, open 
                         floor plan, and improved indoor-outdoor flow.  Extensive use of wood 
                         and stone finishes on the exterior and interior provided a warm feel 
                         for the contemporary remodel.",
          "order_num":9.0,
          "title":"Atherton Contemporary",
          "type":"residential"},
  
       {  "id":"atherton_residence",
           "title":"Atherton Addition",
           "description":"A complete interior renovation and new family room addition 
                          transformed an older Atherton home to support the lifestyle of a 
                          family with young children that likes to entertain frequently.",
           "type":"residential",
           "order_num":10.0},
        
       {   "id":"menlo_park_farmhouse",
           "title":"Menlo Park Farmhouse",
           "description":"The long, narrow lot influenced the layout of this home and guest cottage.  
                          The design makes large scale entertaining easy, with the family room, dining 
                          room, and living room all opening to a shared patio facing the rear yard. 
                          Vaulted ceilings add to the sense of spaciousness throughout.",
           "type":"residential",
           "order_num":14},
        
       {   "id":"miscellaneous",
           "title":"Miscellaneous",
           "description":"Remodeled kitchens and bathrooms across an assortment of projects.",
           "type":"residential",
           "order_num":15.0}
     ]

studio_array = [

  {  "id":"playground",
      "title":"Playground",
      "description":"A private school in Silicon Valley wanted a new playground that would engage 
                     and challenge students with a range of activities.  The Apollo spinner can 
                     accommodate large groups of children as they work to spin each other.  
                     The Draco play structure and the Rocks n' Ropes area enable the children 
                     to climb and traverse in a variety of ways.  A spacious sand and water area 
                     supports cooperative imaginative play.",
      "type":"studio"},
  
  {   "id":"network_house",
      "title":"Network.House",
      "description":"In Silicon Valley, a culture saturated with networks, the Network.House aims 
                     to intensify the connections of its inhabitants with each other, their 
                     community, and the surrounding landscape. <br>
                     Through the tectonic quality of materials, details, and structure of the 
                     building, arises a heightened appreciation of space, light, and texture.",
      "type":"studio"},
  
  {   "id":"live_work",
      "title":"Live/Work Gallery",
      "description":"Conceptual proposal for a live/work art gallery in downtown San Francisco. 
                     The design leverages the site's central location to attract passers-by with 
                     interactive art exhibits.  Flexible studio loft spaces can serve as 
                     public/private galleries or work areas as the artist desires.",
      "type":"studio"},
  
  {   "id":"soggy_spaces",
      "title":"Soggy Spaces",
      "description":"As the climate changes, low-lying areas at the water's edge increasingly 
                     become a focus of inhabitation. <br> 
                     Conceptual proposal for a mixed live/work community at the site of the 
                     former Redwood City Saltworks. Public zones rise and fall with the tides, 
                     while residential areas above remain fixed in place. Viewed from afar, the 
                     complex shimmers, its blurred boundaries filtering the currents of air, water, 
                     and weather.",
      "type":"studio"}
  ]

workshop_array = [

{  "id":"childs_desk",
    "title":"Child's Desk",
    "description":"Brightly colored, playful \"people\" hold up this maple-topped desk.",
    "type":"workshop"},

{   "id":"jewelry_boxes",
    "title":"Jewelry Boxes",
    "description":"Treasures nestle within the sinuous curves of these bandsaw-carved boxes.",
    "type":"workshop"},

{   "id":"kirigami",
    "title":"Kirigami",
    "description":"Paper & plastic intertwined into sculpture, assembled organically from 
                   laser-cut pieces.",
    "type":"workshop"},

{   "id":"lampshade",
    "title":"Lampshade",
    "description":"Water flowing over rocks provided the inspiration for this 3-D 
                   printed tea light enclosure.",
    "type":"workshop"},

{   "id":"architectural_models",
    "title":"Architectural Models",
    "description":"1/8\" scale models help clients visualize 
                   how their home will look when complete. Homes designed by Square Three 
                   Design Studios.",
    "type":"workshop"}
]

    @project_list = residential_array if @type = "residential"
    @project_list = studio_array if @type = "studio"
    @project_list = workshop_array if @type = "workshop"

    @project = @project_list['id']
    
    @thumbnail_count = Dir.glob("app/assets/images/#{@type}/#{@project.id}/*.jpg").length
    
    params['image_number'] ? @current_image = "#{params['image_number']}.jpg" : @current_image = "1.jpg" 

    
  end
  
  def passive_house
    
  end
  
  def about
    
  end


end
