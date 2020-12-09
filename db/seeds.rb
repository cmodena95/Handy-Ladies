# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all data..."
Job.destroy_all
Message.destroy_all
Payment.destroy_all
User.destroy_all
Skill.destroy_all

puts "completed"

puts "Creating users..."

norma = User.create!(
  name: "Norma",
  address: "Carrer de Sant Antoni Maria Claret, 192, 08025 Barcelona",
  latitude: 41.4098557,
  longitude: 2.1640075,
  bio: "I'm able to help you out with any carpenter job or wood repair you need, don't hesitate to contact me",
  email: "norma@gmail.com",
  password: "123456",
  handylady: true,
  available_until: Time.now.advance(hour: 3)
)

natalie = User.create!(
name: "Natalie",
address: "Carrer del Consell de Cent, 445, 08013 Barcelona, España",
latitude: 41.3980417,
longitude: 2.1724029,
bio:"Hey there! here I am, the best plumber in town, don't get stuck (like the sink is)  and book an appointment with me to solve it ",
email: "natalie@gmail.com",
password:"123456")

katty = User.create!(
name: "Katty",
address: "Via Augusta, 268, 08017 Barcelona",
latitude: 41.3980379,
longitude: 2.1293558,
bio: "Hello girls, I'm offering my professional service of moving, medium stuffs like furnitures, plants, boxes and everything that could fit in my van.  I can go anywhere",
email: "katty@gmail.com",
password:"123456")

susan = User.create!(
name: "Susan",
address: "Carrer de Pelai, 5, 08001 Barcelona",
latitude: 41.385906,
longitude: 2.1639056,
bio: "Hello everyone! I have several years of experience painting houses, text me to talk about the project you have in mind =)",
email: "susan@gmail.com",
password:"123456")

olivia = User.create!(
name: "Olivia",
address: "Carrer de la Indústria, 241, 08041 Barcelona",
latitude: 41.4127396,
longitude: 2.1761666,
bio: "Hi, I'm Olivia, owner of a small gardening company where all the workers are women we believe in female empowerment and we work for it,
Contact us to clear any doubt you may have about your gardering  project",
email: "olivia@gmail.com",
password:"123456")

amelia = User.create!(
name: "Amelia",
address: "Carrer de Mallorca, 181, 08036 Barcelona",
latitude: 41.3894736,
longitude: 2.154232,
bio: "Burned out trying to follow IKEA user manuals to assemble your new furniture? leave it to me, I can do it incredible fast. Hit me up! ",
email: "amelia@gmail.com",
password:"123456")

sophia = User.create!(
name: "Sophia",
address: "Carrer de Ca l'Alegre de Dalt, 9, 08024 Barcelona",
latitude: 41.4072125,
longitude: 2.1606342,
bio: "Stop searching! the electrical technician you were looking for is here! I`am Sophia and I have a long experience in electricians duties. Check my reviews, all happy customers. DM me!",
email: "sophia@gmail.com",
password:"123456")

grace = User.create!(
name: "Grace",
address: "Carrer de Còrsega, 417, 08037 Barcelona",
latitude: 41.4020812,
longitude: 2.156101,
bio: "* Carpenter * Bricklayer * Painter Bests rates reviews in Handyladies app, don't hesitate to contact me",
email: "grace@gmail.com",
password:"123456")

valentina = User.create!(
name: "Valentina",
address: "Carrer dels Assaonadors, 19, 08003 Barcelona",
latitude: 41.3835446,
longitude: 2.1805807,
bio: "Thinking of doing a home renovation? you are in the right profile, DM me to make it real",
email:  "valentina@gmail.com",
password:"123456")

juliet = User.create!(
name: "Juliet",
address: "C. del Consell de Cent, 519, 08013 Barcelona",
latitude: 41.4033903,
longitude: 2.1851643,
bio: "Hi there, this is Juliet and I'm able to do housekeeping around Barcelona city center for the best price you can find. Let's try? ",
email: "juliet@gmail.com",
password:"123456")

maggie = User.create!(
name: "Maggie",
address: "Carrer de Roger de Flor, 262, 08025 Barcelona",
latitude: 41.4036582,
longitude: 2.1696618,
bio: "Problems with your laptop or pc? wifi doesn't work properly and you already tried everything?
Here is the solution you need, I'm the best computer technician to help you, just let me know to set a visit ",
email: "maggie@gmail.com",
password:"123456")


nina = User.create!(
name: "Nina",
address: "Rambla de Catalunya, 64, 08007 Barcelona",
latitude: 41.388616,
longitude: 2.1626232,
bio: "restoration of wooden floors with the best technique. Let me know to create a budget",
email: "nina@gmail.com",
password:"123456")

melissa = User.create!(
name: "Melissa",
address: "Carrer de Còrsega, 226, Ent 2ª, 08036 Barcelona",
latitude: 41.3899532,
longitude: 2.1513699,
bio: "Need help with home decoration? I can do that for you",
email: "melissa@gmail.com",
password:"123456")


selena = User.create!(
name: "Selena",
address: "Carrer de Balmes, 12, 08007 Barcelona",
latitude: 41.387806,
longitude: 2.160864,
bio:  "Looking for some home renovation? You are in the best painter profile in Handy Ladies, we have hundred of happy customers  with the job done. Want to know more? text me ",
email: "selena@gmail.com",
password:"123456")

victoria = User.create!(
name: "Victoria",
address: "C/ d'Aragó, 323, 325, 08009 Barcelona",
latitude: 41.3962504,
longitude: 2.168011,
bio: "Hello word! I have a plenty free time and also plenty love for dogs so I'm the right person to walk your dogs, daily, weekly or whenever you need text me to arrange a visit",
email: "victoria@gmail.com",
password:"123456")

puts "completed"

puts "creating new skills"
appliance_repair = Skill.create!(name: 'Appliance repair')
bricklayer = Skill.create!(name: 'Bricklayer')
carpenter = Skill.create!(name: 'Carpenter')
computer_technician = Skill.create!(name: 'Computer technician')
cleaning = Skill.create!(name: 'Cleaning')
decor = Skill.create!(name: 'Decor')
electrical_technician = Skill.create!(name: 'Electrical technician')
gardering = Skill.create!(name: 'Gardering')
minor_home_repair= Skill.create!(name: 'Minor Home repair')
moving = Skill.create!(name: 'Moving')
painter = Skill.create!(name: 'Painter')
plumber = Skill.create!(name: 'Plumber')

puts "completed"

puts "creating new jobs"
jobs  = []
jobs << Job.create!(
  customer: norma,
  handylady: sophia,
  date: Date.tomorrow,
  description: "Isn`t working properly",
  status: "pending",
  title: "need to fix some lights in my kitchen",
  location: "Barcelona",
  skill: electrical_technician
)

jobs << Job.create!(
  customer: natalie,
  handylady: grace,
  date: Date.tomorrow,
  description: "Drawers are not working properly",
  status: "pending",
  title: "Need to fix my wardrobe",
  location: "Barcelona",
  skill: carpenter
)

jobs << Job.create!(
  customer: katty,
  handylady: valentina,
  date: Date.tomorrow,
  description: "I want to enlarge and remodel my ktichen ",
  status: "pending",
  title: "Need take a wall down in my kitchen",
  location: "Barcelona",
  skill: bricklayer
)

jobs << Job.create!(
  customer: susan,
  handylady: juliet,
  date: Date.tomorrow,
  description: "Currently is grey, I would like to set it pink",
  status: "pending",
  title: "I want to change the colour of my wall room",
  location: "Barcelona",
  skill: painter
)

jobs << Job.create!(
  customer: victoria,
  handylady: maggie,
  date: Date.tomorrow,
  description: "It's making a wird noice and the screen is black",
  status: "pending",
  title: "My laptop doesn't turn on",
  location: "Barcelona",
  skill: computer_technician
)

puts "completed"




