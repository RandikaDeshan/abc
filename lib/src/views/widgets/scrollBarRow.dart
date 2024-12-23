import 'package:flutter/material.dart';

class ScrollableRowWidget extends StatefulWidget {
  final int initialSelectedIndex;
  final Function(int) onItemSelected;

  ScrollableRowWidget(
      {this.initialSelectedIndex = 0, required this.onItemSelected});

  @override
  _ScrollableRowWidgetState createState() => _ScrollableRowWidgetState();
}

class _ScrollableRowWidgetState extends State<ScrollableRowWidget> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              if (widget.onItemSelected != null) {
                widget.onItemSelected(index);
              }
            },
            child: Container(
              width: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedIndex == index
                      ? Colors.green
                      : Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      fontSize: selectedIndex == index ? 48 : 24,
                      fontWeight: FontWeight.bold,
                      color:
                          selectedIndex == index ? Colors.black : Colors.grey,
                    ),
                  ),
                  if (selectedIndex == index)
                    const Text(
                      'min',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
