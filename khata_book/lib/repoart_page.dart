import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_book/eentries_page.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
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

//---------------------------------------------------------TAB BAR---------------------------------------------------//
      body: DefaultTabController(
        length: 1,
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(
                  255, 66, 72, 238), // Set TabBar background color
              child: TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // Set search box background color
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search...',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 12),
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 33, 37, 243)),
                                    prefixIcon:
                                        Icon(Icons.search, color: Colors.blue),
                                    border: InputBorder.none),

                                style: TextStyle(
                                    color: Colors.black), // Set text color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//--------------------------------------------------------------------BALANCE BOX--------------------------------//
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 206, 226, 241),
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
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              " Total In",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              " -",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              " Total Out",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              " =",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              'Net Balance',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
//--------------------------------------------------------BALANCE IN OUT BOX-----------------------------------------//
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
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
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Date",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Total In',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Total Out',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Cash out',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
//------------------------------------------------------BUTTON-------------------------------------------//
            SizedBox(
              height: 270,
            ),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Report Dwonlod'),
                        content: Text('Are you sure Dwonlod report!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();

                            },
                            child: Text("yes"),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EEntriesPage()));
                              },
                              child: Text('No'))
                        ],
                      );
                    });
              },
              icon: Icon(
                Icons.download, // Replace with the desired icon
                size: 18, // Adjust icon size as needed
                color: Colors.white, // Match text color for consistency
              ),
              label: Text(
                "Download Report",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40), // Set minimum button size
                backgroundColor: Color.fromARGB(255, 25, 82, 239),
              ),
            )
          ],
        ),
      ),
    );
  }
}
