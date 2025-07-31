import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // burada logomuzu finale atayarak kod karmasikligini azalttik.
  final asset = 'assets/flutter_logo.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text('Profil Sayfası'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(
                10.0), // Padding ile bosluk veriyoruz orantiliyoruz
            child: Column(
              children: [
                //circleAvatar: yuvarlak bir profil olusturmak icin
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(asset),
                ),
                SizedBox(
                    height:
                        16), // burada circleAvatar ile text arasindeki bosluk olusturuldu
                Text(
                  'Zeynep İFLAZOĞLU',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Flutter Geliştiricisi',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          // tasma hatalari yasanmamasi icin expanded kullaniliyor
                          child: Column(
                            children: <Widget>[
                              Text(
                                '8.5K',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text('Takipçi'),
                            ],
                          ),
                        ),
                        Expanded(
                          // tasma hatalari yasanmamasi icin expanded kullaniliyor
                          child: Column(
                            children: <Widget>[
                              Text(
                                '1.5K',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text('Takip'),
                            ],
                          ),
                        ),
                        Expanded(
                          // tasma hatalari yasanmamasi icin expanded kullaniliyor
                          child: Column(
                            children: <Widget>[
                              Text(
                                '150',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text('Gönderi'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hakkımda',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            'flutter ile mobil geliştirme öğreniyorum. Ve bu ilk projem.'),
                      ],
                    ),
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
