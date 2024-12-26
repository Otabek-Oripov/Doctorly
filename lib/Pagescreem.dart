import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_area/Containers.dart';
import 'package:local_area/forPage.dart';

class Pagescreem extends StatefulWidget {
  const Pagescreem({super.key});

  @override
  State<Pagescreem> createState() => _PagescreemState();
}

class _PagescreemState extends State<Pagescreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(182.0),
          child: AppBar(
            flexibleSpace: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueGrey.shade200.withOpacity(0.5),
                                        width: 2.0
                                      ),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_back,
                                        size: 30,
                                      ))),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                'Laboratoriya',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    child: Row(
                      children: [
                        Icon(Icons.search,
                            size: 30, color: Colors.blueGrey.shade500),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Qidiruv",
                          style: TextStyle(
                              color: Colors.blueGrey.shade300, fontSize: 20),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 170,
                child: PageView(
                  children: [
                    Advestment(),
                    Advestment(),
                    Advestment(),
                    Advestment(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              ),
              Containestview(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        bottomNavigationBar:  Container(
          decoration: BoxDecoration(
    color: Colors.white, // BottomAppBar foni
    boxShadow: [
    BoxShadow(
    color: Colors.black.withOpacity(0.1), // Soyaning rangi
    blurRadius: 10, // Soyaning tarqalish radiusi
    offset: Offset(0, -4), // Soyaning yo'nalishi (yuqoriga siljish)
    ),
    ],
    ),
       child:  BottomAppBar(
          color: Colors.white,
          height: 125, // BottomAppBar foni

          child: Container(
            // Containerning balandligi
            child: Center(
                child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Umumiy summa',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Text(
                        '100 000 сум',
                        style: TextStyle(
                            fontSize: 19, color: Colors.blue.shade600,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue,

                  ),
                  child: Center(
                    child: Text(
                      "Davom etish",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                )
              ],
            )),
          ),
        ))
    );
  }
}
