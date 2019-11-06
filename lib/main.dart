// Flutter code sample for

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Profile Valdy Rizki';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

void openLaravel(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Laravel'),
        ),

        body: Column(
          children: <Widget>[
            Image.network('https://miro.medium.com/max/3592/1*1VVrgH50xfG6U0GSpTUteg.png',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
              "Laravel adalah kerangka kerja aplikasi web berbasis PHP yang open source, menggunakan konsep model–view–controller. Laravel berada dibawah lisensi MIT, dengan menggunakan GitHub sebagai tempat berbagi kode",
              ),
            ),
          ),
          ]
        ),
      );
    },
  ));
}

void openFlutter(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Image.network('https://www.petanikode.com/img/flutter/flutter.png',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
              "Flutter adalah sebuah framework aplikasi mobil sumber terbuka yang diciptakan oleh Google. Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android dan iOS, serta menjadi metode utama untuk membuat aplikasi Google Fuchsia.",
              ),
            ),
          ),
          ]
        ),
      );
    },
  ));
}

void openCisco(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold( 
        appBar: AppBar(
          title: const Text('Cisco'),
        ),
        body: Column(
          children: <Widget>[
            Image.network('https://drunkentechie.files.wordpress.com/2012/10/cisco-logo1.jpg',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
              "Cisco adalah sebuah perusahaan yang memiliki dua bidang usaha. Usaha yang pertama adalah didalam pembuatan hardware dan software yang berhubungan dengan jaringan komputer. Kemudian yang kedua adalah di bidang pendidikan yaitu dengan Cisco Networking Academy (CNA).",
              ),
            ),
          ),
          ]
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Profile of Valdy Rizki'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Image.network('http://1.bp.blogspot.com/-oZjNaUrQ5PE/VdVHIZyONsI/AAAAAAAAAlE/ZeQ3saIc5nQ/s1600/valdy.jpg',
          ),
          Text(
            'Valdy Rizki Djuliansyah',
            style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
          ),
          Text('A.Md',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 1.0),),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Image.network('https://seeklogo.com/images/L/laravel-framework-logo-C10176EC8C-seeklogo.com.png'),
                tooltip: 'Laravel',
                iconSize: 100.0,
                onPressed: () {
                openLaravel(context);
                },
               ),
              IconButton(
                icon: Image.network('https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                tooltip: 'Flutter',
                iconSize: 100.0,
                onPressed: () {
                openFlutter(context);
                },
               ),
               IconButton(
                icon: Image.network('https://drunkentechie.files.wordpress.com/2012/10/cisco-logo1.jpg'),
                tooltip: 'Cisco',
                iconSize: 100.0,
                onPressed: () {
                openCisco(context);
                },
               ),
            ],
          ),
        ],
      ),
    );
  }
}
