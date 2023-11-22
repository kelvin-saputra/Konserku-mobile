import 'package:flutter/material.dart';
import 'package:inventory_mobile/screens/form_konserku.dart';
import 'package:inventory_mobile/screens/list_item.dart';
import 'package:inventory_mobile/screens/login.dart';
import 'package:inventory_mobile/screens/ticket_item.dart';

class InventoryItem {
  final String name;
  final IconData icon;
  final Color color;

  InventoryItem(this.name, this.icon, this.color);
}

class InventoryCard extends StatelessWidget {
  final InventoryItem item;

  const InventoryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          if (item.name == "Tambah Item") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TicketFormPage()));
          } else if (item.name == "Lihat Item") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ItemPage()));
          } else if (item.name == "Logout") {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
