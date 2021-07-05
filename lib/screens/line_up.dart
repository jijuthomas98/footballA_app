import 'package:flutter/material.dart';
import 'package:football_app/widgets/player_line_up.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class LineUp extends StatefulWidget {
  const LineUp({Key? key}) : super(key: key);

  @override
  _LineUpState createState() => _LineUpState();
}

class _LineUpState extends State<LineUp> {
  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text('Ukraine'),
    1: Text('England'),
  };

  void _onSegmentChosen(int index) {
    setState(() {
      _currentSelection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: MaterialSegmentedControl(
            children: _children,
            selectionIndex: _currentSelection,
            borderColor: Colors.grey,
            selectedColor: Colors.amber,
            unselectedColor: Colors.white,
            borderRadius: 32.0,
            onSegmentChosen: _onSegmentChosen,
          ),
        ),
        Stack(
          children: _renderChildren(),
        ),
      ],
    );
  }

  List<Widget> _renderChildren() {
    if (_currentSelection == 0) {
      return ukraine();
    }
    return englandLineUp();
  }

  List<Widget> ukraine() {
    return [
      Image.asset('assets/field.png'),
      PlayerLineUp(
        top: 40,
        left: 165,
        playerName: 'Yaremchuk  9',
      ),
      PlayerLineUp(
        playerName: 'Yarmolenko 10',
        top: 80,
        left: 20,
      ),
      PlayerLineUp(
        playerName: 'Mykolenko 19',
        top: 130,
        left: 160,
      ),
      PlayerLineUp(
        playerName: 'Zinchenko 17',
        top: 80,
        right: 20,
      ),
      PlayerLineUp(
        playerName: 'Sydorchuk 4',
        top: 240,
        left: 70,
      ),
      PlayerLineUp(
        playerName: 'Shaparenko 14',
        top: 240,
        right: 70,
      ),
      PlayerLineUp(
        playerName: 'Karavayev 3',
        top: 370,
        left: 10,
      ),
      PlayerLineUp(
        playerName: 'Matviyenko 6',
        top: 380,
        left: 100,
      ),
      PlayerLineUp(
        playerName: 'Kryvtsov 5',
        top: 380,
        right: 100,
      ),
      PlayerLineUp(
        playerName: 'Zabarnyi 2',
        top: 370,
        right: 10,
      ),
      PlayerLineUp(
        playerName: 'Bushchan 1',
        top: 460,
        left: 160,
      ),
    ];
  }

  List<Widget> englandLineUp() {
    return [
      Image.asset('assets/field.png'),
      PlayerLineUp(
        top: 40,
        left: 165,
        playerName: 'Kane  9',
      ),
      PlayerLineUp(
        playerName: 'Sterling 10',
        top: 80,
        left: 20,
      ),
      PlayerLineUp(
        playerName: 'Mount 19',
        top: 130,
        left: 160,
      ),
      PlayerLineUp(
        playerName: 'Sancho 17',
        top: 80,
        right: 20,
      ),
      PlayerLineUp(
        playerName: 'Rice 4',
        top: 240,
        left: 70,
      ),
      PlayerLineUp(
        playerName: 'Phillips 14',
        top: 240,
        right: 70,
      ),
      PlayerLineUp(
        playerName: 'Shaw 3',
        top: 370,
        left: 10,
      ),
      PlayerLineUp(
        playerName: 'Maguire 6',
        top: 380,
        left: 100,
      ),
      PlayerLineUp(
        playerName: 'Stones 5',
        top: 380,
        right: 100,
      ),
      PlayerLineUp(
        playerName: 'Walker 2',
        top: 370,
        right: 10,
      ),
      PlayerLineUp(
        playerName: 'Pickford 1',
        top: 460,
        left: 160,
      ),
    ];
  }
}
