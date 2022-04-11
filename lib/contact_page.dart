import 'package:flutter/material.dart';
import 'drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          "Contact",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      drawer: DrawerWidget(),
      body: Container(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'CONTACT PAGE',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              child: Card(
                elevation: 3,
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Lengkap  : TAUFIK HIDAYAT"),
                        Divider(),
                        Text("Email : taufikhidayat09121@gmail.com"),
                        Divider(),
                        Text("No Telepon : 082332743884"),
                        Divider(),
                        Text("Instagram : @akuutauf_"),
                        Divider(),
                        Text("FaceBook : Taufik Hidayat"),
                        Divider(),
                        Text("GitHub : akuutauf"),
                        Divider(),
                        Text("YouTube : 2A_1019_Taufik Hidayat"),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
