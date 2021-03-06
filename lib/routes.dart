import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'drawer.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'portofolio_page.dart';
import 'contact_page.dart';
import 'setting_page.dart';
import 'gallery_page.dart';
import 'description_page.dart';
import 'animation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => PortofolioPage());
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactPage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingPage());
      case '/gallery':
        return MaterialPageRoute(builder: (_) => GalleryPage());
      case '/description':
        return MaterialPageRoute(builder: (_) => DescriptionPage());
      case '/animation':
        return MaterialPageRoute(builder: (_) => AnimationPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      const imageError = "assets/images/error.svg";

      return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 128, 177),
              Color.fromARGB(255, 147, 152, 255)
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
          ),
          title: Text(
            "Page Not Found",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: DrawerWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "error",
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: SvgPicture.asset(
                  imageError,
                  width: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Oops something went wrong\nThe page you are looknig for maybe have been removed or unavailable',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    });
  }
}
