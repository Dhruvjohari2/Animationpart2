import 'package:dope_animation/spinwheel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List all = [
    {
      "url": "https://assets1.lottiefiles.com/packages/lf20_gyNnzxbm7F.json",
      "name": "wheel",
      "icon": "two_wheeler",
    },
    {
      "url": "https://assets4.lottiefiles.com/packages/lf20_fpq9wG8yV3.json",
      "name": "Music",
      "icon": "music_note",
    },
    {
      "url": "https://assets1.lottiefiles.com/packages/lf20_Q7WY7CfUco.json",
      "name": "color Loader",
      "icon": "color_lens_outlined",
    },
    {
      "url": "https://assets3.lottiefiles.com/packages/lf20_4kji20Y93r.json",
      "name": "App loading",
      "icon": "downloading_outlined",
    },
    {
      "url": "https://assets6.lottiefiles.com/packages/lf20_DTosIIqiu8.json",
      "name": "Happy delivery",
      "icon": "delivery_dining",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (e, index) {
                  return ListTile(
                    leading: const Icon(Icons.label_important_outline),
                    title: Text(
                      all[index]["name"],
                      style: const TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SpinWheel(
                            url: all[index]["url"],
                            name: all[index]["name"],
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
          body: Center(
            child: Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_riAqnQrYxZ.json',
            ),
          ),
        ),
      ),
    );
  }
}
