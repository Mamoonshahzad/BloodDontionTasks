import 'package:contact_us/reusable_widgets/donation_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationHistory extends StatefulWidget {
  const DonationHistory({super.key});

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('DonationHistory'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  reUsableWidgetRegScreen(
                      userName: 'Mamoon Shahzad',
                      userImage:
                          ('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                      bloodAmount: 'amount donated = 5'),
                  SizedBox(height: Get.height * .02),
                  reUsableWidgetRegScreen(
                      userName: 'Qasim Khan',
                      userImage:
                          ('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                      bloodAmount: 'total amount = 6'),
                  SizedBox(height: Get.height * .02),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [Icon(Icons.whatshot), Text('WhatsApp')],
                      ))
                ]))));
  }
}
