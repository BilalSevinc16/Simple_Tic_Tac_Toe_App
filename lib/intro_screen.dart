import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:simple_tic_tac_toe_app/home_page.dart';
import 'package:simple_tic_tac_toe_app/my_style.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Text(
                    "TIC TAC TOE",
                    style: myNewFontWhite.copyWith(fontSize: 30),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: AvatarGlow(
                  endRadius: 140,
                  duration: const Duration(seconds: 2),
                  glowColor: Colors.white,
                  repeat: true,
                  repeatPauseDuration: const Duration(seconds: 1),
                  startDelay: const Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.none,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade900,
                      radius: 80.0,
                      child: Image.asset(
                        'assets/images/tictactoelogo.png',
                        color: Colors.white,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 60,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'PLAY GAME',
                          style: myNewFont,
                        ),
                      ),
                    ),
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
