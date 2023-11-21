import 'package:contact_us/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CampaignDetails extends StatefulWidget {
  const CampaignDetails({Key? key}) : super(key: key);

  @override
  CampaignDetailsState createState() => CampaignDetailsState();
}

class CampaignDetailsState extends State<CampaignDetails> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/campaign.png'),
              campaignDetailsWidget(
                  fieldName: 'Location', hintTxt: 'Enter Location'),
              SizedBox(height: Get.height * .02),
              campaignDetailsWidget(
                  fieldName: 'Volunteers', hintTxt: 'No of Volunteers'),
              SizedBox(height: Get.height * .02),
              campaignDetailsWidget(
                  fieldName: 'Collection', hintTxt: 'Collected Blood amount'),
              SizedBox(height: Get.height * .02),
              Builder(
                builder: (context) => Container(
                  width: Get.width,
                  height: Get.height * .07,
                  decoration: const BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * .07,
                        width: Get.width * .22,
                        child: const Center(
                            child:
                                Text('Date', style: TextStyle(fontSize: 15))),
                      ),
                      const VerticalDivider(color: Colors.grey, thickness: 1),
                      Container(
                        height: Get.height * .07,
                        width: Get.width * .6,
                        child: Center(
                          child: TextField(
                            controller: dateController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Select Date',
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate(context);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height * .04),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  onPressed: () {},
                  child: Container(
                    child: const Text(
                      'Submit Data',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        dateController.text = picked.toString().split(' ')[0];
      });
    }
  }
}
