import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/presentation/widgets/header_widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            HeaderWidget(),
            _formWidget(),
          ],
        ),
      ),
    );
  }

  Widget _formWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "STEP 2 OF 3",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            "Sign up to start your\nmembership.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Just Tow more steps and you're finished!\nwe hate paperwork, too.",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Create your account",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                border: InputBorder.none,
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: InputBorder.none,
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Checkbox(
                value: _isCheck,
                onChanged: (value){
                  setState(() {
                    _isCheck=value;
                  });
                },
              ),
              Text("Please do not email me Netflix special offers.")
            ],
          ),
          SizedBox(height: 15,),
          Container(
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Text("Continue"),
          )
        ],
      ),
    );
  }
}
