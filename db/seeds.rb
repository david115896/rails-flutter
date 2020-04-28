puts "Desctruction of BDD ... "
City.destroy_all
Activity.destroy_all
Trip.destroy_all
Tripactivity.destroy_all

puts "Desctruction of BDD done"

#puts "Extraction of CSVs files"

City.create!(name: "Lisbonne", image: "https://images4.bovpg.net/st/back/fr/natural/d30a8b43e9264a1bf8aafc479fc6fd15fcb164e3.jpg 1x, https://images4.bovpg.net/st/back/fr/natural/d30a8b43e9264a1bf8aafc479fc6fd15fcb164e3.jpg 2x")
City.create!(name: "Zagreb", image: "https://www.travelvalley.nl/uploads/headers/zagreb-museum-hangovers.jpg")

act1 = Activity.create!(name_fr:"Musée des relations brisées", price: 12.5, city: City.find_by(name:"Zagreb") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/84481898_2673119382813914_8492397440287118157_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=102&_nc_ohc=37pf2qBNA1cAX9MEEjZ&oh=4a7df044c40f704e13e6c690e8fab116&oe=5EA37A3F")
act2 = Activity.create!(name_fr:"Musée d'art contemporain", price: 12.5, city: City.find_by(name:"Zagreb") ,image:"https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/80624869_174016687162824_7178703794768977136_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=100&_nc_ohc=FmMStYjhGzMAX-gqXdi&oh=bb45215b9a496aa4c4f763753e0b875d&oe=5EA21FDF")
act3 = Activity.create!(name_fr:"Musée d'histoire Croate", price: 10.5, city: City.find_by(name:"Zagreb") ,image:"https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/39578467_1082228711941875_1706666582903619584_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=103&_nc_ohc=D7jR5nDwlIwAX8Q2s7j&oh=ab96005006519a0bc286b880098f8f8c&oe=5EAF88FC")
act4 = Activity.create!(name_fr:"La cathédrale de l'Assomption de la Bienheureuse", price: 0, city: City.find_by(name:"Zagreb") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/22157290_292656971224939_6755714768964681728_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=XoLN_nXAvwAAX_SHoYR&oh=e7447491324bd7b6eb9afe9673831f3a&oe=5EA29691")
act5 = Activity.create!(name_fr:"L'église Saint-François d'Assise", price: 0, city: City.find_by(name:"Zagreb") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/35564781_470054866779067_7050584833843527680_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=Kj7NyXlDZG4AX-jZ91Q&oh=f0382f82f7df1ebc5b3c7dbc8b996c8c&oe=5EA395DA")
act6 = Activity.create!(name_fr:"Le pavillon Mestrović",price: 7.5, city: City.find_by(name:"Zagreb") ,image:"https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/66503490_339400736999775_7024650256107006575_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=103&_nc_ohc=K3IRkP4HD9YAX_QWgdJ&oh=3c33f12fc3e018e5f81d4d0310a710d0&oe=5EAB9D0D")



#act7 = Activity.create!(name:"Oceanario de Lisboa", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/89610760_218245576233076_1715457568595162476_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=104&_nc_ohc=PzZ_Q7MZ0gsAX8DrDpj&oh=a64c872caa9a51dfcfee258d6c6733e2&oe=5EADF414")
#act8 = Activity.create!(name:"Monastère des Hiéronymites", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/91482821_146207443549501_1842239531142755763_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=kdRoSC6XNlEAX-20YMf&oh=cb719a429bdf5d226dba38aea8a76760&oe=5EAC6C64")
#act9 = Activity.create!(name:"Place du Commerce", price: 0, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/90491997_146224136750446_8195359755127853259_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=110&_nc_ohc=MwXA8IdT9oIAX8-trjO&oh=7d780ccf2393dab8e40354c835a8fa79&oe=5EAE4566")
#act10 = Activity.create!(name:"Tour de Belém", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/90972133_239049777222130_4225233404888352373_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=110&_nc_ohc=FvgQp2KKZQMAX8LS2tB&oh=7f830b39385611d1cc1a7ef1ecd447b4&oe=5EADF45F")
#act11 = Activity.create!(name:"Monument aux Découvertes", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/69759562_162239311559465_8378890086095584711_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=105&_nc_ohc=OfYA762B8SwAX_q2EwM&oh=6b1e29fa3093d5e9c65e1eb118cb1edd&oe=5EAD2F7D")
#act12 = Activity.create!(name:"Musée Archéologique du Carmo", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/67895084_398219550882229_7513651089479098994_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=y51UAC7N-NQAX9gVhA4&oh=2976e23ba445a77daaa35f7060fa3b06&oe=5EABEA84")

#Activity.create(name:" ", price: 12.5, city: City.find_by(name:"Lisbonne") ,image:"")

#Trip.create!(date: "12/05/2020", city: City.find_by(name:"Lisbonne"))
Trip.create!(date: "24/05/2020", city: City.find_by(name:"Zagreb"))

#Tripactivity.create!(activity: act7 , trip: Trip.find_by(city: City.find_by(name:"Lisbonne")))
#Tripactivity.create!(activity: act8 , trip: Trip.find_by(city: City.find_by(name:"Lisbonne")))
#Tripactivity.create!(activity: act9, trip: Trip.find_by(city: City.find_by(name:"Lisbonne")))
#Tripactivity.create!(activity: act10, trip: Trip.find_by(city: City.find_by(name:"Lisbonne")))
Tripactivity.create!(activity: act1, trip: Trip.find_by(city: City.find_by(name:"Zagreb")))
Tripactivity.create!(activity: act2, trip: Trip.find_by(city: City.find_by(name:"Zagreb")))
Tripactivity.create!(activity: act3, trip: Trip.find_by(city: City.find_by(name:"Zagreb")))

Theme.create!(name_fr: "Monmuents", name_eng: "Monuments")
Theme.create!(name_fr: "Points de vue", name_eng: "Points of view")
Theme.create!(name_fr: "Site religieux", name_eng: "Religious site")
Theme.create!(name_fr: "Spectacles / Animations", name_eng: "Shows / Animations")
Theme.create!(name_fr: "Quartiers", name_eng: "Neighborhoods")
Theme.create!(name_fr: "Centre commerciaux / Boutiques", name_eng: "Shopping area & Mall")
Theme.create!(name_fr: "Musées d'art", name_eng: "Art museums")
Theme.create!(name_fr: "Sites historiques", name_eng: "Historic sites")
Theme.create!(name_fr: "Jardins et Parcs", name_eng: "Parks & Gardens")
Theme.create!(name_fr: "Les plus visités", name_eng: "Landmarks")











puts "Database created"