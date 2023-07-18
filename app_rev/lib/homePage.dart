import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('Desenvolvendo'),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 0, 0, 100),
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.filter_hdr_sharp),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Santander',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Olá Igor Gabriel',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.start,
            ),
            Text(
              'Ag: 3548 C/C: 220118-45',
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 120,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  child: Column(
                    children: [
                      Center(
                        child: Card(
                          elevation: 20,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            child: Container(
                              width: 350,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.lock,
                                      color: Color.fromRGBO(255, 0, 0, 100),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      ' Habilitar o ID Santander e faça \n pagamentos e outras transações \n pelo app',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 100,
                    child: Card(
                      elevation: 20,
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.pix_outlined,
                              color: Color.fromRGBO(255, 0, 0, 100),
                            ),
                          ),
                          Text(
                            'Pix',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.612),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 80,
                    width: 100,
                    child: Card(
                      elevation: 20,
                      clipBehavior: Clip.hardEdge,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.qr_code_2_rounded,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Boleto',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.612),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 80,
                    width: 100,
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.camera_rear_rounded,
                                color: Color.fromRGBO(255, 0, 0, 100),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Transferência',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.612),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
