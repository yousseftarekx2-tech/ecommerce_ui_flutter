import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF9F9F9),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  height: 44,
                  width: 307,
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text("Search"),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt_outlined),
                      prefixIconColor: Color(0xFF1A1A1A),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Icon(Icons.notifications_outlined),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
