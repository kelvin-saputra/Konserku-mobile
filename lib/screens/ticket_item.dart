import 'package:flutter/material.dart';
import 'package:inventory_mobile/widgets/left_drawer.dart';
import 'package:inventory_mobile/widgets/ticket_item_cards.dart';

class TicketItem{
  final String name;
  final int amount;
  final String description;
  final DateTime dateAdded;
  final Color color;

  TicketItem(this.name,this.amount,this.description,this.dateAdded,this.color);
}

List<TicketItem> ticketItems =[];

class TicketItemsLists extends StatefulWidget {
  const TicketItemsLists({super.key});

  @override
  State<TicketItemsLists> createState() => _TicketItemsListState();
}

class _TicketItemsListState extends State<TicketItemsLists>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54 ,
        foregroundColor: Colors.white,
        title: const Text(
          'Konserku Items',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer : const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Welcome to Konserku',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: ticketItems.map((TicketItem item) {
                  return JawItemsCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

