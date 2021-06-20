part of '../profile_page.dart';

class ProfileScreen extends StatelessWidget {
  String _emailUser = "";
  String _nameUser = '';
  Future<String> _getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? email = await prefs.getString('email');
    //_emailUser = (prefs.getString('email') ?? 'null');
    //print("_emailUser" + _emailUser);
    return await (prefs.getString('email') ?? 'null');
  }


  @override
  Widget build(BuildContext context) {
    Scaffold profileFutureScreen(context, String data) {
     return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(context, enableLeading: false),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Const.margin),
        child: ListView(
          children: [
           /*  _HeaderSection(
              fullName: 'User',
              email: data,
              image:
                  'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg',
            ),
            SizedBox(height: Const.space25), */
            _BodySection(),
          ],
        ),
      ),
    );
 
    }
    
    /* return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(context, enableLeading: false),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Const.margin),
        child: ListView(
          children: [
            _HeaderSection(
              fullName: 'User',
              email: _emailUser,
              image:
                  'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg',
            ),
            SizedBox(height: Const.space25),
            _BodySection(),
          ],
        ),
      ),
    ); */
    return FutureBuilder<String>(
      future: _getEmail(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          String? data = snapshot.data;

          return profileFutureScreen(context, data!);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        //return CircularProgressIndicator();

        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: CustomAppBar(context, enableLeading: false),
          body: Container(
          padding: EdgeInsets.symmetric(horizontal: Const.margin),
          child: ListView(
          children: [
            /* _HeaderSection(
              fullName: 'User',
              email: _emailUser,
              image:
                  'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg',
            ), */
            SizedBox(height: Const.space25),
            _BodySection(),
          ],
        ),
        ),
        );
      },
    );
  }
}
