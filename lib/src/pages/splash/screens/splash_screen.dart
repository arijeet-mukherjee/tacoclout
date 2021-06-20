part of '../splash_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void check_if_already_login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('email');
    var first = prefs.getString('first');
    if (email != null || first!=null) {
      Get.toNamed(Routes.home);
    } else {
      Get.toNamed(Routes.on_boarding);
    }
    //return email == null ? false : true;
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () => check_if_already_login());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/splashicon.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
      /*  child:  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: FlutterLogo(
          size: 150.0,
        ),
      ),
    ), */
    );
  }
}
