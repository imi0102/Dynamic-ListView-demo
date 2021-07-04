import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Demo"),
      ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 50,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '04-07-2021',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            SizedBox(
                              width: 20,
                              child: PopupMenuButton(padding: EdgeInsets.zero,
                                  icon:
                                      Icon(Icons.more_vert),
                                  // add this line
                                  itemBuilder: (_) => <PopupMenuItem<String>>[
                                         PopupMenuItem<String>(
                                            child: Container(
                                              width: 100,
                                              // height: 30,
                                              child: Text(
                                                "Delete",
                                                style:
                                                    TextStyle(color: Colors.black),
                                              ),
                                            ),
                                            value: 'report'),
                                      ],
                                  onSelected: (index) async {
                                    switch (index) {
                                      case 'report':
                                        break;
                                    }
                                  }),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        getKeyValueWidget("Name", "Mr.Developer","Age", "18"),
                        SizedBox(height: 10),
                        getKeyValueWidget("Gender", "Male", "Experience","4 years"),
                        SizedBox(height: 10),
                        getKeyValueWidget("Designation", "MobileApp", "Label","Value"),
                        SizedBox(height: 10),
                        getKeyValueWidget("Start Date", "09-09-2019","Profession","Development"),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget getKeyValueWidget(String label, String value,String label1, String value1) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 05.0),
              Text(
                value,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label1,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 05.0),
              Text(
                value1,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
