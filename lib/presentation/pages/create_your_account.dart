import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/presentation/pages/sign_up_page.dart';
import 'package:netflix_clone/presentation/widgets/header_widget.dart';

class CreateYourAccountPage extends StatefulWidget {
  @override
  _CreateYourAccountPageState createState() => _CreateYourAccountPageState();
}

class _CreateYourAccountPageState extends State<CreateYourAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          _bodyWidget(),
        ],
      ),
    );
  }

  Widget _bodyWidget() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: Image.asset('assets/devices.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "STEP 2 OF 3",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Create Your account.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Netflix is personalized for you. Use your email and create a password to watch Netflix on any device at any time.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SignUpPage()
                ));
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text("CONTINUE"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
