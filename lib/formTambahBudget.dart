
import 'package:counter_7/data_watchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data_budget.dart';
import 'package:counter_7/models/final_budget.dart';

class formTambahBudget extends StatefulWidget {
  const formTambahBudget({super.key});

  @override
  State<formTambahBudget> createState() => _formTambahBudgetState();
}

class _formTambahBudgetState extends State<formTambahBudget> {
  final _formKey = GlobalKey<FormState>();
  List<String> listJenis = ['Pengeluaran', 'Pemasukan'];
  String _judulStr = "";
  String _isiJenis = "Pengeluaran";
  int _nominalInt = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Tambah Budget'),
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: apa saja",
                      labelText: "Masukan Judul ",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judulStr = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judulStr = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh : 10000000",
                      labelText: "Nominal",
                      icon: const Icon(Icons.money),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nominalInt = int.parse(value!);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominalInt = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Tipe',
                  ),
                  trailing: DropdownButton(
                    value: _isiJenis,
                    // icon: const Icon(Icons.format_list_bulleted),
                    items: listJenis.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _isiJenis = newValue!;
                      });
                    },
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final_budget.listBudget.add(final_budget(
                        judul: _judulStr,
                        nominal: _nominalInt,
                        tipe: _isiJenis,
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('data telah ditambahkan!'),
                      ));
                    }
                  },
                  child: const Text(
                    "Tambah",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}