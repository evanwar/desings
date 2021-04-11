import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _sizeWindow = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          _backGround(_sizeWindow),
          SingleChildScrollView(
            child: Column(
              children: [_titles(), _roundButton()],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNav(context),
    );
  }

  Widget _backGround(Size infoWindow) {
    final gradientContainer = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0)
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0))),
    );

    final pinkBox = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: infoWindow.height * 0.4,
          width: infoWindow.width * 0.9,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]),
              borderRadius: BorderRadius.circular(80.0)),
        ));

    return Stack(
      children: [
        gradientContainer,
        Positioned(
          child: pinkBox,
          top: -80,
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify Transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomNav(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
                size: 30.0,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 30.0), label: "")
        ]);
  }

  Widget _roundButton() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundButton(Icons.bar_chart, Colors.purple, 'Graficas'),
          _createRoundButton(Icons.android, Colors.green, 'System')
        ]),
        TableRow(children: [
          _createRoundButton(
              Icons.notifications_active_outlined, Colors.red, 'Alarmas'),
          _createRoundButton(Icons.payment, Colors.amberAccent, 'Pagos')
        ]),
        TableRow(children: [
          _createRoundButton(Icons.people, Colors.blue, 'Empleados'),
          _createRoundButton(
              Icons.calendar_today, Colors.orangeAccent, 'Dias feriados')
        ]),
        TableRow(children: [
          _createRoundButton(Icons.https_sharp, Colors.black, 'Seguridad'),
          _createRoundButton(
              Icons.add_a_photo, Colors.amberAccent, 'Multimedia')
        ]),
        TableRow(children: [
          _createRoundButton(
              Icons.file_copy_outlined, Colors.blueGrey, 'Tramites'),
          _createRoundButton(
              Icons.settings_sharp, Colors.deepOrangeAccent, 'Sesión')
        ])
      ],
    );
  }

  Widget _createRoundButton(IconData icon, Color color, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(text,
                  style: TextStyle(color: color, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
