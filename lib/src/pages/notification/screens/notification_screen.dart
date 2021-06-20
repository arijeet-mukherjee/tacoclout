part of '../notification_page.dart';

class NotificationScreen extends StatelessWidget {
  final databaseRef = FirebaseDatabase.instance.reference();
  List<Object> dataDeal = [];
  Future<List<Object>> getDeal() async {
    databaseRef.child('Deals').once().then((DataSnapshot data) {
      dataDeal.add(data.value);
      print(data.value);
      print(data.key);
    });
    print("DataDeal : " + dataDeal.toString());
    return dataDeal;
  }

  @override
  Widget build(BuildContext context) {
    Scaffold getNotificationScreen(context, DataSnapshot d) {
      return Scaffold(
        appBar: CustomAppBar(context,
            title: AppLocalizations.of(context)!.notifications,
            enableLeading: false),
        body: ListView.builder(
          itemCount: LocalList.dealList().length,
          itemBuilder: (context, index) {
            var data = LocalList.dealList()[index];
            return _BuildNotificationCard(
              notification: data,
              data: d,
              onDeleteTap: () {
                showToast(
                    msg: 'Ok');
              },
            );
          },
        ),
      );
    }

    return FutureBuilder<DataSnapshot?>(
      future: databaseRef.child('Deals').once(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          DataSnapshot? data = snapshot.data;
          print('DataModel' + data!.value[0]["text"].toString());
          return getNotificationScreen(context, data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        //return CircularProgressIndicator();

        return Scaffold(
          appBar: CustomAppBar(context,
              title: AppLocalizations.of(context)!.notifications,
              enableLeading: false),
          body: ListView.builder(
            itemCount: LocalList.dealList().length,
            itemBuilder: (context, index) {
              var data = LocalList.dealList()[index];
              return CircularProgressIndicator();
              /* _BuildNotificationCard(
                notification: data,
                data: Null,
                onDeleteTap: () {
                  showToast(
                      msg: AppLocalizations.of(context)!
                          .notification_delete_clicked);
                },
              ); */
            },
          ),
        );
      },
    );
  }
}
