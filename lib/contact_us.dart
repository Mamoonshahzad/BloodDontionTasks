import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Us'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(75),
                  child: Image.asset(
                    'assets/pic5.png',
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Rana Jazeb Ali',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [Icon(Icons.call), Text('+923489777191')],
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Icon(Icons.mail),
                    Text('mamoonsheraniii@gmail.com')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
