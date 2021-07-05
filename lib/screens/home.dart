import 'package:flutter/material.dart';
import 'package:football_app/screens/following_page.dart';
import 'package:football_app/screens/line_up.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home of Football'),
        actions: [
          InkWell(
            onTap: () => _navigateToProfile(context),
            child: Icon(Icons.person),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _renderBody(context),
      ),
    );
  }

  void _navigateToProfile(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => FollowingPage(),
    ));
  }

  Widget _renderBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _renderScoreCount(),
        LineUp(),
      ],
    );
  }

  Row _renderScoreCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 70,
              child: Image.asset('assets/ukraine_flag.png'),
            ),
            Text('Ukraine'),
          ],
        ),
        Column(
          children: [
            Text(
              '0 : 4',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text('Full Time'),
          ],
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 70,
              child: Image.asset('assets/england_flag.png'),
            ),
            Text('England'),
          ],
        ),
      ],
    );
  }
}
