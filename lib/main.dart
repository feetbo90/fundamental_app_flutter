import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_five/animation_page.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_four/calculator_page.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_seven/adaptive_page.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_seven/cupertino_home_app.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_seven/learning_cuppertion/home_page.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_six/pixel_page.dart';
import 'package:fundamental_aplikasi_flutter/screens/module_two/new_list_page.dart';

import 'model/article.dart';
import 'screens/first_screen.dart';
import 'screens/module_six/learning_path_page.dart';
import 'screens/module_three/my_home_page.dart';
import 'screens/module_two/article_web_view.dart';
import 'screens/module_two/detail_page.dart';
import 'styles/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(
          textTheme: myTextTheme.apply(bodyColor: Colors.black),
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: secondaryColor,
          unselectedItemColor: Colors.grey,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            textStyle: TextStyle(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
          article: ModalRoute.of(context)?.settings.arguments as Article,
        ),
        ArticleWebView.routeName: (context) => ArticleWebView(
          url: ModalRoute.of(context)?.settings.arguments as String,
        ),
      },
    );
  }
}

// module 7 cupertino learning
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       theme: CupertinoThemeData(
//         primaryColor: CupertinoColors.systemOrange,
//       ),
//       home: CupertinoHomeApp(),
//     );
//   }
// }

// module 7 cupertino basics
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: AdaptivePage(),
//     );
//   }
// }


// // module 6 practice sliver
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: LearningPathPage(),
//     );
//   }
// }


// module 6 sliver
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: PixelPage(),
//     );
//   }
// }

// module 5 animation implicit
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: AnimationPage(),
//     );
//   }
// }

// module 4 news app
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Calculator',
//         theme: ThemeData(
//           colorScheme: Theme.of(context).colorScheme.copyWith(
//                 primary: primaryColor,
//                 onPrimary: Colors.black,
//                 secondary: secondaryColor,
//               ),
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           textTheme: myTextTheme,
//           appBarTheme: const AppBarTheme(elevation: 0),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               primary: secondaryColor,
//               onPrimary: Colors.white,
//               textStyle: const TextStyle(),
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(0),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         initialRoute: NewsListPage.routeName,
//         routes: {
//           NewsListPage.routeName: (context) => NewsListPage(),
//           ArticleDetailPage.routeName: (context) => ArticleDetailPage(
//                 article: ModalRoute.of(context)?.settings.arguments as Article,
//               ),
//           ArticleWebView.routeName: (context) => ArticleWebView(
//                 url: ModalRoute.of(context)?.settings.arguments as String,
//               ),
//         });
//   }
// }

// module 3
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: CalculatorPage(),
//     );
//   }
// }
// module 2
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'News App',
//       theme: ThemeData(
//         colorScheme: Theme.of(context)?.colorScheme.copyWith(
//           primary: primaryColor,
//           onPrimary: Colors.black,
//           secondary: secondaryColor,
//         ),
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         textTheme: myTextTheme,
//         appBarTheme: const AppBarTheme(elevation: 0),
//       ),
//       initialRoute: NewsListPage.routeName,
//       routes: {
//         NewsListPage.routeName: (context) => NewsListPage(),
//         ArticleDetailPage.routeName: (context) => ArticleDetailPage(
//           article: ModalRoute.of(context)?.settings.arguments as Article,
//         ),
//         ArticleWebView.routeName: (context) => ArticleWebView(
//           url: ModalRoute.of(context)?.settings.arguments as String,
//         ),
//       },
//     );
//   }
// }

// untuk first screen module 1
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FirstScreen(),
//         '/secondScreen': (context) => SecondScreen(),
//         '/secondScreenWithData': (context) =>
//             SecondScreenWithData(ModalRoute.of(context)?.settings.arguments as String),
//         '/returnDataScreen': (context) => ReturnDataScreen(),
//         '/replacementScreen': (context) => ReplacementScreen(),
//         '/anotherScreen': (context) => AnotherScreen(),
//       },
//     );
//   }
// }
