import 'package:flutter_auth/models/jobDetail.dart';
import '../models/chat.dart';
import '../models/company_model.dart';
import '../models/detailPost.dart';
import '../models/group_model.dart';
import '../models/notification.dart';
import '../models/user_model.dart';
import '../models/userpostModel.dart';
import '../models/network.dart';

const recentsearch = [
  "flutter delevolment",
  "IT support",
  "hr",
  "Data Scientist",
];
const trySearch = [
  "Information Technology Manager",
  "Computer Research Scientist",
  "Network and Systems Administrator",
  "Computer Support Specialists ",
  "Support specialist",
  "Computer programmer",
];
const network = [myNetwork(status: "CEO", name: "robert")];
const chat = [
  Chat(
      nameChat: "Henry",
      urlProfile:
          "https://media.istockphoto.com/photos/confident-businessman-picture-id174764352?k=6&m=174764352&s=170667a&w=0&h=L7PetakqLNuyuMHW9fptHOa_q8-Wvdbjy1FkFrltn9s=",
      lastChat: "Thanks so much!",
      lastDate: "Dec 4",
      active: true),
  Chat(
      nameChat: "Frederick",
      urlProfile:
          "https://www.unh.edu/unhtoday/sites/default/files/styles/article_large/public/article/2019/professional_woman_headshot.jpg?itok=1914rv5M",
      lastChat: "Thanks, that's very helpful",
      lastDate: "Dec 2",
      active: true),
  Chat(
      nameChat: "Martin",
      urlProfile:
          "https://media.istockphoto.com/photos/portrait-of-mature-hispanic-man-picture-id805012064?k=6&m=805012064&s=170667a&w=0&h=wsUNUsjeSLfkm-6UWEJlfgKlMobMdIoDskJNaJ1Ph80=",
      lastChat: "Yup, that's true",
      lastDate: "Nov 30",
      active: false),
  Chat(
      nameChat: "Frank",
      urlProfile:
          "https://imgix.ranker.com/user_node_img/69/1360050/original/kelly-slater-photo-u22?fit=crop&fm=pjpg&q=60&w=375&dpr=1",
      lastChat: "That's accurate",
      lastDate: "Nov 29",
      active: false),
  Chat(
      nameChat: "Nathan",
      urlProfile:
          "https://media.istockphoto.com/photos/portrait-of-serious-senior-woman-picture-id805011994?k=6&m=805011994&s=170667a&w=0&h=NCHWsaRxAGNzVvR6mBB7pcudOL9GNE3jB-uvae3UZ3U=",
      lastChat: "You are right",
      lastDate: "Nov 28",
      active: false),
  Chat(
      nameChat: "Alonzo",
      urlProfile:
          "https://media-exp1.licdn.com/dms/image/C560BAQHiNjPu7ApgyA/company-logo_200_200/0/1626837060356?e=2147483647&v=beta&t=C_ONr7woeXwaPxLvoygGk4nKqlIJn3qwnJh1XZWYEmE",
      lastChat: "Give me a fist bump",
      lastDate: "Nov 27",
      active: true),
  Chat(
      nameChat: "Harold",
      urlProfile:
          "https://i1.wp.com/sanespaces.com/core/wp-content/uploads/2017/03/Woman-business-thumbs-up.jpg?ssl=1",
      lastChat: "I think you are great!",
      lastDate: "Nov 26",
      active: true),
  Chat(
      nameChat: "Anthony",
      urlProfile:
          "https://www.eikonphoto.com/wp-content/uploads/2018/01/professional-headshots-for-women.jpg",
      lastChat: "Thumbs up",
      lastDate: "Nov 25",
      active: false),
];

final List<UserPostModel> postList = [
  UserPostModel(
      name: "Shehroz Jamal",
      profileUrl: "assets/postImage/profileImage4.jpeg",
      headline: "HR Executive ",
      tags:
          "#positivity #motivation #learning #progress #development #networking #business #jobhunters #jobseekers #connections #networking #linkedin #nevergiveup #staypositive #staystrong #positiveattitude",
      description:
          "Stay Strong!\n\nKeep Your Head Up!\n\nRejection means a better opportunity awaits you elsewhere.\n\nYour thoughts?",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: false,
      image: "assets/postImage/postImage4.jpeg",
      likes: "800",
      duration: "8d",
      postDate: "6st",
      numOfReactionIcon: 2,
      share: "79"),
  UserPostModel(
      name: "Arslan nasir",
      profileUrl: "assets/postImage/profileImage6.jpeg",
      headline: "MEAN Stack Developer | Freelancer",
      tags: "#independenceday2020",
      description:
          "Without the sweat, toil and sacrifices of our heroes, we wouldn’t have this bright day that we celebrate today. Happy Independence Day.",
      isVideoPost: false,
      comments: "1k",
      video: "",
      isOnline: true,
      image: "assets/postImage/postImage6.jpeg",
      likes: "20k",
      duration: "5d",
      postDate: "1st",
      numOfReactionIcon: 5,
      share: "2.8k"),
  UserPostModel(
      name: "Mohsin Ali",
      profileUrl: "assets/postImage/profileImage3.jpeg",
      headline: "Logo Designer | Freelancer |",
      tags: "#datascience #machinelearning #programming #python #joke",
      description: "Google, Stack Overflow are your saviors :)",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: true,
      image: "assets/postImage/postImage3.jpeg",
      likes: "230",
      duration: "10d",
      postDate: "2st",
      numOfReactionIcon: 1,
      share: ""),
  UserPostModel(
      name: "Sahar Salimi",
      profileUrl: "assets/postImage/profileImage2.jpeg",
      headline:
          "LOGO DESIGN 🔹3D LOGO ANIMATION 🔹 DRAW CARTOON 🔹 BUSINESS CARD 🔹 PENCIL SKETCH 🔹 FLYER DESIGN 🔹 BROCHURE DESIGN 🔹",
      tags: "#Respect #SadioMane #PayBack #Love",
      description: "Rate my art work",
      isVideoPost: false,
      comments: "500",
      video: "",
      isOnline: false,
      image: "assets/postImage/postImage2.jpeg",
      likes: "10k",
      duration: "1d",
      postDate: "1st",
      numOfReactionIcon: 4,
      share: "5k"),
  UserPostModel(
      name: "Ali Raza",
      profileUrl: "assets/postImage/profileImage1.jpeg",
      headline: "Creative Content Writer | Content Specialist | Storyteller ",
      tags: "#Respect #SadioMane #PayBack #Love",
      description:
          "The world famous football player Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
      isVideoPost: false,
      comments: "400",
      video: "videos/flutterIntro.mp4",
      isOnline: false,
      image: "assets/postImage/postImage1.jpeg",
      likes: "1.1k",
      duration: "20d",
      postDate: "8st",
      numOfReactionIcon: 6,
      share: "512"),
  UserPostModel(
      name: "Flutter World",
      profileUrl: "assets/postImage/flutterlogo.png",
      headline: "Flutter Open Projects | Flutter Drat world",
      tags:
          "#FlutterOpenProject, #FlutterMagicWorld, #Mobile&WebOpenApps, #Flutter+Dart❤️",
      description:
          "Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia.",
      isVideoPost: false,
      comments: "20k",
      video: "videos/flutterIntro.mp4",
      isOnline: true,
      image: "assets/postImage/flutterpost.jpeg",
      likes: "101k",
      duration: "2d",
      postDate: "4st",
      numOfReactionIcon: 3,
      share: "28k"),
  UserPostModel(
      name: "Amazon Web Service (AWS)",
      profileUrl: "assets/postImage/profileImage5.png",
      headline: "4,594,488 followers",
      tags: "",
      description:
          "Better protect your S3 data with expanded Amazon GuardDuty threat detection to monitor for suspicious data access & other threats:",
      isVideoPost: false,
      comments: "400",
      video: "",
      isOnline: false,
      image: "assets/postImage/postImage5.jpeg",
      likes: "1k",
      duration: "2d",
      postDate: "2st",
      numOfReactionIcon: 3,
      share: "125"),
  UserPostModel(
      name: "KaShaToNo",
      profileUrl: "assets/postImage/profile1.jpg",
      headline: "HR Executive ",
      tags:
          "#positivity #motivation #learning #progress #development #networking #business #jobhunters #jobseekers #connections #networking #linkedin #nevergiveup #staypositive #staystrong #positiveattitude",
      description:
          "Stay Strong!\n\nKeep Your Head Up!\n\nRejection means a better opportunity awaits you elsewhere.\n\nYour thoughts?",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: false,
      image: "assets/postImage/post1.jpg",
      likes: "800",
      duration: "1d",
      postDate: "1st",
      numOfReactionIcon: 4,
      share: "238"),
  UserPostModel(
      name: "json",
      profileUrl: "assets/postImage/profile2.jpg",
      headline: "MEAN Stack Developer | Freelancer",
      tags: "#independenceday2020",
      description:
          "Without the sweat, toil and sacrifices of our heroes, we wouldn’t have this bright day that we celebrate today. Happy Independence Day.",
      isVideoPost: false,
      comments: "1k",
      video: "",
      isOnline: true,
      image: "assets/postImage/post2.jpg",
      likes: "20k",
      duration: "2d",
      postDate: "4st",
      numOfReactionIcon: 6,
      share: "5.4k"),
  UserPostModel(
      name: "Umy Kimmo",
      profileUrl: "assets/postImage/profile3.jpg",
      headline: "Logo Designer | Freelancer |",
      tags: "#datascience #machinelearning #programming #python #joke",
      description: "Google, Stack Overflow are your saviors :)",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: true,
      image: "assets/postImage/post3.jpg",
      likes: "230",
      duration: "3d",
      postDate: "2st",
      numOfReactionIcon: 2,
      share: ""),
  UserPostModel(
      name: "Na Kura",
      profileUrl: "assets/postImage/profile4.jpg",
      headline:
          "LOGO DESIGN 🔹3D LOGO ANIMATION 🔹 DRAW CARTOON 🔹 BUSINESS CARD 🔹 PENCIL SKETCH 🔹 FLYER DESIGN 🔹 BROCHURE DESIGN 🔹",
      tags: "#Respect #SadioMane #PayBack #Love",
      description: "Rate my art work",
      isVideoPost: false,
      comments: "500",
      video: "",
      isOnline: false,
      image: "assets/postImage/post4.jpg",
      likes: "10k",
      duration: "1d",
      postDate: "2st",
      numOfReactionIcon: 2,
      share: "3.5k"),
  UserPostModel(
      name: "Sun ny",
      profileUrl: "assets/postImage/profile5.jpg",
      headline: "Creative Content Writer | Content Specialist | Storyteller ",
      tags: "#Respect #SadioMane #PayBack #Love",
      description:
          "The world famous football player Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
      isVideoPost: false,
      comments: "400",
      video: "videos/flutterIntro.mp4",
      isOnline: false,
      image: "assets/postImage/post5.jpg",
      likes: "1.1k",
      duration: "1d",
      postDate: "1st",
      numOfReactionIcon: 6,
      share: "248"),
  UserPostModel(
      name: "Cipher Zernia",
      profileUrl: "assets/postImage/profile6.jpg",
      headline: "Flutter Open Projects | Flutter Drat world",
      tags:
          "#FlutterOpenProject, #FlutterMagicWorld, #Mobile&WebOpenApps, #Flutter+Dart❤️",
      description:
          "Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia.",
      isVideoPost: false,
      comments: "20k",
      video: "videos/flutterIntro.mp4",
      isOnline: true,
      image: "assets/postImage/post6.jpg",
      likes: "101k",
      duration: "1d",
      postDate: "1st",
      numOfReactionIcon: 5,
      share: "58.9k"),
];
final userProfile = UserModel(
    headline: "Android & IOS Mobile Application flutter developer | Freelancer",
    profileUrl: "assets/profile.jpg",
    name: "Amir Khan",
    connections: "1,837",
    viewProfile: "300");

final List<GroupModel> recentData = [
  GroupModel("Recent", [
    GroupModel("World Wide Flutter"),
    GroupModel("Flutter Developer Community"),
    GroupModel("Flutter Open Projects"),
    GroupModel("Firebase flutter"),
  ]),
  GroupModel("Groups", [
    GroupModel("World Wide Flutter"),
    GroupModel("Flutter Developer Community"),
    GroupModel("Flutter Open Projects"),
    GroupModel("Firebase flutter"),
  ]),
];

final List<CompanyModel> companyListData = [
  CompanyModel(
    name: "Pakistan Jobs",
    description: "We help to Build Your Career",
    profileUrl: "",
  ),
  CompanyModel(
    name: "Upwork",
    description: "company * internet ",
    profileUrl: "assets/icons/upwork.png",
  ),
  CompanyModel(
    name: "Flutter + Dart",
    description: "Open projects Contribution",
    profileUrl: "assets/icons/flutter_logo.jpeg",
  ),
];

final notification = [
  const Notification(
    imgUrl:
        "https://media.istockphoto.com/photos/confident-businessman-picture-id174764352?k=6&m=174764352&s=170667a&w=0&h=L7PetakqLNuyuMHW9fptHOa_q8-Wvdbjy1FkFrltn9s=",
    post:
        "You are invited to apply. Please send your CV to pom.vanthan@ababank.com",
    reactions: 10,
    comments: 0,
    hours: 1,
    seen: false,
  ),
  const Notification(
    imgUrl:
        "https://w7.pngwing.com/pngs/741/278/png-transparent-tokopedia-android-online-shopping-android-shopping-mall-owl-bird-thumbnail.png",
    post:
        "In Tokopedia, we tie Code Review with our software development culture. We take it as a Agile process to increase our software quality. Welcome to join our company! Job vacancies that are available are listed below. Please kindly contact us for more info!",
    reactions: 10,
    comments: 5,
    hours: 2,
    seen: true,
  ),
  const Notification(
    imgUrl:
        "https://imgix.ranker.com/user_node_img/69/1360050/original/kelly-slater-photo-u22?fit=crop&fm=pjpg&q=60&w=375&dpr=1",
    post: "What you prefer? Feel free to share your opinion. 👇",
    reactions: 70,
    comments: 10,
    hours: 2,
    seen: false,
  ),
  const Notification(
    imgUrl:
        "https://media.istockphoto.com/photos/portrait-of-serious-senior-woman-picture-id805011994?k=6&m=805011994&s=170667a&w=0&h=NCHWsaRxAGNzVvR6mBB7pcudOL9GNE3jB-uvae3UZ3U=",
    post:
        "Annah Posted: Having worked for both MNCs and local companies over the past decades",
    reactions: 70,
    comments: 10,
    hours: 3,
    seen: true,
  ),
  const Notification(
    imgUrl:
        "https://media-exp1.licdn.com/dms/image/C560BAQHiNjPu7ApgyA/company-logo_200_200/0/1626837060356?e=2147483647&v=beta&t=C_ONr7woeXwaPxLvoygGk4nKqlIJn3qwnJh1XZWYEmE",
    post: "A post by an employee at LickCoins: ...",
    reactions: 70,
    comments: 10,
    hours: 4,
    seen: false,
  ),
  const Notification(
    imgUrl:
        "https://i1.wp.com/sanespaces.com/core/wp-content/uploads/2017/03/Woman-business-thumbs-up.jpg?ssl=1",
    post:
        "HRINC Indonesia is looking for Recruitment Assistant 2 posts. Interested candidates, please submit your CV to email: heng.darya@hrinc.com.kh Tel: 0964481397(telegram)",
    reactions: 70,
    comments: 10,
    hours: 4,
    seen: false,
  ),
  const Notification(
    imgUrl:
        "https://www.eikonphoto.com/wp-content/uploads/2018/01/professional-headshots-for-women.jpg",
    post: "Anya Posted: What is the best advice you ever received in working?",
    reactions: 70,
    comments: 10,
    hours: 5,
    seen: false,
  ),
  const Notification(
    imgUrl:
        "https://i.pinimg.com/736x/cc/3e/23/cc3e23bc16ed08938cfef73b53dd53bb.jpg",
    post: "Dear all, NEED YOUR HELP!!! ",
    reactions: 70,
    comments: 10,
    hours: 7,
    seen: true,
  ),
];
const postDetail = [
  DetailPostPage(
    userName: "Nicholas Louis",
    job: "Senior HR and Admin Executive at YouAdMe",
    userImgUrl:
        "https://media-exp1.licdn.com/dms/image/C4D03AQFJl3E25jpsDw/profile-displayphoto-shrink_800_800/0/1647007339605?e=1655942400&v=beta&t=z5YfQF-lGIatMqzDqYBZUFvORWqiJtGP1dqfIqac1k4",
    date: 1,
    decription: [
      "Which corner is more common for the menu icon?",
      "Share your Opinion 👇",
    ],
    postImageUrl:
        "https://media-exp1.licdn.com/dms/image/C5622AQH1PzD9-jVlEQ/feedshare-shrink_1280/0/1650335007573?e=2147483647&v=beta&t=I6tMAo_QQLppZB6gfbQ68_ADmwtc8izDqA4jGOFHP1s",
    likeAmount: 200,
    shareAmount: 100,
  ),
];
const jobdetail = [
  Jobs(
      jobProfileUrl:
          "https://media-exp1.licdn.com/dms/image/C4D0BAQHqWrUDrMU9gQ/company-logo_200_200/0/1650449129810?e=2147483647&v=beta&t=2rbkJHBVxZ-wf4ixoB2F-cJCmWsB53udn9cOphBKm4s",
      title: "Front-end Developer",
      name: "Muhammad Andika Jaya",
      application: 3,
      date: "18 hours ago",
      location: "Jakarta Barat, DKI Jakarta, Indonesia"),
  Jobs(
      jobProfileUrl:
          "https://media-exp1.licdn.com/dms/image/C560BAQHUHJih-Ly1ug/company-logo_200_200/0/1587035438283?e=2147483647&v=beta&t=PC-fcWVDbK52zeExD6xZhFzaAvba8ZrkyiF5KAyY1rw",
      title: "Work From Home | Part-time",
      name: "PT.JustLink",
      application: 1,
      date: "7 hours ago",
      location: "Jakarta Pusat, DKI Jakarta, Indonesia"),
  Jobs(
      jobProfileUrl:
          "https://media-exp1.licdn.com/dms/image/C560BAQGrWsoiSW1jLQ/company-logo_200_200/0/1626316040822?e=2147483647&v=beta&t=U9fo6GejKM-rKEoA1w20zzwmOOmQJDDnJqkkZCrGXvg",
      title: "Senior Mobile Flutter Developer",
      name: "PT.Wing",
      application: 9,
      date: '2',
      location: "Jakarta Barat, DKI Jakarta, Indonesia"),
];
