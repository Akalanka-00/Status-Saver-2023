import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:status_saver/Pages/WelcomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomePage()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image(image: AssetImage("assets/images/logo.png"),width: 200),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("Download your whatsapp statuses...")
          ],
        ),
      ),
    );
  }
}