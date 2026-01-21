import 'package:app/utils/conversion_utils.dart';
import 'package:flutter/material.dart';

class TemperatureConversion extends StatefulWidget {
  const TemperatureConversion({Key? key, required this.clearTrigger})
    : super(key: key);

  final ValueNotifier<int> clearTrigger;

  @override
  State<TemperatureConversion> createState() => _TemperatureConversionState();
}

class _TemperatureConversionState extends State<TemperatureConversion> {
  Color containerColor = Color(0xFF171A1F);
  TextEditingController inputController = TextEditingController();
  String fromUnit = '°C';
  String toUnit = '°C';
  String result = '';

  @override
  void initState() {
    super.initState();
    widget.clearTrigger.addListener(_clearFields);
  }

  @override
  void dispose() {
    widget.clearTrigger.removeListener(_clearFields);
    inputController.dispose();
    super.dispose();
  }

  void _clearFields() {
    inputController.clear();
    setState(() {
      result = '';
    });
  }

  void _convert() {
    if (inputController.text.isEmpty) {
      setState(() {
        result = '';
      });
      return;
    }
    double value = double.tryParse(inputController.text) ?? 0.0;
    double converted = ConversionUtils.convertTemperature(
      value,
      fromUnit,
      toUnit,
    );
    setState(() {
      result = converted.toStringAsFixed(2);
    });
  }

  void _swap() {
    setState(() {
      String temp = fromUnit;
      fromUnit = toUnit;
      toUnit = temp;
      _convert();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "From",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Roboto',
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: inputController,
                    onChanged: (value) => _convert(),
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: "0.00",
                      hintStyle: const TextStyle(color: Colors.white24),
                      filled: true,
                      fillColor: Colors.black26,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    dropdownColor: containerColor,
                    value: fromUnit,
                    items: [
                      DropdownMenuItem(value: '°C', child: Text('°C')),
                      DropdownMenuItem(value: '°F', child: Text('°F')),
                      DropdownMenuItem(value: 'K', child: Text('K')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        fromUnit = value.toString();
                        _convert();
                      });
                    },
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: "°C",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 68, 138, 255),
                      ),
                      filled: true,
                      fillColor: Colors.black26,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            IconButton(
              iconSize: 50,
              icon: Icon(Icons.swap_vert),
              color: Color.fromARGB(255, 68, 138, 255),
              onPressed: _swap,
            ),
            SizedBox(height: 50),
            Text(
              "To",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Roboto',
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    readOnly: true,
                    controller: TextEditingController(text: result),
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: "0.00",
                      hintStyle: const TextStyle(color: Colors.white24),
                      filled: true,
                      fillColor: Colors.black26,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    dropdownColor: containerColor,
                    value: toUnit,
                    items: [
                      DropdownMenuItem(value: '°C', child: Text('°C')),
                      DropdownMenuItem(value: '°F', child: Text('°F')),
                      DropdownMenuItem(value: 'K', child: Text('K')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        toUnit = value.toString();
                        _convert();
                      });
                    },
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: "°C",
                      hintStyle: const TextStyle(color: Colors.blueAccent),
                      filled: true,
                      fillColor: Colors.black26,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Divider(
              color: Colors.white24,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 20),
            Text(
              result.isEmpty ? 'Result' : '$result $toUnit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
