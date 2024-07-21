import 'package:flutter/material.dart';
import 'package:khata_book/repoart_page.dart';
import 'package:khata_book/setting_page.dart';

class EEntriesPage extends StatefulWidget {
  const EEntriesPage({super.key});

  @override
  State<EEntriesPage> createState() => _EEntriesPageState();
}

class _EEntriesPageState extends State<EEntriesPage> {


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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Serch Date and Month",
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_rounded)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(Icons.clean_hands_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Cash in hand",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Cash out',
                            style: TextStyle(fontSize: 15),
                          ),
                          Icon(Icons.money_off_csred),
                          SizedBox(
                            width: 8,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),

            Column(
              children: <Widget>[
                Container(
                  child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('asset/Books.jpg')),
                ),
                SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "IN",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 40),
                          backgroundColor: Color.fromARGB(255, 10, 230, 90)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Out",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 40),
                          backgroundColor: const Color.fromARGB(255, 250, 45, 30)),
                    )
                  ],
                )
              ],
            )
            // Aap yaha par aur widgets bhi add kar sakte hain
          ],
        ),
      ),
    
    );
  }
}