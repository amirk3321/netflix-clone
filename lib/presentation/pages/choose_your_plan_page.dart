import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/plans_page.dart';
import 'package:netflix_clone/presentation/widgets/header_widget.dart';

class ChooseYourPlanPage extends StatefulWidget {
  @override
  _ChooseYourPlanPageState createState() => _ChooseYourPlanPageState();
}

class _ChooseYourPlanPageState extends State<ChooseYourPlanPage> {
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
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  border: Border.all(color: Colors.red, width: 1.5)),
              child: Icon(
                Icons.done,
                size: 26,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "STEP 1 OF 3",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose your plan.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _rowWidget(title: "No Commitments, cancel at any time."),
            SizedBox(
              height: 10,
            ),
            _rowWidget(title: "Everything on Netflix for one low prince."),
            SizedBox(
              height: 10,
            ),
            _rowWidget(title: "Unlimited viewing on all your devices."),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => PlansPage(),
                ),);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ),
                child: Text("SEE THE PLANS"),
              ),
            )

          ],
        ),
      ),
    );
  }

  Widget _rowWidget({String title}){
    return Row(
      children: [
        Icon(Icons.done,color: Colors.red,size: 25,),
        SizedBox(width: 20,),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
