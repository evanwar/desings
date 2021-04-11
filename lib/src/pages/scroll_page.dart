import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_page1(), _page2()],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: [_setBackGround(), _setImage(), _createTexts()],
    );
  }

  Widget _setBackGround() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1));
  }

  _setImage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
          image: AssetImage('assets/images/scroll-1.png'), fit: BoxFit.cover),
    );
  }

  Widget _createTexts() {
    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Text('11°', style: styleText),
          Text('Miercoles', style: styleText),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1),
        child: Center(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Text('Bienvenido', style: TextStyle(fontSize: 20.0))),
          ),
        )));
  }
}
