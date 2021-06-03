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

puts "Created user 👤"


#Creating Folders
  Folder.create!(
    title: "Freediving",
    description: "Underwater folder, blub, blub",
    image: "freediving_folder",
    color: "black",
    user_id: User.first.id
    )

  Folder.create!(
    title: "Tennis",
    description: "Folder for my tennis related research",
    image: "tennis_folder",
    color: "yellow",
    user_id: User.first.id
    )

  Folder.create!(
    title: "Neuroscience",
    description: "For university and PHD research",
    image: "neuroscience_folder",
    color: "red",
    user_id: User.first.id
    )

puts "Created folder 🗂"


#Creating Articles
  #DIVING
    #1
    Article.create!(
      url: "https://www.reddit.com/r/learnprogramming/comments/nkbkf2/from_zero_coding_experience_at_the_age_of_24/",
      title: "Reddit, LearnProgramming, From Zero to Hero",
      note: "Story of a self-thought Pythong developer",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-02-10 10:00:00","%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
      )

    #2
    Article.create!(
      url: "https://gofreediving.co.uk/definitive-guide-frenzel-technique",
      title: "The Definitive Guide to the Frenzel Technique – With Emma Farrell",
      note: "Freediving, Frenzel, Diving techniques",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-11 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #3
    Article.create!(
      url: "https://gofreediving.co.uk/day-13-volunteering-at-turtle-rescue-sanctuary-the-olive-ridley-project",
      title: "Day 13: Volunteering at Turtle Rescue Sanctuary – The Olive Ridley Project",
      note: "Turlte Sanctuary, to read for next vacation",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-10 12:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #4
    Article.create!(
      url: "https://www.bbc.com/news/world-europe-33789773",
      title: "Freediving: The lure of the deep",
      note: "",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-10 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #5
    Article.create(
      url: "https://theconversation.com/free-divers-have-long-defied-science-and-we-still-dont-really-understand-how-they-go-so-deep-92690",
      title: "Free divers have long defied science – and we still don’t really understand how they go so deep",
      note: "Science related freediving article, weekend read",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-13 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

  #TENNIS
    #6
    Article.create(
      url: "https://www.nytimes.com/2021/05/31/sports/tennis/2021-french-open-what-to-watch-tuesday.html",
      title: "2021 French Open: What to Watch on Tuesday",
      note: "French Open, Sunday read",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-19 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #7
    Article.create(
      url: "https://www.jhse.ua.es/article/view/2020-v15-n1-ball-change-tennis-match-characteristics-rally-pace-grand-slam-tournaments",
      title: "Ball change in tennis: How does it affect match characteristics and rally pace in Grand Slam tournaments?",
      note: "Paper on tennis balls",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-23 10:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #8
    Article.create(
      url: "https://www.tennismindgame.com/serena-williams-tennis-lessons.html",
      title: "Serena Williams Masterclass Video Course Review",
      note: "Masterclass review",
      status: 1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-01 13:15:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #9
    Article.create(
      url: "https://www.bloomberg.com/news/features/2021-03-24/novak-djokovic-other-tennis-players-seek-to-reform-economics-of-the-sport",
      title: "The Missed Business Opportunity That Is Pro Tennis",
      note: "Weekend read on tennis as a business",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-12 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #10
    Article.create(
      url: "https://bleacherreport.com/articles/1857664-why-is-american-tennis-dying",
      title: "Why Is American Tennis Dying?",
      note: "Article on declining importance of tennis in US",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-04-28 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

  #NEUROSCIENE
    #11
    Article.create(
      url: "https://www.nature.com/articles/d41586-021-01353-9",
      title: "Activation of retinal neurons triggers tumour formation in cancer-prone mice",
      note: "Weekend read about tumour formation",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-07-01 13:00:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #12
    Article.create(
      url: "https://www.nature.com/articles/s41591-021-01385-8",
      title: "Putting the MD back into MDMA",
      note: "Article on MDMA for PTSD",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-04-26 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #13
    Article.create(
      url: "https://www.jneurosci.org/spotlight",
      title: "Annual Report on JNeurosci Spotlight",
      note: "Long weekend read about NS news",
      status: 0,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-26 13:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #14
    Article.create(
      url: "https://neurosciencenews.com/omega-3-psychosis-18527/",
      title: "Low Levels of Omega-3 Associated With Higher Risk of Psychosis",
      note: "Omega 3 and psychosis correlation",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-02 12:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

    #15
    Article.create(
      url: "https://www.the-scientist.com/reading-frames/opinion-the-overlooked-power-of-inhibitory-neurons-68819",
      title: "Opinion: The Overlooked Power of Inhibitory Neurons",
      note: "Short article, quick read",
      status: -1,
      importance: rand(0..5),
      reminder: DateTime.strptime("2021-05-05 18:30:00", "%Y-%m-%d %H:%M:%S"),
      user_id: User.first.id
    )

puts "Created articles 🐙🎾🧠"


#Creating Connections

  #ITERATION REFACTORING
  #iterate over my folders
  #for each folder n = index + 1
  #all articles, from n until n+4

  # first_folder = Folder.first
  # second_folder = Folder.first + 1
  # third_folder = Folder.first + 2

  # first_folder.articles << Article.first,
  # first_folder.articles << Article.first + 1,
  # first_folder.articles << Article.first + 2,
  # first_folder.articles << Article.first + 3,
  # first_folder.articles << Article.first + 4,

  # second_folder.articles << Article.first + 5,
  # second_folder.articles << Article.first + 6,
  # second_folder.articles << Article.first + 7,
  # second_folder.articles << Article.first + 8,
  # second_folder.articles << Article.first + 9,

  # third_folder.articles << Article.first + 10,
  # third_folder.articles << Article.first + 11,
  # third_folder.articles << Article.first + 12,
  # third_folder.articles << Article.first + 13,
  # third_folder.articles << Article.first + 14,

#Old Connections
  #Connection.new(
  #   folder_id: Folder.first.id,
  #   article_id: Article.first.id,
  #   )

  # Connection.create!(
  #   folder_id: Folder.first.id,
  #   article_id: Article.first.id + 1,
  #   )

  # Connection.create!(
  #   folder_id: Folder.first.id,
  #   article_id: "#{Article.first.id + 2}",
  #   )

  # Connection.create!(
  #   folder_id: Folder.first.id,
  #   article_id: "#{Article.first.id + 3}",
  #   )

  # Connection.create!(
  #   folder_id: Folder.first.id,
  #   article_id: "#{Article.first.id + 4}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 1}",
  #   article_id: "#{Article.first.id + 5}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 1}",
  #   article_id: "#{Article.first.id + 6}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 1}",
  #   article_id: "#{Article.first.id + 7}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 1}",
  #   article_id: "#{Article.first.id + 8}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 1}",
  #   article_id: "#{Article.first.id + 9}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 2}",
  #   article_id: "#{Article.first.id + 10}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 2}",
  #   article_id: "#{Article.first.id + 11}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 2}",
  #   article_id: "#{Article.first.id + 12}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 2}",
  #   article_id: "#{Article.first.id + 13}",
  #   )

  # Connection.create!(
  #   folder_id: "#{Folder.first.id + 2}",
  #   article_id: "#{Article.first.id + 14}",
  #   )

puts "Created connections 🤜🏻🤛🏿"

puts "Seeding done 🌱💦"

