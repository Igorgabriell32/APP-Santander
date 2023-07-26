import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerPrincipal extends StatelessWidget {
  const DrawerPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                child: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                }),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.manage_accounts_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Igor Gabriel'),
                    Text('Ag:2210  C/C: 314057'),
                  ],
                ),
                SizedBox(
                  width: 18,
                ),
                Icon(Icons.expand_more_outlined),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                Text(
                  'Sair do app',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Busque aqui...',
                    prefixIcon: const Icon(Icons.search_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(255, 0, 0, 1)))),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money_rounded,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Saldo Extrato'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money_sharp,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Transações'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.pix_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Pix'),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'Pague, Transfira e receba',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.credit_card),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Cartões'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_money_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Limite da conta'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.clean_hands_sharp),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Emprestimos'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.money),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Poupánça'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.mobile_friendly_rounded),
                            SizedBox(
                              width: 8,
                            ),
                            Text('DinDin'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wifi_protected_setup),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Seguro'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.monetization_on_sharp),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Financiamento'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pin_invoke_sharp),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Investimento'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.car_repair),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Consórcio'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wifi_protected_setup),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Seguro'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.connecting_airports),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Combo Santander +'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wifi_protected_setup),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Assistência helps'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
