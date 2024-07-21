
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khata_book/calce_page.dart';

void main() => runApp(MaterialApp(
      title: 'Cashbook',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String pin = "";
  final String correctPin = "1234";
  String errorMessage = "";

  void onNumberPressed(String number) {
    setState(() {
      if (pin.length < 4) {
        pin += number;
        errorMessage = ""; // Clear error message when new number is pressed
      }
      if (pin.length == 4) {
        _validatePin();
      }
    });
  }

  void onDeletePressed() {
    setState(() {
      if (pin.isNotEmpty) {
        pin = pin.substring(0, pin.length - 1);
        errorMessage = ""; // Clear error message when delete is pressed
      }
    });
  }

  void _validatePin() {
    if (pin == correctPin) {
      setState(() {
        errorMessage = "PIN Correct!";
        // Aap yahan par sahi PIN hone par kuch action perform kar sakte hain
      });
      Navigator.push(context, MaterialPageRoute(builder: (context)=>EntriesPage()));
    } else {
      setState(() {
        errorMessage = "Incorrect PIN, please try again.";
        pin = ""; // Reset the PIN input on incorrect entry
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 45, 237),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Enter Cashbook PIN",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: i < pin.length ? Colors.white : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                        if (i < 3) SizedBox(width: 10.0),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  // Forget password button action
                },
                child: Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNumberButton('1'),
                      _buildNumberButton('2'),
                      _buildNumberButton('3'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNumberButton('4'),
                      _buildNumberButton('5'),
                      _buildNumberButton('6'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNumberButton('7'),
                      _buildNumberButton('8'),
                      _buildNumberButton('9'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      _buildNumberButton('0'),
                      TextButton(
                        onPressed: onDeletePressed,
                        child: Text(
                          '⌫',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return TextButton(
      onPressed: number.isEmpty ? null : () => onNumberPressed(number),
      child: Text(
        number,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );
  }
}
