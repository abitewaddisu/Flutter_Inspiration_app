import 'package:flutter/material.dart';
import 'package:inspiration_app/widgets/ImageDisplay.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Find Your',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        height: 2.0,
                      ),
                    ),
                    Text('Inspiration',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey
                        ),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[200]
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Promo Today',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ImageDisplay(image: AssetImage('assets/images/one.jpg'),),
                          ImageDisplay(image: AssetImage('assets/images/two.jpg'),),
                          ImageDisplay(image: AssetImage('assets/images/three.jpg'),),
                        ],
                      )
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      height: 180.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/three.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [0.1, 0.9],
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.2),
                            ]
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Best Design',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
