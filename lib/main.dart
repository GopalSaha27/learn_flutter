import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  isScrollControlled: true,
                  useSafeArea: true,
                  enableDrag: false,
                  builder: (ctx) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 4,
                        ),
                        Text("Simple"),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("Cancel")),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Save")),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text("Show Dialog"),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                maxLength: 50,
                onChanged: (String? value) {
                  print(value);
                },
                keyboardType: TextInputType.phone,
                enabled: true,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade400,
                  ),
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.person),
                  fillColor: Colors.white54,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
