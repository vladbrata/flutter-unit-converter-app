import 'package:flutter/material.dart';

class NavigationContainer extends StatefulWidget {
  NavigationContainer({Key? key, required this.title, required this.icon})
    : super(key: key);

  final String title;
  final IconData icon;

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  Color containerColor = Color(0xFF171A1F);
  Color pressedColor = const Color.fromARGB(255, 5, 63, 170);

  String selectedTitle = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTitle = widget.title;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: containerColor,
        ),
        height: 80,
        width: 80,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icon, color: Colors.white),
              SizedBox(height: 5),
              Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
