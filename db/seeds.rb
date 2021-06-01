# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Folder.destroy_all
User.destroy_all

puts "Destroyed sample data 🤯"

#Creating Articles
  #DIVING
    #1
    Article.create(
        id: 1
        url: "https://www.reddit.com/r/learnprogramming/comments/nkbkf2/from_zero_coding_experience_at_the_age_of_24/"
        title: "Reddit, LearnProgramming, From Zero to Hero"
        note: "Story of a self-thought Pythong developer"
        status: "done"
        importance: rand(0..5)
        reminder: 2021-02-10 10:00:00
        folder_id: 1
      )

    #2
    Article.create(
      id: 2
      url: "https://gofreediving.co.uk/definitive-guide-frenzel-technique"
      title: "The Definitive Guide to the Frenzel Technique – With Emma Farrell"
      note: "Freediving, Frenzel, Diving techniques"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-11 13:30:00
      folder_id: 1
    )

    #3
    Article.create(
      id: 3
      url: "https://gofreediving.co.uk/day-13-volunteering-at-turtle-rescue-sanctuary-the-olive-ridley-project"
      title: "Day 13: Volunteering at Turtle Rescue Sanctuary – The Olive Ridley Project"
      note: "Turlte Sanctuary, to read for next vacation"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-10 12:00:00
      folder_id: 1
    )

    #4
    Article.create(
      id: 4
      url: "https://www.bbc.com/news/world-europe-33789773"
      title: "Freediving: The lure of the deep"
      note: ""
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-10 12:30:00
      folder_id: 1
    )

    #5
    Article.create(
      id: 5
      url: "https://theconversation.com/free-divers-have-long-defied-science-and-we-still-dont-really-understand-how-they-go-so-deep-92690"
      title: "Free divers have long defied science – and we still don’t really understand how they go so deep"
      note: "Science related freediving article, weekend read"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-13 12:30:00
      folder_id: 1
    )

  #TENNIS
    #6
    Article.create(
      id: 6
      url: "https://www.nytimes.com/2021/05/31/sports/tennis/2021-french-open-what-to-watch-tuesday.html"
      title: "2021 French Open: What to Watch on Tuesday"
      note: "French Open, Sunday read"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-19 12:30:00
      folder_id: 2
    )

    #7
    Article.create(
      id: 7
      url: "https://www.jhse.ua.es/article/view/2020-v15-n1-ball-change-tennis-match-characteristics-rally-pace-grand-slam-tournaments"
      title: "Ball change in tennis: How does it affect match characteristics and rally pace in Grand Slam tournaments?"
      note: "Paper on tennis balls"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-23 10:00:00
      folder_id: 2
    )

    #8
    Article.create(
      id: 8
      url: "https://www.tennismindgame.com/serena-williams-tennis-lessons.html"
      title: "Serena Williams Masterclass Video Course Review"
      note: "Masterclass review"
      status: "done"
      importance: rand(0..5)
      reminder: 2021-05-01 13:15:00
      folder_id: 2
    )

    #9
    Article.create(
      id: 9
      url: "https://www.bloomberg.com/news/features/2021-03-24/novak-djokovic-other-tennis-players-seek-to-reform-economics-of-the-sport"
      title: "The Missed Business Opportunity That Is Pro Tennis"
      note: "Weekend read on tennis as a business"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-12 13:30:00
      folder_id: 2
    )

    #10
    Article.create(
      id: 10
      url: "https://bleacherreport.com/articles/1857664-why-is-american-tennis-dying"
      title: "Why Is American Tennis Dying?"
      note: "Article on declining importance of tennis in US"
      status: "missed"
      importance: rand(0..5)
      reminder: 2021-04-28 12:30:00
      folder_id: 2
    )

  #NEUROSCIENE
    #11
    Article.create(
      id: 11
      url: "https://www.nature.com/articles/d41586-021-01353-9"
      title: "Activation of retinal neurons triggers tumour formation in cancer-prone mice"
      note: "Weekend read about tumour formation"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-07-01 13:00:00
      folder_id: 3
    )

    #12
    Article.create(
      id: 12
      url: "https://www.nature.com/articles/s41591-021-01385-8"
      title: "Putting the MD back into MDMA"
      note: "Article on MDMA for PTSD"
      status: "missed"
      importance: rand(0..5)
      reminder: 2021-04-26 13:30:00
      folder_id: 3
    )

    #13
    Article.create(
      id: 13
      url: "https://www.jneurosci.org/spotlight"
      title: "Annual Report on JNeurosci Spotlight"
      note: "Long weekend read about NS news"
      status: "to read"
      importance: rand(0..5)
      reminder: 2021-05-26 13:30:00
      folder_id: 3
    )

    #14
    Article.create(
      id: 14
      url: "https://neurosciencenews.com/omega-3-psychosis-18527/"
      title: "Low Levels of Omega-3 Associated With Higher Risk of Psychosis"
      note: "Omega 3 and psychosis correlation"
      status: "missed"
      importance: rand(0..5)
      reminder: 2021-05-02 12:30:00
      folder_id: 3
    )

    #15
    Article.create(
      id: 15
      url: "https://www.the-scientist.com/reading-frames/opinion-the-overlooked-power-of-inhibitory-neurons-68819"
      title: "Opinion: The Overlooked Power of Inhibitory Neurons"
      note: "Short article, quick read"
      status: "missed"
      importance: rand(0..5)
      reminder: 2021-05-05 18:30:00
      folder_id: 3
    )

puts "Created articles 🐙🎾🧠"

#Creating Folders
  Folder.create(
    id: 1
    title: "Freediving"
    description: "Underwater folder, blub, blub"
    image:
    color:
    user_id: 1
    )

  Folder.create(
    id: 2
    title: "Tennis"
    description: "Folder for my tennis related research"
    image:
    color:
    user_id: 1
    )

  Folder.create(
    id: 3
    title: "Neuroscience"
    description: "For university and PHD research"
    image:
    color:
    user_id: 1
    )

puts "Created folder 🗂"
puts "Seeding done 🌱💦"

