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
const network = [
  {
    "Name": "Ricky",
    "Status": "CEO of Tokopedia Company",
    "urlNetwork":
        "https://media.istockphoto.com/photos/confident-businessman-picture-id174764352?k=6&m=174764352&s=170667a&w=0&h=L7PetakqLNuyuMHW9fptHOa_q8-Wvdbjy1FkFrltn9s="
  },
  {"Name": "Nadiem", "Status": "Head Branch of puri indah Zinc Company"},
  {"Name": "Rusman", "Status": "Employee of Daikin Company"},
  {"Name": "Indra", "Status": "Employee of PT Bank DKI Company"},
  {"Name": "Lidya", "Status": "Senior Developer of Lazada Company"},
  {"Name": "Kim Suk Ji", "Status": "Junior Developer of PT IndoFood Company"},
  {"Name": "Rico Julianto", "Status": "Head Branch of Detikcom Company"},
  {"Name": "Noel", "Status": "Talent Aquisition of MyRepublic ID"}
];
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
      name: "PT. Pertamina",
      profileUrl: "assets/postImage/profileImagebensin.jpeg",
      headline: "900.000 Followers ",
      tags:
          "#progress #development #networking #business #jobseekers #connections #networking",
      description:
          "Pertamina Dorong Inklusivitas di Lingkungan Kerja Melalui Komunitas PERTIWI\n\nDemi mendorong aspek inklusif di seluruh lingkungan kerjanya, PT Pertamina (Persero) melalui Komunitas Perempuan Pertamina Tangguh Inspiratif Wibawa Integritas (PERTIWI) menggelar Kick Off Programs 2023 dan Inspiring Talkshow yang mengusung Tema  'He for She : Men as Allies in Achieving Gender Equality in Business'. Kegiatan tersebut bertempat di Ballroom Grha Pertamina",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: false,
      image: "assets/postImage/postImagebensin.jpeg",
      likes: "800",
      duration: "8d",
      postDate: "6st",
      numOfReactionIcon: 2,
      share: "709"),
  UserPostModel(
      name: "Pt Astra International tbk",
      profileUrl: "assets/postImage/profileimageastra.jpg",
      headline: "1.250.000 Followers ",
      tags:
          "#progress #development #networking #business #jobseekers #connections #networking",
      description:
          "PT Astra International Tbk bersama Hongkong Land (HKL) pada 8 Februari 2022 mengumumkan pembentukan perusahaan patungan (joint venture/JV) dengan LOGOS SE Asia",
      isVideoPost: false,
      comments: "100",
      video: "290.027 Followers",
      isOnline: false,
      image: "assets/postImage/postimageastra.jpg",
      likes: "300",
      duration: "1d",
      postDate: "6st",
      numOfReactionIcon: 2,
      share: "49"),
  UserPostModel(
      name: "PT Bank Central Asia",
      profileUrl: "assets/postImage/profileimagebca.jpg",
      headline: "450.000 Followers",
      tags:
          "#pakaiBCA #BankCentralAsia #business #jobseekers #connections #networking",
      description:
          "Sumber Daya Manusia berkualitas merupakan hal yang sangat krusial dalam menjalankan bisnis dan menjadi modal utama bagi pengembangan usaha saat ini maupun dimasa yang akan datang. Para profesional, institusi pendidikan dan dunia usaha selalu dapat berkolaborasi untuk mewujudkan tujuan masing-masing.",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: false,
      image: "assets/postImage/postimagebca.jpg",
      likes: "1000",
      duration: "3d",
      postDate: "2nd",
      numOfReactionIcon: 2,
      share: "800"),
  UserPostModel(
      name: "Pt Indofood Sukses Makmur tbk",
      profileUrl: "assets/postImage/profileimageindofood.jpg",
      headline: "750.000 Followers",
      tags: "#Respect",
      description:
          "Halo Sobat Indofood\nKali ini PT Indofood Sukses Makmur kedatangan teman teman mahasiswa yang penasaran nih cara pembuatan Indomie, bagi sobat Indofood yang penasaran juga, kalian bisa juga loh melihat bagaiamana cara pembuatan Indomie secara langsung!",
      isVideoPost: false,
      comments: "500",
      video: "",
      isOnline: false,
      image: "assets/postImage/postimageindofood.jpg",
      likes: "10k",
      duration: "1d",
      postDate: "1st",
      numOfReactionIcon: 4,
      share: "5k"),
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
