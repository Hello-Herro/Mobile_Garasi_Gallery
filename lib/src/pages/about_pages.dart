import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  //fungsi dari stateless agar auto save secara otomatis ketika ada perubahan pada code, layout atau data tpi tidak sering!
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Garasi Drift'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
        elevation: 0.1,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/icon/Logo-Garasi-Drift-700x492.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Text('OWNER NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text(
                'Zico & Dipo',
                style: TextStyle(
                    color: Colors.deepPurple[200],
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text('ABOUT',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text(
                '2 BROTHERS WITH A CAMERA, PASSION, AND DRIFTING SKILLS. THAT IS HOW GARASI DRIFT WAS BORN.',
                style: TextStyle(
                    color: Colors.deepPurple[200],
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.deepPurple[100],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'connect@garasi-drift.com',
                    style: TextStyle(
                        color: Colors.deepPurple[100],
                        fontSize: 12.0,
                        letterSpacing: 1.0),
                  ),
                ],
              )
            ]),
        // child: Image(
        //   image: AssetImage('assets/gallery/1.jpg'),
        // ),
        // Text('Welcome to Garasi Drift', style: TextStyle(
        //   fontSize: 20.0,
        //   fontWeight: FontWeight.bold,
        //   letterSpacing: 2.0,
        //   color: Colors.grey[600],
        //   fontFamily: 'Gotham',
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Go!'),
        backgroundColor: Colors.deepPurple[400],
      ),
    );
  }
}
