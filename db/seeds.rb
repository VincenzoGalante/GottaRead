require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Folder.destroy_all
Connection.destroy_all
User.destroy_all

puts "Destroyed sample data 🤯"


#Creating Users
  User.create!(
    email: "gigi@socklove.com",
    first_name: "Gigi",
    last_name: "Readalot",
    password: "123456"
    )

  User.create!(
    email: "lisamariemaass@hotmail.com",
    first_name: "Lisa-Marie",
    last_name: "Maaß",
    password: "123456"
    )

puts "Created user 👤"


#Creating Folders
file = URI.open('https://www.york.ac.uk/media/study/courses/postgraduate/psychology/newpgcoursepages/msccognitiveneuroscience/cognitive%20neuroscience%20banner.jpg')
  folder_neuro = Folder.create!(
    title: "Neuroscience",
    description: "For university and PHD research",
    image: "neuroscience_folder",
    color: "red",
    user_id: User.first.id
    )
  folder_neuro.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.orca.com/img/products/genre/freediving_web.jpg')
 folder_freediving = Folder.create!(
    title: "Freediving",
    description: "Underwater folder, blub, blub",
    image: "freediving_folder",
    color: "black",
    user_id: User.first.id
    )
 folder_freediving.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.rnz.de/cms_media/module_img/1170/585304_1_org_220305565.jpg')
folder_tennis = Folder.create!(
    title: "Tennis",
    description: "Folder for my tennis related research",
    image: "tennis_folder",
    color: "yellow",
    user_id: User.first.id
    )
 folder_tennis.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



file = URI.open('https://specials-images.forbesimg.com/imageserve/1153657433/960x0.jpg?fit=scale')
  folder_invest = Folder.create!(
    title: "Investing",
    description: "Folder for my investing related research",
    image: "neuroscience_folder",
    color: "purple",
    user_id: User.first.id
    )
  folder_invest.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://www.onlinefussballmanager.de/img/lp03.png')
  folder_soccer = Folder.create!(
    title: "Soccer",
    description: "Interesting articles around soccer",
    image: "neuroscience_folder",
    color: "green",
    user_id: User.first.id
    )
folder_soccer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



puts "Created folder 🗂"


#Creating Articles
  #DIVING
    #1
    Article.create!(
      url: "https://blogbuzzter.de/2020/02/alexey-molchanov-weltrekord-im-freediving/",
      title: "Molchanov Worldrecord",
      note: "Story of a self-thought Pythong developer",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-10 10:00:00","%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
      )

    #2
    Article.create!(
      url: "https://gofreediving.co.uk/definitive-guide-frenzel-technique",
      title: "Frenzel Technique",
      note: "Freediving, Frenzel, Diving techniques",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-12 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #3
    Article.create!(
      url: "https://gofreediving.co.uk/day-13-volunteering-at-turtle-rescue-sanctuary-the-olive-ridley-project",
      title: "Volunteering at Turtle Rescue Sanctuary",
      note: "Turlte Sanctuary, to read for next vacation",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-14 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #4
    Article.create!(
      url: "https://www.bbc.com/news/world-europe-33789773",
      title: "Freediving: The lure of the deep",
      note: "Sums up many things about freediving",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-13 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #5
    Article.create!(
      url: "https://theconversation.com/free-divers-have-long-defied-science-and-we-still-dont-really-understand-how-they-go-so-deep-92690",
      title: "Free divers have long defied science",
      note: "Science related freediving article, weekend read",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-5 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #6
    Article.create!(
      url: "https://www.guinnessworldrecords.com/news/2021/5/freediver-holds-breath-for-almost-25-minutes-breaking-record-660285",
      title: "Freediving World Record",
      note: "Fun read about the world record holder in freediving",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-05 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #7
    Article.create!(
      url: "https://www.deeperblue.com/dealing-risks-associated-freediving/",
      title: "Dealing With Risks Associated With Freediving",
      note: "Must read before I go diving again, take notes!",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-17 15:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #8
    Article.create!(
      url: "https://www.deeperblue.com/history-of-freediving/",
      title: "History of Freediving",
      note: "Gain some knowledge to show of on the next beach party!",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-03 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #9
    Article.create!(
      url: "https://unterwasserwelt.de/freediving-der-einstieg/",
      title: "Getting Started with Apnoe Freediving",
      note: "Awesome articles with some tipps for beginners",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-20 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
      )

    #10
    Article.create!(
      url: "https://www.outsideonline.com/2409738/freediving-mountaineering-altitude-research",
      title: "The Hidden Link Between Freediving and Mountaineering",
      note: "How freediving helps in high altitudes",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-24 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
      )

    #11
    Article.create!(
      url: "https://www.redbull.com/de-de/die-besten-freediving-spots-der-welt",
      title: "The best Freediving Spots in the World",
      note: "Freediving spots and experiences",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-25 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
      )



  #TENNIS
    #12
    Article.create!(
      url: "https://www.nytimes.com/2021/05/31/sports/tennis/2021-french-open-what-to-watch-tuesday.html",
      title: "2021 French Open",
      note: "French Open, Sunday read",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-05 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #13
    Article.create!(
      url: "https://www.jhse.ua.es/article/view/2020-v15-n1-ball-change-tennis-match-characteristics-rally-pace-grand-slam-tournaments",
      title: "Scientific effects on ball change in grand slam tournaments",
      note: "Paper on tennis balls",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-23 10:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #14
    Article.create!(
      url: "https://www.tennismindgame.com/serena-williams-tennis-lessons.html",
      title: "Serena Williams Masterclass Video Course Review",
      note: "Masterclass review",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-01 13:15:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #15
    Article.create!(
      url: "https://www.bloomberg.com/news/features/2021-03-24/novak-djokovic-other-tennis-players-seek-to-reform-economics-of-the-sport",
      title: "Missed Business Opportunity That Is Pro Tennis",
      note: "Weekend read on tennis as a business",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-12 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #16
    Article.create!(
      url: "https://bleacherreport.com/articles/1857664-why-is-american-tennis-dying",
      title: "Why Is American Tennis Dying?",
      note: "Article on declining importance of tennis in US",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-04-28 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #17
    Article.create!(
      url: "https://www.wired.com/story/how-elite-tennis-players-crank-out-serves-at-150-mph/",
      title: "How Elite Tennis Players Crank Out Serves at 150 MPH",
      note: "This might show me how I can serve faster!",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-14 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #18
    Article.create!(
      url: "http://www.tennisviewmag.com/tennis-view-magazine/article/are-court-surfaces-slowing-down-game-does-it-matter",
      title: "Are Court Surfaces Slowing Down the Game? Does It Matter?",
      note: "Why the tennis courts are getting slower, super cool research",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-29 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #19
    Article.create!(
      url: "https://www.top-tennis-training.com/roger-federer-footwork-secrets-revealed-3-steps-you-must-copy/",
      title: "Roger Federer Footwork Secrets Revealed",
      note: "Federer's split-step is explained in detail",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-29 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #20
    Article.create!(
      url: "https://serveandvolleytennis.com/why-did-serve-and-volley-die-out/",
      title: "Why Did The Serve And Volley Die Out?",
      note: "Deep dive into serve and volley in the modern game",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-15 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #21
    Article.create!(
      url: "https://www.wtatennis.com/news/2161964/french-open-2021-dates-draws-prize-money-and-what-you-need-to-know",
      title: "French Open 2021: Dates, draws, prize money",
      note: "How much are the players earning?",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-15 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

  #NEUROSCIENE
    #22
    Article.create!(
      url: "https://www.nature.com/articles/d41586-021-01353-9",
      title: "Activation of retinal neurons triggers tumour",
      note: "Weekend read about tumour formation",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-01 13:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #23
    Article.create!(
      url: "https://www.nature.com/articles/s41591-021-01385-8",
      title: "Putting the MD back into MDMA",
      note: "Article on MDMA for PTSD",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-04-26 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #24
    Article.create!(
      url: "https://www.jneurosci.org/spotlight",
      title: "Annual Report on JNeurosci Spotlight",
      note: "Long weekend read about NS news",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-26 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #25
    Article.create!(
      url: "https://neurosciencenews.com/omega-3-psychosis-18527/",
      title: "Low Levels of Omega-3 Associated With Higher Risk of Psychosis",
      note: "Omega 3 and psychosis correlation",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-02 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #26
    Article.create!(
      url: "https://www.the-scientist.com/reading-frames/opinion-the-overlooked-power-of-inhibitory-neurons-68819",
      title: "Opinion: The Overlooked Power of Inhibitory Neurons",
      note: "Short article, quick read",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-05 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #27
    Article.create!(
      url: "https://www.nature.com/articles/s41598-019-46877-3",
      title: "An experimental study of a virtual reality counselling paradigm using embodied self-dialogue",
      note: "How VR mgiht help with the Solomon’s Paradox",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-05 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #28
    Article.create!(
      url: "https://www.nature.com/articles/s41598-018-36885-0",
      title: "Human Mind Control of Rat Cyborg’s Continuous Locomotion with Wireless Brain-to-Brain Interface",
      note: "BBI experiment with a rat",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-02 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #29
    Article.create!(
      url: "https://www.the-scientist.com/reading-frames/opinion-the-overlooked-power-of-inhibitory-neurons-68819",
      title: "Opinion: The Overlooked Power of Inhibitory Neurons",
      note: "Short article, quick read",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-05 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #30
    Article.create!(
      url: "https://www.neurotrackerx.com/post/9-major-neuroscience-breakthroughs-of-2020",
      title: "9 Major Neuroscience Breakthroughs of 2020",
      note: "Super interesting topics ideal for future deep dives",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-03 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #31
    Article.create!(
      url: "https://www.neurotrackerx.com/post/why-athletes-arent-super-human-when-it-comes-to-mental-health",
      title: "Why Athletes Aren’t Super Human When it Comes to Mental Health",
      note: "Why many athletes suffer from mental health problems",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-23 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #Investment
    #32
    Article.create!(
      url: "https://www.oldschoolvalue.com/investing-strategy/benjamin-graham-investing-checklist/",
      title: "Benjamin Graham Investing Checklist",
      note: "Learn about investing from Grahams approach",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-3 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #33
    Article.create!(
      url: "https://www.investopedia.com/terms/v/valueinvesting.asp",
      title: "What Is Value Investing",
      note: "The definition of Value investing",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-07 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

     #34
    Article.create!(
      url: "https://www.thebalance.com/best-books-about-investing-4155082",
      title: "The 12 Best Investing Books of 2021",
      note: "Books that help me managing my portfolio",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-20 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #35
    Article.create!(
      url: "https://www.theguardian.com/business/2021/feb/02/gamestop-shares-plunge-as-traders-dump-stock",
      title: "GameStop shares plunge as traders dump stock",
      note: "Review what happened to Gamestop",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-20 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #36
    Article.create!(
      url: "https://www.investopedia.com/best-online-brokers-4587872",
      title: "Best Online Brokers",
      note: "Might help me with choosing a new broker",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-03 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #Soccer
    #37
    Article.create!(
      url: "https://www.transfermarkt.de/ehemaliger-hsv-sturmer-lasogga-will-zuruck-nach-europa-bdquo-das-feuer-brennt-noch-in-mir-ldquo-/view/news/386936",
      title: "PML returning to HSV?",
      note: "This is some interesting transfer news",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-05 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #38
    Article.create!(
      url: "https://www.nytimes.com/2021/04/22/sports/soccer/super-league-soccer.html",
      title: "Best Online Brokers",
      note: "Might help me with choosing a new broker",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-20 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #39
    Article.create!(
      url: "https://www.investopedia.com/best-online-brokers-4587872",
      title: "How the Super League Fell Apart",
      note: "Info on the disaster of the super league",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-20 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #40
    Article.create!(
      url: "https://www.manchestereveningnews.co.uk/sport/football/transfer-news/manchester-united-transfer-news-recap-20769466",
      title: "Manchester United news and transfers RECAP",
      note: "Manchester United is targeting europes best players",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-02 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #41
    Article.create!(
      url: "https://www.theperspective.com/debates/sports/premier-league-or-la-liga-which-is-the-best-soccer-league/",
      title: "PREMIER LEAGUE OR LA LIGA: WHICH IS THE BEST SOCCER LEAGUE?",
      note: "Might help me with winning future soccer debates",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-06-02 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )





  #HOMELESSARTICLES
    #32
    Article.create!(
      url: "wwww.google.com",
      title: "This is a title",
      note: "Test 123",
      status: 0,
      importance: rand(0..5),
      user_id: User.first.id
    )

    #33
    Article.create!(
      url: "www.pudim.com.br",
      title: "This is another title",
      note: "Mic check 1, 2, 1, 2",
      status: 0,
      importance: rand(0..5),
      user_id: User.first.id
    )


puts "Created articles 🐙🎾🧠 & ❌🏠"


#Creating Connections

  #ITERATION REFACTORING
  #iterate over my folders
  #for each folder n = index + 1
  #all articles, from n until n+4

  # first_folder = Folder.first
  # second_folder = Folder.second
  # third_folder = Folder.third

  # first_folder.articles << Article.first
  # first_folder.articles << Article.first + 1
  # first_folder.articles << Article.first + 2
  # first_folder.articles << Article.first + 3
  # first_folder.articles << Article.first + 4

  # second_folder.articles << Article.first + 5
  # second_folder.articles << Article.first + 6
  # second_folder.articles << Article.first + 7
  # second_folder.articles << Article.first + 8
  # second_folder.articles << Article.first + 9

  # third_folder.articles << Article.first + 10
  # third_folder.articles << Article.first + 11
  # third_folder.articles << Article.first + 12
  # third_folder.articles << Article.first + 13
  # third_folder.articles << Article.first + 14

#Old Connections
  Connection.new(
    folder_id: Folder.first.id,
    article_id: Article.first.id,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 1,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 2,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 3,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 4,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 5,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 6,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 7,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 8,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 9,
    )

  Connection.create!(
    folder_id: Folder.first.id,
    article_id: Article.first.id + 10,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 11,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 12,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 13,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 14,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 15,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 16,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 17,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 18,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 19,
    )

  Connection.create!(
    folder_id: Folder.first.id + 1,
    article_id: Article.first.id + 20,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 21,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 22,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 23,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 24,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 25,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 26,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 27,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 28,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 29,
    )

  Connection.create!(
    folder_id: Folder.first.id + 2,
    article_id: Article.first.id + 30,
    )

  Connection.create!(
    folder_id: Folder.first.id + 3,
    article_id: Article.first.id + 31,
    )

  Connection.create!(
    folder_id: Folder.first.id + 3,
    article_id: Article.first.id + 32,
    )

  Connection.create!(
    folder_id: Folder.first.id + 3,
    article_id: Article.first.id + 33,
    )

  Connection.create!(
    folder_id: Folder.first.id + 3,
    article_id: Article.first.id + 34,
    )

  Connection.create!(
    folder_id: Folder.first.id + 3,
    article_id: Article.first.id + 35,
    )

  Connection.create!(
    folder_id: Folder.first.id + 4,
    article_id: Article.first.id + 36,
    )

  Connection.create!(
    folder_id: Folder.first.id + 4,
    article_id: Article.first.id + 37,
    )

  Connection.create!(
    folder_id: Folder.first.id + 4,
    article_id: Article.first.id + 38,
    )

  Connection.create!(
    folder_id: Folder.first.id + 4,
    article_id: Article.first.id + 39,
    )

  Connection.create!(
    folder_id: Folder.first.id + 4,
    article_id: Article.first.id + 40,
    )



puts "Created connections 🤜🏻🤛🏿"

puts "Seeding done 🌱💦"

