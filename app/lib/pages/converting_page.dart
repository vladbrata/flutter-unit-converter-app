import 'package:app/widgets/converting_containers/length_conversion.dart';
import 'package:app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class ConvertingPage extends StatefulWidget {
  ConvertingPage({Key? key}) : super(key: key);

  @override
  _ConvertingPageState createState() => _ConvertingPageState();
}

class _ConvertingPageState extends State<ConvertingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            children: [
              Center(
                child: Text(
                  'Unit Converter',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
              ),
              Text(
                'Convert between units instantly',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.from(alpha: 0, red: 5, green: 7, blue: 10),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              NavigationWidget(),
              LengthConversion(),
              Text('Quick References', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
