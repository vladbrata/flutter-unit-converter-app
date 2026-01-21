import 'package:app/widgets/converting_containers/length_conversion.dart';
import 'package:app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

import 'package:app/widgets/converting_containers/speed_conversion.dart';
import 'package:app/widgets/converting_containers/temperature_conversion.dart';
import 'package:app/widgets/converting_containers/volume_conversion.dart';
import 'package:app/widgets/converting_containers/weight_conversions.dart';

class ConvertingPage extends StatefulWidget {
  ConvertingPage({Key? key}) : super(key: key);

  @override
  _ConvertingPageState createState() => _ConvertingPageState();
}

class _ConvertingPageState extends State<ConvertingPage> {
  int _currentIndex = 0;
  final ValueNotifier<int> _clearTrigger = ValueNotifier(0);

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildContent() {
    switch (_currentIndex) {
      case 0:
        return LengthConversion(clearTrigger: _clearTrigger);
      case 1:
        return WeightConversion(clearTrigger: _clearTrigger);
      case 2:
        return SpeedConversion(clearTrigger: _clearTrigger);
      case 3:
        return TemperatureConversion(clearTrigger: _clearTrigger);
      case 4:
        return VolumeConversion(clearTrigger: _clearTrigger);
      default:
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Coming Soon',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        );
    }
  }

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
              NavigationWidget(
                selectedIndex: _currentIndex,
                onIndexChanged: _onIndexChanged,
              ),
              _buildContent(),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF171A1F)),
                ),
                onPressed: () {
                  _clearTrigger.value++;
                },
                child: Text(
                  style: TextStyle(color: Colors.white),
                  'Clear Fields',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
