import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSub = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText()
        ]),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://i.pinimg.com/originals/81/e2/28/81e2285225282c6dc6cbca2545da669a.jpg'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Astronauta', style: styleTitle),
                  SizedBox(height: 7.0),
                  Text('Astronauta descansando', style: styleSub)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _action(Icons.call, 'Call'),
        _action(Icons.near_me, 'Route'),
        _action(Icons.share, 'Share')
      ],
    );
  }

  Widget _action(IconData icon, String txt) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(txt, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text(
            'Eiusmod deserunt id mollit est exercitation in ex fugiat. Consequat cillum ea sint dolore fugiat officia velit sunt non sunt. Quis et aliqua qui qui. Enim adipisicing sint exercitation excepteur eiusmod ullamco eu ut anim consequat culpa fugiat cillum velit. Ipsum adipisicing officia minim ex est enim eiusmod cupidatat ipsum mollit.',
            textAlign: TextAlign.justify),
      ),
    );
  }
}
