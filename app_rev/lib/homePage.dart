import 'package:app_rev/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _body() {
    return Column(
      children: [
        Container(
          width: 360,
          height: 120,
          child: Column(
            children: [
              Card(
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
                  //git
                  height: 80,
                  width: 110,
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
                  width: 110,
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
                  width: 110,
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
    );
  }

  Widget _cartao() {
    return Center(
        child: GestureDetector(
      onTap: () {
        print('teste');
        getApi();
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 20,
        child: Container(
          width: 300,
          height: 50,
          color: Color.fromRGBO(255, 0, 0, 0.925),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Text(
                  'Cartão final 9646',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _cartao2() {
    return Center(
      child: Card(
        elevation: 18,
        clipBehavior: Clip.hardEdge,
        child: Container(
          width: 300,
          height: 50,
          color: Color.fromRGBO(44, 44, 44, 0.733),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Text(
                  'Cartão final 9280',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emprestimo() {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10, bottom: 8),
              child: Text(
                'Empréstimos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                width: 300,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on_outlined,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Empréstimos'),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Simule Agora',
                          style: TextStyle(fontSize: 10),
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
    );
  }

  Widget _Cartaoonline() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 300,
          height: 50,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cartão Online',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 0, 0, 100), fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget poupancaInvest() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              'Poupança e Investimentos',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: 310,
            height: 60,
            child: Card(
              elevation: 8,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money_sharp,
                      ),
                      Text('Pounpança'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget precisaAjuda() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Precisa de Ajuda ?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 310,
              height: 100,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outline_sharp,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Fale com a Gente',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Tire dúvias, encontre soluções, ativa o Whatsapp e muito mais para te ajudar'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPrincipal(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    backgroundColor: Color.fromRGBO(255, 0, 0, 0.925),
                    toolbarHeight: 120,
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.filter_hdr_sharp),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Santander',
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Olá, Igor Gabriel',
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
                    elevation: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: _body(),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            _cartao(),
            _cartao2(),
            _Cartaoonline(),
            _emprestimo(),
            poupancaInvest(),
            precisaAjuda(),
          ],
        ),
      ),
    );
  }
}
