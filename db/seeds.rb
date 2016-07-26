# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Show.create(title:"Peter och piraterna", description:"en barn teater från 3 år och uppåt. Var med och lös mysteriet  med detektivtrollet. En knasig historia och Bäverns bortsprungna ben och råddjurets bortappade ärr mm. En musikteater där barnen är med och löser fallet.
#     Föreställningar under februari – maj", image:"/example2.png", display:true)
# Show.create(title:"En lång vandring", description:"En familjeföreställning där publiken vandrar med en skådespelare och under olika platser får scener uppspelade. Ett stort öde vilar över staden och det är du som publik som listar ut gåtan och bestämmer slutet.", image:"/example2.png", display:true)

# ShowCalendar.create(date: '21 May 2017', soldOut: true, show_id: 2)
# ShowCalendar.create(date: '28 May 2017', soldOut: true, show_id: 2)
# ShowCalendar.create(date: '1 Jun 2017', soldOut: false, show_id: 2)
# ShowCalendar.create(date: '15 Jun 2017', soldOut: true, show_id: 2)

ShowPrice.create( price: 80, description: "Vuxen eller barn", primary: true, show_id: 2 )
ShowPrice.create( price: 80, description: "Mängdrabatt: minst 10 biljetter.", primary: false, show_id: 2 )
ShowPrice.create( price: 80, description: "Skolrabatt: minst 30 biljetter.", primary: false, show_id: 2 )
ShowPrice.create( price: 80, description: "Föreldrar rabatt: minst 1 barn.", primary: false, show_id: 2 )