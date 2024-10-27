# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
#...
Product.create!(title: 'Resident Evil 4 (2023)',
  description:
    %{<p>
      Resident Evil 4 is a 2023 survival horror game developed and published by Capcom. 
      A remake of the 2005 game Resident Evil 4, players control the US agent Leon S. Kennedy, 
      who must save Ashley Graham, the daughter of the United States president, from the mysterious Los Illuminados cult. 
      The remake has an updated plot, new visuals, characters, cast, and altered gameplay.
     </p>},
	  image_url: 'resident_evil_4(2023).png',
    price: 39.99
)
Product.create!(title: 'Resident Evil 5',
  description:
    %{<p>
      Resident Evil 5 is a 2009 third-person shooter video game developed and published by Capcom. 
      It is a major installment in the Resident Evil series, and was announced in 2005—the same year its predecessor Resident Evil 4 was released. 
      Resident Evil 5 was released for the PlayStation 3 and Xbox 360 consoles in March 2009 and for Windows in September 2009. 
      The plot involves an investigation of a terrorist threat by Bioterrorism Security Assessment Alliance agents Chris Redfield and Sheva Alomar in Kijuju, 
      a fictional region of West Africa. Chris learns that he must confront his past in the form of an old enemy, Albert Wesker, and his former partner, Jill Valentine.
     </p>},
	  image_url: 'resident_evil_5.png',
    price: 14.99
)
Product.create!(title: 'Splinter Cell Blacklist',
  description:
    %{<p>
      Tom Clancy's Splinter Cell: Blacklist is a 2013 stealth action-adventure video game developed by Ubisoft Toronto and published by Ubisoft. 
      The game is the sequel to Splinter Cell: Conviction and the seventh installment of the Splinter Cell series. Players control Sam Fisher, 
      a highly trained operative working for the Fourth Echelon, in a mission to stop the Engineers, a group of terrorists which is trying to coerce the United States 
      into recalling all of its troops stationed abroad.
     </p>},
	  image_url: 'splinter_cell_blacklist.png',
    price: 19.99
)
