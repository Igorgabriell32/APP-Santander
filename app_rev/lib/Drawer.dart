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
          Icon(Icons.close),
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
          Container(
              child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(255, 0, 0, 1)))),
          )),
        ],
      ),
    ));
  }
}
