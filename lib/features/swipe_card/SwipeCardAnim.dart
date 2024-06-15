

import 'package:flutter/material.dart';


class CardStack extends StatefulWidget {
  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> with TickerProviderStateMixin {
  List<Color> cardColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];
  bool isAnimating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Stack Animation')),
      body: Center(
        child: Stack(
          children: cardColors.asMap().entries.map((entry) {
            int index = entry.key;
            Color color = entry.value;
            return _buildCard(color, index);
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!isAnimating) {
            _moveCard();
          }
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildCard(Color color, int index) {
    double topPosition = (index * 20.0) % (cardColors.length * 20.0);

    return AnimatedPositioned(
      key: ValueKey(color),
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      top: topPosition,
      left: 50,
      child: Draggable(
        onDragEnd: (details) {
          if (!isAnimating) {
            _moveCard();
          }
        },
        feedback: Material(
          child: _cardWidget(color),
          elevation: 4.0,
        ),
        childWhenDragging: Container(),
        child: _cardWidget(color),
      ),
    );
  }

  Widget _cardWidget(Color color) {
    return Card(
      color: color,
      child: Container(
        width: 200,
        height: 100,
        child: Center(
          child: Text('Card', style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
      ),
    );
  }

  void _moveCard() {
    setState(() {
      isAnimating = true;
    });

    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        final movedColor = cardColors.removeAt(0);
        cardColors.add(movedColor);
        isAnimating = false;
      });
    });
  }
}