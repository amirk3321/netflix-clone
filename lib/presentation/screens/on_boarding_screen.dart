import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/entities/on_boarding_entity.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _onBoardingData = OnBoardingEntity.onBoardingData;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pageViewBuilderWidget(),
          _columnWidget(),
          _rowWidget(),
        ],
      ),
    );
  }

  Widget _rowWidget() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            child: Image.asset('assets/n_symbol.png'),
          ),
          Row(
            children: [
              Text("PRIVACY"),
              SizedBox(
                width: 10,
              ),
              Text("HELP"),
              SizedBox(
                width: 10,
              ),
              Text("SIGN IN"),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _pageViewBuilderWidget() {
    return PageView.builder(
      itemCount: _onBoardingData.length,
      onPageChanged: (index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      itemBuilder: (ctx, index) {
        return Stack(
          fit: StackFit.passthrough,
          children: [
            index == 3
                ? Container(
                    height: double.infinity,
                    child: Image.asset(
                      _onBoardingData[index].image,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Image.asset(
                      _onBoardingData[index].image,
                    ),
                  ),
            index == 3
                ? Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(.5),
                            Colors.black.withOpacity(.1),
                            Colors.black.withOpacity(.9),
                          ],
                          tileMode: TileMode.clamp,
                          begin: Alignment(0.9, 0.0),
                          end: Alignment(0.8, 0.4)),
                    ),
                  )
                : Container(),
            Container(
              margin: EdgeInsets.only(top: 230, left: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _onBoardingData[index].heading,
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _onBoardingData[index].description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget _columnWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _onBoardingData.map(
                (data) {
                  //get index
                  int index = _onBoardingData.indexOf(data);
                  return Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:
                          index == _currentPageIndex ? Colors.red : Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
            padding: EdgeInsets.symmetric(vertical: 12),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Colors.red,
            ),
            child: Text("GET STARTED"),
          )
        ],
      ),
    );
  }
}
