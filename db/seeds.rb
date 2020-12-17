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

file = URI.open('https://i0.wp.com/www.middleeastmonitor.com/wp-content/uploads/2018/12/2018_12-17-gaza-women-carpenter2.jpg?quality=85&strip=all&zoom=1&ssl=1')
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

file = URI.open('https://mh-2-stockagency.panthermedia.net/media/previews/0005000000/05878000/~female-plumber-fitting-a-kitchen-sink_05878539_high.jpg')
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

file = URI.open('https://pbs.twimg.com/media/ELHKCmPWkAEHpEp.jpg')
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

file = URI.open('https://www.nj.com/resizer/409Xx92tbn63vR-SDZtKLY4HLJA=/1280x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/image.nj.com/home/njo-media/width2048/img/centraljersey_impact/photo/photo---brittany-using-her-carpentry-tooljpg-fae9f0b3396abdb3.jpg')
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

file = URI.open('https://www.greenplumbingnj.com/wp-content/uploads/2016/03/apprentice-plumber2.jpg')
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

file = URI.open('https://i.pinimg.com/originals/14/d9/b6/14d9b61aa0f29ed72fbb2de3870b0575.jpg')
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

file = URI.open('https://previews.123rf.com/images/auremar/auremar1209/auremar120900146/15072357-female-decorator-about-to-start-painting.jpg')
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

file = URI.open('https://thumbs.dreamstime.com/b/gardening-concept-portrait-beautiful-female-gardener-watering-plants-garden-hot-summer-day-gardening-concept-portrait-138611114.jpg')
olivia = User.new(
name: "Olivia",
address: "Barcelona, Spain",
latitude: 41.4127396,
longitude: 2.1761666,
bio: "Hi, I'm Olivia, owner of a small gardening company where all the workers are women we believe in female empowerment and we work for it,
Contact us to clear any doubt you may have about your gardening  project",
email: "olivia@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
olivia.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
olivia.save!

file = URI.open('https://res.cloudinary.com/hnmqik4yn/image/upload/c_fit,f_auto,fl_force_strip,q_auto/v1602099466/z8cyfjitu8kzcqm0uzmb')
amelia = User.new(
name: "Amelia",
address: "Barcelona, Spain",
latitude: 41.3894736,
longitude: 2.154232,
bio: "Burned out trying to follow IKEA user manuals to assemble your new furniture? leave it to me, I can do it incredibly fast. Hit me up!",
email: "amelia@gmail.com",
password:"123456",
handylady: true,
available_until: Time.now.advance(hour: 3)
)
amelia.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
amelia.save!

file = URI.open('https://previews.123rf.com/images/auremar/auremar1710/auremar171001345/88150054-female-electrician-at-work.jpg')
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

file = URI.open('https://www.abc.net.au/cm/rimage/10428602-4x3-xlarge.jpg?v=3')
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

file = URI.open('https://www.thebalancesmb.com/thmb/wJxyTGVPkVsfovuf5Y-j8f28FVo=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-929293448-5afdbcee31283400373b9269.jpg')
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

file = URI.open('https://previews.123rf.com/images/guruxox/guruxox1602/guruxox160200100/54552003-female-carpenter-using-electric-sander-female-carpenter-using-electric-sander-for-wood.jpg')
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

file = URI.open('https://photo.mybuilder.com/2_thumb/12693555_6089462d92.jpg')
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

file = URI.open('https://paintingplacedecorators.co.uk/img/painters-decorators-crystal-palace.jpg')
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
appliance = Skill.create!(name: 'Appliance')
bricklayer = Skill.create!(name: 'Bricklayer')
carpenter = Skill.create!(name: 'Carpenter')
it_technician = Skill.create!(name: 'IT technician')
cleaning = Skill.create!(name: 'Cleaning')
decor = Skill.create!(name: 'Decor')
electrical = Skill.create!(name: 'Electrical')
gardening = Skill.create!(name: 'Gardening')
home_repair = Skill.create!(name: 'Home repair')
moving = Skill.create!(name: 'Moving')
painter = Skill.create!(name: 'Painter')
plumber = Skill.create!(name: 'Plumber')
tiler = Skill.create!(name: 'Tiler')

puts "completed"

puts "creating new jobs"

file = URI.open('https://photo.mybuilder.com/2_thumb/451249_0ab8749cca.jpg')
job1 = Job.new(
  customer: norma,
  handylady: sophia,
  date: Date.tomorrow,
  description: "Isn't working properly",
  status: "done",
  title: "need to fix some lights in my kitchen",
  location: "Barcelona",
  skill: electrical
)
job1.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job1.save!

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/02/1f/8c/44/broken-wardrobe.jpg')
job2 = Job.create!(
  customer: natalie,
  handylady: grace,
  date: Date.tomorrow,
  description: "Drawers are not working properly",
  status: "done",
  title: "Need to fix my wardrobe",
  location: "Barcelona",
  skill: carpenter
)

job2.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job2.save!

file = URI.open('https://i.pinimg.com/originals/56/92/04/569204e0add79b718e74185e7d6d1799.jpg')
job3 = Job.create!(
  customer: katty,
  handylady: valentina,
  date: Date.tomorrow,
  description: "I want to enlarge and remodel my ktichen ",
  status: "done",
  title: "Need take a wall down in my kitchen",
  location: "Barcelona",
  skill: bricklayer
)
job3.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job3.save!

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-672758146-1580979535.jpg?crop=0.639xw:1.00xh;0.284xw,0&resize=480:*')
job4 = Job.create!(
  customer: susan,
  handylady: juliet,
  date: Date.tomorrow,
  description: "Currently is grey, I would like to set it pink",
  status: "done",
  title: "I want to change the colour of my wall room",
  location: "Barcelona",
  skill: painter
)
job4.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job4.save!

file = URI.open('https://i.pinimg.com/originals/72/41/62/7241627b27ddce6ecef70a48992dfccf.jpg')
job5 = Job.create!(
  customer: victoria,
  handylady: maggie,
  date: Date.tomorrow,
  description: "It's making a weird noise and the screen is black",
  status: "done",
  title: "My laptop doesn't turn on",
  location: "Barcelona",
  skill: it_technician
)
job5.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job5.save!

file = URI.open('https://lesliemaxwellkaiura.files.wordpress.com/2015/11/broken-chair-e1448055652128.jpg?w=640')
job6 = Job.create!(
  customer: victoria,
  handylady: nina,
  date: Date.tomorrow,
  description: "I just sat on it and it smashed to pieces",
  status: "done",
  title: "Broken chair",
  location: "Barcelona",
  skill: carpenter
)
job6.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job6.save!

file = URI.open('https://www.rentokil.com/au/blog/wp-content/uploads/2018/03/shutterstock_1062219362.jpg')
job7 = Job.create!(
  customer: katty,
  handylady: melissa,
  date: Date.tomorrow,
  description: "Everything in my house is made of wood and has been eaten by termites, I now need everything reconstructed.",
  status: "done",
  title: "Everything is gone",
  location: "Barcelona",
  skill: carpenter
)
job7.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job7.save!

file = URI.open('https://i.pinimg.com/originals/49/52/7f/49527fb23fa987fbce7e2d43542486e6.jpg')
job8 = Job.create!(
  customer: nina,
  handylady: selena,
  date: Date.tomorrow,
  description: "I'd like my house to be tiled from top to bottom, including my sofa as I find I sink into it too much when I sit down.",
  status: "done",
  title: "Need entire house tiled",
  location: "Barcelona",
  skill: tiler
)
job8.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job8.save!

file = URI.open('https://i.pinimg.com/originals/f2/0d/0b/f20d0b8f5ddb9fa9d629873a3bca8345.png')
job9 = Job.create!(
  customer: selena,
  handylady: francis,
  date: Date.tomorrow,
  description: "All the chairlegs in my house are broken due to broken chairlegs.",
  status: "done",
  title: "Broken chair legs need to become whole chair legs",
  location: "Barcelona",
  skill: home_repair
)
job9.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job9.save!

file = URI.open('https://i.pinimg.com/originals/c4/f0/77/c4f077e14f87949677b8aa4ef978ff77.jpg')
job10 = Job.create!(
  customer: selena,
  handylady: beth,
  date: Date.tomorrow,
  description: "My house is too green, it makes me feel like I'm laying face down in a field.",
  status: "done",
  title: "Need house painted",
  location: "Barcelona",
  skill: painter
)
job10.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job10.save!

file = URI.open('https://www.recovery-estonia.ee/wp-content/uploads/2017/02/Rectangle-9-Copy-4.jpg')
job11 = Job.create!(
  customer: beth,
  handylady: natalie,
  date: Date.tomorrow,
  description: "It keeps sending abusive emails to my gardener",
  status: "done",
  title: "Computer is behaving strangely",
  location: "Barcelona",
  skill: it_technician
)
job11.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job11.save!

file = URI.open('https://www.propertyreporter.co.uk/images/660x350/16832-shutterstock_28772569.jpg')
job12 = Job.create!(
  customer: natalie,
  handylady: katty,
  date: Date.tomorrow,
  description: "Need help moving from my apartment into a small hole",
  status: "done",
  title: "Moving help please",
  location: "Barcelona",
  skill: moving
)
job12.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job12.save!

file = URI.open('https://render.fineartamerica.com/images/rendered/default/canvas-print/10/6.5/mirror/break/images/artworkimages/medium/1/painted-over-windows-erik-burg-canvas-print.jpg')
job13 = Job.create!(
  customer: katty,
  handylady: susan,
  date: Date.tomorrow,
  description: "I need all the windows painted over please",
  status: "done",
  title: "Painting help needed",
  location: "Barcelona",
  skill: painter
)
job13.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job13.save!

file = URI.open('https://www.gannett-cdn.com/presto/2020/08/24/USAT/793bbec9-7453-4108-9e5a-7a82287e7b85-AP_White_House_Rose_Garden_Renovation.jpg?width=660&height=440&fit=crop&format=pjpg&auto=webp')
job14 = Job.create!(
  customer: susan,
  handylady: olivia,
  date: Date.tomorrow,
  description: "Need it ripped out and replaced with nothing",
  status: "done",
  title: "Sick of my garden",
  location: "Barcelona",
  skill: gardening
)
job14.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job14.save!

file = URI.open('https://farm3.staticflickr.com/2558/3737216640_3e1111785e_z.jpg')
job15 = Job.create!(
  customer: olivia,
  handylady: amelia,
  date: Date.tomorrow,
  description: "I'd like all my furniture moved out for no reason please",
  status: "done",
  title: "Sick of my furniture",
  location: "Barcelona",
  skill: moving
)
job15.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job15.save!

file = URI.open('https://photos.lensculture.com/large/49f47e7b-d938-4b96-a509-19e6621123db.jpg')
job16 = Job.create!(
  customer: amelia,
  handylady: norma,
  date: Date.tomorrow,
  description: "It's very dark",
  status: "done",
  title: "Please help",
  location: "Barcelona",
  skill: electrical
)
job16.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job16.save!

file = URI.open('https://i2-prod.mirror.co.uk/incoming/article21609476.ece/ALTERNATES/s615b/0_Flooding-Affects-Low-Lying-Areas-Around-Yorkshire.jpg')
job17 = Job.create!(
  customer: amelia,
  handylady: louisa,
  date: Date.tomorrow,
  description: "A flood is coming",
  status: "done",
  title: "Pipes have burst",
  location: "Barcelona",
  skill: plumber
)
job17.photos.attach(io: file, filename: 'job.png', content_type: 'image/png')
job17.save!

puts "completed"

puts "Creating reviews..."

reviews = []

reviews << Review.create!(
  title: "Did not drown",
  description: "Fixed the broken pipe and also provided me with a snorkel and goggles so I survived the flood inside my house.",
  star_rating: 5,
  job: job17,
  user: amelia
  )

reviews << Review.create!(
  title: "Problem has been solved",
  description: "I thought I had a problem with the electrics in my house but it turned out all the lights were just switched off.",
  star_rating: 5,
  job: job16,
  user: amelia
  )

reviews << Review.create!(
  title: "Just as I expected",
  description: "I wanted all my furniture moved out of my apartment for no reason but she left a single fork on the floor. Job was left half done as far as I'm concerned.",
  star_rating: 2,
  job: job15,
  user: susan
  )

reviews << Review.create!(
  title: "Just as I expected",
  description: "Helped me rip my entire garden out so and replaced with a vast amount of nothing. I now have somewhere to go and wonder where it all went wrong.",
  star_rating: 4,
  job: job14,
  user: susan
  )

reviews << Review.create!(
  title: "So happy",
  description: "Great job. All the windows in my house have been successfully painted over.",
  star_rating: 5,
  job: job13,
  user: katty
  )

reviews << Review.create!(
  title: "Phenomenal",
  description: "Excellent removals service. Helped me move from my apartment into a small hole seamlessly.",
  star_rating: 5,
  job: job12,
  user: natalie
  )

reviews << Review.create!(
  title: "Could be better",
  description: "My computer no longer sends abusive emails to my gardener but it is now sending them to my dentist instead",
  star_rating: 3,
  job: job11,
  user: beth
  )

reviews << Review.create!(
  title: "Am I drowning?",
  description: "Painted my house blue. It's too blue and now I don't know if I'm on land or under water.",
  star_rating: 2,
  job: job10,
  user: selena
  )

reviews << Review.create!(
  title: "I've literally never been this happy",
  description: "Broken chair legs were broken due to being broken chair legs. I had to get a second opinion but I can now confirm they are once again whole chair legs.",
  star_rating: 4,
  job: job9,
  user: selena
  )

reviews << Review.create!(
  title: "There's too many tiles",
  description: "My daughter is stuck behind the tiles please undo this",
  star_rating: 3,
  job: job8,
  user: nina
  )

reviews << Review.create!(
  title: "I've literally never been this happy",
  description: "The termites have gone! My house stands once again!",
  star_rating: 5,
  job: job7,
  user: victoria
  )

reviews << Review.create!(
  title: "Moderately thrilled",
  description: "I can now sit once again.",
  star_rating: 4,
  job: job6,
  user: victoria
  )

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
  skill: carpenter
  )

us5 = UserSkill.create!(
  price: 15,
  user: beth,
  skill: cleaning
  )

us7 = UserSkill.create!(
  price: 20,
  user: louisa,
  skill: gardening
)

us8 = UserSkill.create!(
  price: 25,
  user: francis,
  skill: home_repair
  )

us9 = UserSkill.create!(
  price: 35,
  user: louisa,
  skill: plumber
  )

us10 = UserSkill.create!(
  price: 30,
  user: beth,
  skill: painter
  )

us14 = UserSkill.create!(
  price: 30,
  user: natalie,
  skill: it_technician
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
  skill: gardening
  )

us18 = UserSkill.create!(
  price: 20,
  user: amelia,
  skill: moving
  )

us19 = UserSkill.create!(
  price: 25,
  user: sophia,
  skill: electrical
  )

us20 = UserSkill.create!(
  price: 40,
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
  price: 45,
  user: valentina,
  skill: decor
  )

us24 = UserSkill.create!(
  price: 20,
  user: juliet,
  skill: cleaning
  )

us25 = UserSkill.create!(
  price: 35,
  user: maggie,
  skill: it_technician
  )

# us26 = UserSkill.create!(
# us11 = UserSkill.create!(
#   price: 30,
#   user: norma,
#   skill: moving
#   )

# us12 = UserSkill.create!(
#   price: 20,
#   user: louisa,
#   skill: appliance
#   )

us13 = UserSkill.create!(
  price: 40,
  user: francis,
  skill: tiler
  )

# us14 = UserSkill.create!(
#   price: 50,
#   user: francis,
#   skill: appliance
#   )

# us15 = UserSkill.create!(
#   price: 5,
#   user: beth,
#   skill: carpenter
#   )

# us16 = UserSkill.create!(
#   price: 30,
#   user: natalie,
#   skill: plumber
#   )

# us15 = UserSkill.create!(
#   price: 25,
#   user: katty,
#   skill: moving
#   )

# us16 = UserSkill.create!(
#   price: 40,
#   user: susan,
#   skill: painter
#   )

# us17 = UserSkill.create!(
#   price: 30,
#   user: olivia,
#   skill: gardening
#   )

# us18 = UserSkill.create!(
#   price: 5,
#   user: amelia,
#   skill: moving
#   )

# us19 = UserSkill.create!(
#   price: 5,
#   user: sophia,
#   skill: electrical
#   )

# us20 = UserSkill.create!(
#   price: 50,
#   user: grace,
#   skill: carpenter
#   )

# us21 = UserSkill.create!(
#   price: 50,
#   user: grace,
#   skill: bricklayer
#   )

# us22 = UserSkill.create!(
#   price: 50,
#   user: grace,
#   skill: painter
#   )

# us23 = UserSkill.create!(
#   price: 50,
#   user: valentina,
#   skill: decor
#   )

# us24 = UserSkill.create!(
#   price: 20,
#   user: juliet,
#   skill: cleaning
#   )

# us25 = UserSkill.create!(
#   price: 50,
#   user: maggie,
#   skill: it_technician
#   )

# us26 = UserSkill.create!(
#   price: 40,
#   user: nina,
#   skill: carpenter
#   )

# us27 = UserSkill.create!(
#   price: 50,
#   user: melissa,
#   skill: decor
#   )

# us28 = UserSkill.create!(
#   price: 20,
#   user: selena,
#   skill: decor
#   )
