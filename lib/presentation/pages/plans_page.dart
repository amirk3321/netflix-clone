import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/create_your_account.dart';
import 'package:netflix_clone/presentation/widgets/header_widget.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int _selectPlan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: HeaderWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("STEP 1 OF 3"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Choose the plan that's right for you.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Downgrade or upgrade at any time."),
              SizedBox(
                height: 15,
              ),
              _rowButtonWidget(),
              _plans(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowButtonWidget() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 0;
              });
            },
            child: _singleRowButton(
              text: "Basic",
              color: _selectPlan == 0 ? Colors.red : Colors.red[300],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 1;
              });
            },
            child: _singleRowButton(
              text: "Standard",
              color: _selectPlan == 1 ? Colors.red : Colors.red[300],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectPlan = 2;
              });
            },
            child: _singleRowButton(
              text: "Premium",
              color: _selectPlan == 2 ? Colors.red : Colors.red[300],
            ),
          ),
        ),
      ],
    );
  }

  Widget _singleRowButton({Color color, String text}) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          color: color),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _plans() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Text("Monthly Price"),
          SizedBox(
            height: 15,
          ),
          _monthlyPriceWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Video Quality"),
          SizedBox(
            height: 15,
          ),
          _videoQualityWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Resolution"),
          SizedBox(
            height: 15,
          ),
          _resolutionWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Screens you can watch on at the same time"),
          SizedBox(
            height: 15,
          ),
          _screensYouWatchWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Watch on your laptop, TV Phones and Tablet"),
          SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Unlimited files and TV Programmers"),
          SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          SizedBox(
            height: 15,
          ),
          Text("Cancel at any time"),
          SizedBox(
            height: 15,
          ),
          _watchOnAnyDeviceWidget(),
          SizedBox(
            height: 15,
          ),
          Text(
            "HD (720p), full HD (1080p), Ultra HD (4k) and HDR availability subject to your internet service and device capabilities. Not all content available in HD, Full HD, Ultra HD or HDR. See Terms Use For More Details,",
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreateYourAccountPage(),
                  ));
            },
            child: Container(
              height: 30,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Text("CONTINUE"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _monthlyPriceWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Rs950",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,200",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Rs1,500",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _videoQualityWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Good",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Better",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Best",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _resolutionWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "480p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "1080p",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4k+HDR",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _screensYouWatchWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }

  Widget _watchOnAnyDeviceWidget() {
    if (_selectPlan == 0) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else if (_selectPlan == 1) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      );
    }
  }
}
