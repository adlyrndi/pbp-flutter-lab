import 'package:counter_7/models/mywatchlist.dart';
import 'package:flutter/material.dart';

import 'data_budget.dart';
import 'data_watchlist.dart';
import 'formTambahBudget.dart';
import 'main.dart';
class DetailEachMovie extends StatelessWidget{
  final Mywatchlist detail ;

  const DetailEachMovie({super.key, required this.detail});
  String checkStatus(Watched status) {
    if (status == Watched.NO) {
      return "Belum";
    } else {
      return "Sudah";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data MyWatchList'),
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
       body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(detail.fields.title, style: TextStyle(fontSize: 50.0, fontFamily: 'Karla', fontWeight:FontWeight.bold),

          )),
            Padding(padding: EdgeInsets.all(50.0)),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Release Date: ', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold, )),
                  TextSpan(text: detail.fields.releaseDate, style: TextStyle(color: Colors.black)),
                  TextSpan(text: '\nRating: ', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold)),
                  TextSpan(text: detail.fields.rating, style: TextStyle(color: Colors.black)),
                  TextSpan(text: '\nStatus: ', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold)),
                  TextSpan(text: checkStatus(detail.fields.watched), style: TextStyle(color: Colors.black)),
                  TextSpan(text: '\nReview: ', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold)),
                  TextSpan(text: detail.fields.review, style: TextStyle(color: Colors.black)),
                  
                ],
              ),
              textAlign: TextAlign.left ,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Karla'
            ),
          ),
          Padding(padding: EdgeInsets.all(70.0)), 
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
            ),
            onPressed: () {Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const data_watchlist()),
                ); },
            child: Text('Back!'),
          )

          
          ],
       ),
       
    );
  }
  
}