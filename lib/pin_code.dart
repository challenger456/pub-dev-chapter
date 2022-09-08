import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pinCode extends StatefulWidget {
  static const String id = 'pin_code.dart';
  const pinCode({Key? key}) : super(key: key);

  @override
  State<pinCode> createState() => _pinCodeState();
}

class _pinCodeState extends State<pinCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pin_Code_Text_Field'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinCodeTextField(
              appContext: context,
              length: 4,
              keyboardType: TextInputType.number,
              obscureText: true,
              cursorColor: Colors.teal,
              obscuringCharacter: '*',
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeColor: Colors.purple,
                  activeFillColor: Colors.teal,
                  inactiveFillColor: Colors.grey,
                  selectedFillColor: Colors.yellow,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.pinkAccent
              ),
              onChanged: (value){

              },
            ),
          ],
        ),
      ),
    );
  }
}
