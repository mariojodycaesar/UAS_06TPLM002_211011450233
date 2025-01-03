import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Background.png'), // Gambar latar belakang
                fit: BoxFit.cover,
              ),
            ),
          ),
          // AppBar transparan
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: AppBar(
                title: Text('Weatherman'),
                backgroundColor: Colors.transparent, // Membuat AppBar transparan
                elevation: 0, // Menghilangkan bayangan
                actions: [
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.white), // Ikon tambah
                    onPressed: () {
                      // Aksi saat ikon tambah ditekan
                    },
                  ),
                ],
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Colors.white), // Ikon menu
                  onPressed: () {
                    // Aksi saat ikon menu ditekan
                  },
                ),
              ),
            ),
          ),
          // Konten utama
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tangerang',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplayExtrabold',
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Friday, January 03, 2025',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 25,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '25°c',
                    style: TextStyle(
                      fontFamily: 'Superstar',
                      fontSize: 100,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(
                    color: Colors.black45,
                    thickness: 2,
                    indent: 30,
                    endIndent: 30,
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud, size: 50, color: Colors.black), // Ikon cuaca
                      SizedBox(width: 10),
                      Text(
                        'Cloudy',
                        style: TextStyle(
                          fontFamily: 'TimeburnerBold',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    '25°C / 28°C',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplayRegular',
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 30),
                  // Bagian ramalan mingguan
                  Text(
                    'Weekly Forecast',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Today', style: TextStyle(fontSize: 18)),
                          Text('25°C / 28°C', style: TextStyle(fontSize: 18)),
                          Icon(Icons.wb_sunny, size: 30, color: Colors.yellow), // Ikon cuaca hari ini
                        ],
                      ),
                      Column(
                        children: [
                          Text('Saturday', style: TextStyle(fontSize: 18)),
                          Text('20°C', style: TextStyle(fontSize: 18)),
                          Icon(Icons.thunderstorm, size: 30, color: Colors.grey), // Ikon awan petir
                        ],
                      ),
                      Column(
                        children: [
                          Text('Sunday', style: TextStyle(fontSize: 18)),
                          Text('20°C', style: TextStyle(fontSize: 18)),
                          Icon(Icons.cloud, size: 30, color: Colors.blue), // Ikon awan hujan
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Refresh data cuaca
                    },
                    child: Text('Refresh'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
