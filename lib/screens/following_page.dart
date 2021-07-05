import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _renderBody(),
      ),
    );
  }

  Widget _renderBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimSearchBar(
              helpText: 'Search..',
              width: 200,
              color: Colors.amber,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
            Text('Jiju Thomas'),
          ],
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('MY TEAM',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('(2)'),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            child: Image.asset('assets/barcelona.png'),
                          ),
                          Text('Favourite Team',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Barcelona', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            child: Image.asset('assets/india.jpeg'),
                          ),
                          Text('National Team',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('India', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('MY COMPETITIONS',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('(6)'),
                  ],
                ),
                Divider(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset('assets/laliga_logo.png'),
                        ),
                        Text('LaLiga'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset(
                              'assets/UEFA_Champions_League_logo.png'),
                        ),
                        Text('Champ League'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset('assets/CopaDelRey.png'),
                        ),
                        Text('Copa del Rey'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset('assets/afc.png'),
                        ),
                        Text('AFC'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset('assets/bundesliga.png'),
                        ),
                        Text('Bundesliga'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset('assets/worldCup.png'),
                        ),
                        Text('FIFA WC'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
