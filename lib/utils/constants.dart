import 'dart:ui';

import 'package:devdeejay_portfolio_app/screens/blog/blog_screen.dart';
import 'package:devdeejay_portfolio_app/screens/contact/contact_screen.dart';
import 'package:devdeejay_portfolio_app/screens/experience/experience_screen.dart';
import 'package:devdeejay_portfolio_app/screens/home/home_screen.dart';
import 'package:devdeejay_portfolio_app/screens/learn/library_screen.dart';
import 'package:devdeejay_portfolio_app/screens/project/project_screen.dart';
import 'package:devdeejay_portfolio_app/utils/utils.dart';
import 'package:flutter/widgets.dart';

import '../blog.dart';

const kDarkGreyColor = const Color(0xFF1A1B1F);

final List<String> navBarItems = [
  "Blog",
  "Home",
  "Projects",
  "Experience",
  "Library",
  "Contact"
];

final List<Widget> listOfSocialMediaWidgets = [
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/github_icon.png", 32, () {
      launchURL("https://github.com/devDeejay");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/medium_icon.png", 32, () {
      launchURL("https://medium.com/@devDeeJay");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/linkedin_icon.png", 32, () {
      launchURL("https://www.linkedin.com/in/devdeejay/");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/stackoverflow_icon.png", 32, () {
      launchURL("https://stackoverflow.com/users/6145568/devdeejay");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/facebook_icon.png", 32, () {
      launchURL("https://www.facebook.com/dhananjayt772");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/instagram_icon.png", 32, () {
      launchURL("https://www.instagram.com/dhanajay__trivedi/");
    }),
  ),
];

final List<Widget> listOfNavBarWidgets = [
  blogScreenWidget,
  homeScreenWidget,
  projectScreenWidget,
  experienceScreenWidget,
  learnScreenWidget,
  contactScreenWidget,
];

final Widget homeScreenWidget = HomeScreenWidget();
final Widget blogScreenWidget = BlogScreen();
final Widget projectScreenWidget = ProjectScreenWidget();
final Widget experienceScreenWidget = ExperienceScreenWidget();
final Widget learnScreenWidget = LibraryScreenWidget();
final Widget contactScreenWidget = ContactScreenWidget();

List<Blog> listOfTechBlog = [
  Blog(
      title: "Lessons Learned Migrating a Production App to Flutter",
      url:
          "https://medium.com/better-programming/lessons-learned-migrating-a-production-app-to-flutter-78195067b2cb",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*Br-Iv3NnXfQ6sjXry-UinA.jpeg"),
  Blog(
      title:
          "Build a Flutter Web App From Scratch and Host It With Continuous Deployment",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*nKZHCMk_rGBDbDyO0DJ_Jw.png",
      url:
          "https://medium.com/better-programming/building-flutter-web-app-from-scratch-and-hosting-it-with-continuous-deployment-fde0c20ed711"),
  Blog(
      title: "How to do networking like a Pro in Flutter",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/3240/1*MNdQw08D83LN6vqXQxekjA.png",
      url:
          "https://medium.com/swlh/how-to-do-networking-like-a-pro-in-flutter-7e2612103cb5"),
  Blog(
      title: "Exploring Animations in Flutter",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*9wtpl_OB3UAVMmgWEBQBGg.png",
      url:
          "https://medium.com/better-programming/exploring-animations-in-flutter-for-beginners-147151a794"),
  Blog(
      title: "Simplifying Bloc State Management in Flutter",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*IV7KLGiy7GNYMT21raimMA.png",
      url:
          "https://medium.com/better-programming/simplifying-bloc-state-management-in-flutter-a8de43a994e4"),
  Blog(
      title: "How to write and deploy Firebase Cloud Functions",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*4hm9T6JSzTt1YHy7h_YwEg.jpeg",
      url:
          "https://medium.com/better-programming/how-to-write-and-deploy-firebase-cloud-functions-e5bf5270a5be"),
  Blog(
      title:
          "Should You Use AWS or Firebase For the Back end of Your Mobile App?",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*A0BDxHAicFheAzB1jbinRA.png",
      url:
          "https://medium.com/better-programming/should-you-use-aws-or-firebase-for-the-back-end-of-your-mobile-app-a28f93540520"),
];

List<Blog> listOfBlogForBetterProgrammers = [
  Blog(
      title: "Is Competitive Programming Helpful for Tech Interviews?",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/700/0*1SaUVNlePfFsDnq6",
      url:
          "https://medium.com/better-programming/is-competitive-programming-helpful-for-tech-interviews-e3d7ae1ba0b4"),
  Blog(
      title: "5 Important Learning Strategies for Programmers",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*r1rAIyEgPR6M3lZ3NxoE1Q.jpeg",
      url:
          "https://medium.com/better-programming/5-important-learning-strategies-for-programmers-cdffa94a448d"),
  Blog(
      title: "What Makes a Great Developer?",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/1400/0*0Yy7xeBhusBRXdd3",
      url:
          "https://medium.com/better-programming/what-makes-a-great-developer-cd07be61dfcc"),
  Blog(
      title: "10 Things I Wish I Knew When I Started Working",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/3628/1*H5Zxn-PWvAeXaVSEr2ySYQ.png",
      url:
          "https://medium.com/@devDeeJay/10-things-i-wish-i-knew-when-i-started-working-as-a-developer-550e1aa4f9cb"),
  Blog(
      title: "Tips to Improve Your Code Today",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*aDSI0cZ3KVCzKtoIDAXwaA.jpeg",
      url:
          "https://medium.com/better-programming/tips-to-improve-your-code-today-2c70b6af7a76"),
  Blog(
      title: "4 Tips to be Efficient & Effective for your Next Project",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/1400/0*zYldnLHNBuPChHfr",
      url:
          "https://medium.com/@devDeeJay/4-tips-to-be-efficient-effective-for-your-next-project-b68aa4951ff3"),
  Blog(
      title: "The Habits of Productive Developers",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*5fJjRL-3CDoWNJPfgaHm_Q.jpeg",
      url:
          "https://medium.com/better-programming/habits-of-productive-developers-eb2ec507e3d4"),
];

List<Blog> listOfCleanCodeBlogs = [
  Blog(
      title: "What is Clean Code?",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*Tv2xL7HNLmL2bHX46N2S4Q.png",
      url: "https://medium.com/swlh/what-is-clean-code-463d25fa6e0b"),
  Blog(
      title: "Expressive Clean Code",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/1400/1*EUNrIFsJtPVGyBfnUsqJow.jpeg",
      url:
          "https://medium.com/better-programming/clean-code-give-meaning-to-your-code-to-exist-f966b3f00848"),
  Blog(
      title: "Don’t comment your code, Rewrite it!",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*G5VJHqZfe3xedklI9EHnMA.png",
      url:
          "https://medium.com/@devDeeJay/dont-comment-your-code-rewrite-it-a145d655f87b"),
  Blog(
      title: "Writing Clean Code To Avoid Pain",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*xlRbwzqfxHqoLG15oTo_dg.png",
      url:
          "https://medium.com/@devDeeJay/writing-clean-code-to-avoid-pain-3217f89d81c6"),
  Blog(
      title: "How to deal with third-party codebase?",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*k-9ZbG4jE-qEAHsikqO0LA.png",
      url:
          "https://medium.com/@devDeeJay/how-to-deal-with-third-party-codebase-7411d6679af6"),
  Blog(
      title: "Tests are your silver bullet for Clean Production Code",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/3840/1*iwY9YVmJf3_eehpP4lXoeA.png",
      url:
          "https://medium.com/@devDeeJay/tests-are-your-silver-bullet-for-clean-production-code-60f339183713"),
  Blog(
      title: "Clean Classes",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*Kz8UCvlScrM3JyaHNOqygg.png",
      url: "https://medium.com/better-programming/clean-classes-43b46da37f39"),
  Blog(
      title: "Learning System Design",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/2000/0*RmPn14Lc84_2c6CF",
      url: "https://medium.com/@devDeeJay/learning-system-design-ffbafcc9ffac"),
  Blog(
      title: "System Design that only gets better with Time",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/1400/0*0zeWKESmQpNOpMV4",
      url:
          "https://medium.com/@devDeeJay/system-design-that-only-gets-better-with-time-9e6c3b3f7a16"),
  Blog(
      title: "Writing Clean Concurrent Code",
      description: "",
      thumbImageUrl: "https://miro.medium.com/max/2000/0*uZS4nbrNi-gHpSGR",
      url:
          "https://medium.com/swlh/writing-clean-concurrent-code-580bb6c5fa3e"),
  Blog(
      title: "Getting Started With Test-Driven Development",
      description: "",
      thumbImageUrl:
          "https://miro.medium.com/max/2000/1*sjet9qSO4O8fX2-FXvxflw.jpeg",
      url:
          "https://medium.com/better-programming/getting-started-with-test-driven-development-3621a828657e"),
];

var blog = Blog(title: "", description: "", thumbImageUrl: "", url: "");
