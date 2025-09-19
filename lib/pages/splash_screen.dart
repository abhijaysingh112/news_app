import 'package:flutter/material.dart';
import 'dart:async';
import 'news_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // spread content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(), // empty box to push content down
        
              // Centered Logo + Title + Slogan
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/newslylogo.png",
                    height: 250,
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                
                  
                  const SizedBox(height: 10),
                
                   
                  
                ],
              ),
        
              // Footer
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Made with ❤️",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
