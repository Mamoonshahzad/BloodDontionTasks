import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  Widget missionVision({required String title, required String text}) {
    return Container(
      width: Get.width * .43,
      height: Get.height * .27,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.grey)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const Divider(color: Colors.grey, thickness: 1),
            Text(text)
          ],
        ),
      ),
    );
  }

  Widget teamMembers({required memberImage, required String memberName}) {
    return Container(
      width: Get.width * .3,
      // height: Get.height * .17,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            CircleAvatar(radius: 40, backgroundImage: AssetImage(memberImage)),
            Text(
              memberName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text('Bandagan e Khuda',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/92DevsLogo.png',
                  width: Get.width * .35,
                  height: Get.height * .15,
                ),
                const Divider(color: Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    missionVision(
                        title: "Vision",
                        text:
                            'Ensure a world without blood supply fears.Simplify donation, foster shared responsibility for healthier, kinder society.'),
                    missionVision(
                        title: 'Mission',
                        text:
                            'Save lives with easy blood donation. Connect donors to those in need, making the process simple and impactful.')
                  ],
                ),
                const Divider(),
                const Text('Team Members:',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                const Divider(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      teamMembers(
                          memberImage: 'assets/images/SyedHaiderAli.png',
                          memberName: 'Syed Haider Ali'),
                      teamMembers(
                          memberImage: 'assets/images/RanaJazabAli.png',
                          memberName: 'Rana Jazab Ali')
                    ]),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamMembers(
                        memberImage: 'assets/images/ZeeshanAkhtar.png',
                        memberName: 'Syed Zeeshan Akhtar'),
                    teamMembers(
                        memberImage: 'assets/images/MQasimAli.png',
                        memberName: 'Muhammad Qasim Ali'),
                    teamMembers(
                        memberImage: 'assets/images/DrAliRaza.png',
                        memberName: 'Dr Ali Raza'),
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
