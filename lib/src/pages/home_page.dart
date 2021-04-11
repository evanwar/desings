import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0)
        ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                onPressed: () => Navigator.pushNamed(context, 'basic'),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text('Diseño Básico',
                        style: TextStyle(fontSize: 20.0))),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                onPressed: () => Navigator.pushNamed(context, 'scroll'),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text('Diseño Intermerdio',
                        style: TextStyle(fontSize: 20.0))),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                onPressed: () => Navigator.pushNamed(context, 'buttons'),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text('Diseño Avanzado',
                        style: TextStyle(fontSize: 20.0))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
