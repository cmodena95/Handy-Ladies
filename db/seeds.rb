require "open-uri"

puts "Deleting all data..."
Review.destroy_all
Job.destroy_all
Message.destroy_all
Payment.destroy_all
User.destroy_all
Skill.destroy_all
UserSkill.destroy_all

puts "completed"

puts "Creating users..."

file = URI.open('https://www.nj.com/resizer/409Xx92tbn63vR-SDZtKLY4HLJA=/1280x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/image.nj.com/home/njo-media/width2048/img/centraljersey_impact/photo/photo---brittany-using-her-carpentry-tooljpg-fae9f0b3396abdb3.jpg')
norma = User.new(
  name: "Norma",
  address: "Barcelona, Spain",
  latitude: 41.4098557,
  longitude: 2.1640075,
  bio: "I'm able to help you out with any carpenter job or wood repair you need, don't hesitate to contact me",
  email: "norma@gmail.com",
  password: "123456",
  handylady: true,
  # price_per_hour: "60€/h"
  available_until: Time.now.advance(hour: 3)
)
norma.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
norma.save!

file = URI.open('https://www.theplumbette.com.au/wp-content/uploads/2016/02/5-things-you-need-to-succeed-as-a-female-plumber1jpg.jpg')
louisa = User.new(
  name: "Louisa",
  address: "Madrid, Spain",
  latitude: 40.4168,
  longitude: 3.7038,
  bio: "I know everything there is to know about sinks. Sinks are my life.",
  email: "louisa@gmail.com",
  password: "123456",
  handylady: true,
  available_until: Time.now.advance(hour: 3)
)
louisa.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
louisa.save!

file = URI.open('https://www.bournemouthecho.co.uk/resources/images/2891837/?type=responsive-gallery')
francis = User.new(
  name: "Francis",
  address: "Madrid, Spain",
  latitude: 40.4168,
  longitude: 3.7038,
  bio: "My husband is actually a bathroom tile so I've had a lot of experience with tiling. It was awkward when I first realised this 3 years into our marriage, but it ended up giving me a lot of practice.",
  email: "francis@gmail.com",
  password: "123456",
  handylady: true,
  available_until: Time.now.advance(hour: 3)
)
francis.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
francis.save!

file = URI.open('https://i0.wp.com/www.middleeastmonitor.com/wp-content/uploads/2018/12/2018_12-17-gaza-women-carpenter2.jpg?quality=85&strip=all&zoom=1&ssl=1')
beth = User.new(
  name: "Beth",
  address: "Sitges, Spain",
  latitude: 41.2372,
  longitude: 1.8059,
  bio: "10 years working in carpentry. Constructed a whole table from scratch without any equipment or materials while sat on top of it.",
  email: "beth@gmail.com",
  password: "123456",
  handylady: true,
  available_until: Time.now.advance(hour: 3)
)
beth.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
beth.save!

file = URI.open('https://i1.wp.com/mvslim.com/wp-content/uploads/2018/01/jordanfemaleplumbers.jpg?fit=1200%2C601&ssl=1')
natalie = User.new(
name: "Natalie",
address: "Barcelona, Spain",
latitude: 41.3980417,
longitude: 2.1724029,
bio:"Hey there! here I am, the best plumber in town, don't get stuck (like the sink is)  and book an appointment with me to solve it ",
email: "natalie@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
natalie.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
natalie.save!

file = URI.open('https://broadly-images.vice.com/images/articles/meta/2015/11/03/hauling-ass-with-an-all-female-moving-company-1446559688.jpg?crop=1xw:0.75xh;center,center')
katty = User.new(
name: "Katty",
address: "Barcelona, Spain",
latitude: 41.3980379,
longitude: 2.1293558,
bio: "Hello girls, I'm offering my professional service of moving, medium stuffs like furnitures, plants, boxes and everything that could fit in my van.  I can go anywhere",
email: "katty@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
katty.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
katty.save!

file = URI.open('https://photo.mybuilder.com/2_thumb/12693555_6089462d92.jpg')
susan = User.new(
name: "Susan",
address: "Barcelona, Spain",
latitude: 41.385906,
longitude: 2.1639056,
bio: "Hello everyone! I have several years of experience painting houses, text me to talk about the project you have in mind =)",
email: "susan@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
susan.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
susan.save!

file = URI.open('https://st3.depositphotos.com/13323428/16258/v/600/depositphotos_162587066-stock-video-young-female-gardener-watering-plants.jpg')
olivia = User.new(
name: "Olivia",
address: "Barcelona, Spain",
latitude: 41.4127396,
longitude: 2.1761666,
bio: "Hi, I'm Olivia, owner of a small gardening company where all the workers are women we believe in female empowerment and we work for it,
Contact us to clear any doubt you may have about your gardering  project",
email: "olivia@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
olivia.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
olivia.save!

file = URI.open('https://blog.servicemarket.com/wp-content/uploads/2018/08/Furniture-assembly-Cant-make-head-or-tails-of-it.jpg')
amelia = User.new(
name: "Amelia",
address: "Barcelona, Spain",
latitude: 41.3894736,
longitude: 2.154232,
bio: "Burned out trying to follow IKEA user manuals to assemble your new furniture? leave it to me, I can do it incredible fast. Hit me up!",
email: "amelia@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
amelia.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
amelia.save!

file = URI.open('https://www.electriciancareersguide.com/wp-content/uploads/2016/09/Female-Electricians-9202016.png')
sophia = User.new(
name: "Sophia",
address: "Barcelona, Spain",
latitude: 41.4072125,
longitude: 2.1606342,
bio: "Stop searching! the electrical technician you were looking for is here! I`am Sophia and I have a long experience in electricians duties. Check my reviews, all happy customers. DM me!",
email: "sophia@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
sophia.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
sophia.save!

file = URI.open('https://www.electriciancareersguide.com/wp-content/uploads/2016/09/Female-Electricians-9202016.png')
grace = User.new(
name: "Grace",
address: "Barcelona, Spain",
latitude: 41.4020812,
longitude: 2.156101,
bio: "* Carpenter * Bricklayer * Painter Bests rates reviews in Handyladies app, don't hesitate to contact me",
email: "grace@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
grace.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
grace.save!

file = URI.open('https://assets.blog.hgtv.ca/wp-content/uploads/2019/02/28204624/alison-victoria-the-women-of-hgtv.jpg?width=435')
valentina = User.new(
name: "Valentina",
address: "Barcelona, Spain",
latitude: 41.3835446,
longitude: 2.1805807,
bio: "Thinking of doing a home renovation? you are in the right profile, DM me to make it real",
email:  "valentina@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
valentina.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
valentina.save!

file = URI.open('https://www.iberian-escapes.com/images/housekeeping.jpg')
juliet = User.new(
name: "Juliet",
address: "Barcelona, Spain",
latitude: 41.4033903,
longitude: 2.1851643,
bio: "Hi there, this is Juliet and I'm able to do housekeeping around Barcelona city center for the best price you can find. Let's try? ",
email: "juliet@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
juliet.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
juliet.save!

file = URI.open('https://thumbs.dreamstime.com/b/woman-technician-fixing-computer-87666573.jpg')
maggie = User.new(
name: "Maggie",
address: "Barcelona, Spain",
latitude: 41.4036582,
longitude: 2.1696618,
bio: "Problems with your laptop or pc? wifi doesn't work properly and you already tried everything?
Here is the solution you need, I'm the best computer technician to help you, just let me know to set a visit ",
email: "maggie@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
maggie.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
maggie.save!

file = URI.open('https://previews.123rf.com/images/titco/titco1906/titco190600026/124032829-wooden-parquet-texture-wood-floor-background.jpg')
nina = User.new(
name: "Nina",
address: "Barcelona, Spain",
latitude: 41.388616,
longitude: 2.1626232,
bio: "restoration of wooden floors with the best technique. Let me know to create a budget",
email: "nina@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
nina.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
nina.save!

file = URI.open('https://previews.123rf.com/images/titco/titco1906/titco190600026/124032829-wooden-parquet-texture-wood-floor-background.jpg')
melissa = User.new(
name: "Melissa",
address: "Barcelona, Spain",
latitude: 41.3899532,
longitude: 2.1513699,
bio: "Need help with home decoration? I can do that for you",
email: "melissa@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
melissa.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
melissa.save!

file = URI.open('https://thehousepainters.com/wp-content/uploads/2014/07/thp-12.png')
selena = User.new(
name: "Selena",
address: "Barcelona, Spain",
latitude: 41.387806,
longitude: 2.160864,
bio:  "Looking for some home renovation? You are in the best painter profile in Handy Ladies, we have hundred of happy customers  with the job done. Want to know more? text me ",
email: "selena@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
selena.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
selena.save!

file = URI.open('https://static01.nyt.com/images/2019/11/17/books/review/17Salam/Salam1-superJumbo.jpg')
victoria = User.new(
name: "Victoria",
address: "Barcelona, Spain",
latitude: 41.3962504,
longitude: 2.168011,
bio: "Single mum, walks primarily via the means of handstands. Enjoys sunsets and Swedish death metal.",
email: "victoria@gmail.com",
password:"123456")
victoria.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
victoria.save!

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
tiler = Skill.create!(name: 'Tiler')

puts "completed"

puts "creating new jobs"
jobs  = []
job1 = Job.create!(
  customer: norma,
  handylady: sophia,
  date: Date.tomorrow,
  description: "Isn`t working properly",
  status: "pending",
  title: "need to fix some lights in my kitchen",
  location: "Barcelona",
  skill: electrical_technician
)
jobs << job1

job2 = Job.create!(
  customer: natalie,
  handylady: grace,
  date: Date.tomorrow,
  description: "Drawers are not working properly",
  status: "pending",
  title: "Need to fix my wardrobe",
  location: "Barcelona",
  skill: carpenter
)
jobs << job2

job3 = Job.create!(
  customer: katty,
  handylady: valentina,
  date: Date.tomorrow,
  description: "I want to enlarge and remodel my ktichen ",
  status: "pending",
  title: "Need take a wall down in my kitchen",
  location: "Barcelona",
  skill: bricklayer
)
jobs << job3

job4 = Job.create!(
  customer: susan,
  handylady: juliet,
  date: Date.tomorrow,
  description: "Currently is grey, I would like to set it pink",
  status: "pending",
  title: "I want to change the colour of my wall room",
  location: "Barcelona",
  skill: painter
)
jobs << job4

job5 = Job.create!(
  customer: victoria,
  handylady: maggie,
  date: Date.tomorrow,
  description: "It's making a weird noise and the screen is black",
  status: "pending",
  title: "My laptop doesn't turn on",
  location: "Barcelona",
  skill: computer_technician
)
jobs << job5

puts "completed"

puts "Creating reviews..."

reviews = []

reviews << Review.create!(
  title: 'Great job',
  description: "Couldn't fix it but gave me a hand in selling it on the black market",
  star_rating: 4,
  job: job1,
  user: norma
  )

reviews << Review.create!(
  title: 'Terrible, perhaps even a thief',
  description: "Didn't complete the task, just came into my house and took all the canned food from the cupboards",
  star_rating: 1,
  job: job2,
  user: amelia
  )

reviews << Review.create!(
  title: "So good I could cry",
  description: "My kitchen is now so big I got lost in it for 4 hours and had to call the fire service for rescue; just what I had envisioned.",
  star_rating: 5,
  job: job3,
  user: melissa
  )

reviews << Review.create!(
  title: "Fantastic",
  description: "Drawers work great now. I can fit my whole family in them; perfect for the impending nuclear apocalypse.",
  star_rating: 5,
  job: job4,
  user: selena
  )

reviews << Review.create!(
  title: "Very happy",
  description: "Completely satisfied with the fixture. My 90-year-old grandma was previously very lazy and a massive financial burden but finally she works again.",
  star_rating: 5,
  job: job5,
  user: victoria
  )

puts "Created reviews!"

puts "Creating user skills..."

user_skills = []

us1 = UserSkill.create!(
  price: 30,
  user: norma,
  skill: appliance_repair
  )

us2 = UserSkill.create!(
  price: 20,
  user: louisa,
  skill: bricklayer
  )

us3 = UserSkill.create!(
  price: 10,
  user: francis,
  skill: carpenter
  )

us4 = UserSkill.create!(
  price: 50,
  user: norma,
  skill: carpenter
  )

us5 = UserSkill.create!(
  price: 5,
  user: beth,
  skill: cleaning
  )

us6 = UserSkill.create!(
  price: 30,
  user: norma,
  skill: computer_technician
  )

us7 = UserSkill.create!(
  price: 20,
  user: louisa,
  skill: gardering
  )

us8 = UserSkill.create!(
  price: 40,
  user: francis,
  skill: minor_home_repair
  )

us9 = UserSkill.create!(
  price: 50,
  user: louisa,
  skill: plumber
  )

us10 = UserSkill.create!(
  price: 5,
  user: beth,
  skill: painter
  )

us11 = UserSkill.create!(
  price: 30,
  user: norma,
  skill: moving
  )

us12 = UserSkill.create!(
  price: 20,
  user: louisa,
  skill: appliance_repair
  )

us13 = UserSkill.create!(
  price: 40,
  user: francis,
  skill: tiler
  )

us14 = UserSkill.create!(
  price: 50,
  user: francis,
  skill: appliance_repair
  )

us15 = UserSkill.create!(
  price: 5,
  user: beth,
  skill: carpenter
  )

us16 = UserSkill.create!(
  price: 30,
  user: natalie,
  skill: plumber
  )

us15 = UserSkill.create!(
  price: 25,
  user: katty,
  skill: moving
  )

us16 = UserSkill.create!(
  price: 40,
  user: susan,
  skill: painter
  )

us17 = UserSkill.create!(
  price: 30,
  user: olivia,
  skill: gardering
  )

us18 = UserSkill.create!(
  price: 5,
  user: amelia,
  skill: moving
  )

us19 = UserSkill.create!(
  price: 5,
  user: sophia,
  skill: electrical_technician
  )

us20 = UserSkill.create!(
  price: 50,
  user: grace,
  skill: carpenter
  )

us21 = UserSkill.create!(
  price: 50,
  user: grace,
  skill: bricklayer
  )

us22 = UserSkill.create!(
  price: 50,
  user: grace,
  skill: painter
  )

us23 = UserSkill.create!(
  price: 50,
  user: valentina,
  skill: decor
  )

us24 = UserSkill.create!(
  price: 20,
  user: juliet,
  skill: cleaning
  )

us25 = UserSkill.create!(
  price: 50,
  user: maggie,
  skill: computer_technician
  )

us26 = UserSkill.create!(
  price: 40,
  user: nina,
  skill: carpenter
  )

us27 = UserSkill.create!(
  price: 50,
  user: melissa,
  skill: decor
  )

us28 = UserSkill.create!(
  price: 20,
  user: selena,
  skill: decor
  )
