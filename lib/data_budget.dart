import 'package:counter_7/data_watchlist.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/formTambahBudget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/models/final_budget.dart';

class dataBudget extends StatefulWidget {
  const dataBudget({super.key});

  @override
  State<dataBudget> createState() => _dataBudgetState();
}

class _dataBudgetState extends State<dataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'Flutter Demo Page')),
                );
              },
            ),
            ListTile(
              title: const Text('Form Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const formTambahBudget()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget Page'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const dataBudget()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const data_watchlist()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            elevation: 8,
            child: ListTile(
              title: Text(final_budget.listBudget[index].judul,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(final_budget.listBudget[index].nominal.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              trailing: Text(final_budget.listBudget[index].tipe,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  )),
            ),
          );
        },
        itemCount: final_budget.listBudget.length,
      ),
    );
  }
}