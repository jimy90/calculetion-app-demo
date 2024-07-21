import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Date',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.menu_book_rounded,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 15, 45, 237),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Account Setting",hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.manage_accounts)),
                     enabled: false,
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Help & Seqrite", hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.help_outline_outlined)),
                     enabled: false,
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                   hintText: 'About us',hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.arrow_back_ios_new_outlined)),
                     enabled: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
