import 'package:flutter/material.dart';

class LengthConversion extends StatefulWidget {
  const LengthConversion({Key? key}) : super(key: key);

  @override
  State<LengthConversion> createState() => _LengthConversionState();
}

class _LengthConversionState extends State<LengthConversion> {
  Color containerColor = Color(0xFF171A1F);

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
                // TextField-ul MAI MARE (Valoarea)
                Expanded(
                  flex: 3,
                  child: TextField(
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

                const SizedBox(width: 10), // Spațiu între ele
                // TextField-ul MAI MIC (Unitatea)
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    value: 'cm',
                    items: [
                      DropdownMenuItem(value: 'cm', child: Text('cm')),
                      DropdownMenuItem(value: 'm', child: Text('m')),
                      DropdownMenuItem(value: 'km', child: Text('km')),
                    ],
                    onChanged: (value) {},
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: "cm",
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
            IconButton(
              iconSize: 50,
              icon: Icon(Icons.arrow_circle_down_outlined),
              color: Colors.white,
              onPressed: () {},
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
                // TextField-ul MAI MARE (Valoarea)
                Expanded(
                  flex: 3,
                  child: TextField(
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

                const SizedBox(width: 10), // Spațiu între ele
                // TextField-ul MAI MIC (Unitatea)
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    value: 'cm',
                    items: [
                      DropdownMenuItem(value: 'cm', child: Text('cm')),
                      DropdownMenuItem(value: 'm', child: Text('m')),
                      DropdownMenuItem(value: 'km', child: Text('km')),
                    ],
                    onChanged: (value) {},
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: "cm",
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
              color: Colors.white24, // Culoarea liniei
              thickness: 1, // Grosimea liniei
              indent: 20, // Spațiu gol în partea stângă
              endIndent: 20, // Spațiu gol în partea dreaptă
            ),
            SizedBox(height: 20),
            Text('Result', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
