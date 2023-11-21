import 'package:flutter/material.dart';

class FAQsScreen extends StatelessWidget {
  FAQsScreen({super.key});

  final questions = [
    {
      'question': 'Q: Who can donate blood?',
      'answer':
          'Ans: Most healthy individuals aged 17 to 75 (age requirements may vary) and weighing at least 110 pounds are eligible. Specific eligibility criteria may apply'
    },
    {
      'question': 'Q: How often can I donate blood?',
      'answer':
          'Ans: Whole blood donors can usually donate after 90 days. However, the frequency may vary depending on the donation type (whole blood, platelets, plasma, etc.).'
    },
    {
      'question': 'Q: Min weight for blood donation?',
      'answer':
          'Ans: Yes, donors are typically required to weigh at least 110 pounds.'
    },
    {
      'question': 'Q: Age restrictions for donation?',
      'answer':
          'Ans: Age requirements may vary, but donors are often required to be between 17 and 75 years old. Some locations may have different age limits.'
    },
    {
      'question': 'Q: Medical conditions and medication?',
      'answer':
          'Ans: It depends on the condition and medication. Some conditions and medications may disqualify you from donating, so its important to inform the staff during the screening process.'
    },
    {
      'question': 'Q: How long is the donation process?',
      'answer':
          'Ans: The entire process, including registration, screening, and donation, typically takes about 1 to 1.5 hours.'
    },
    {
      'question': 'Q: Travel or vaccine impact on donation?',
      'answer':
          'Ans: Travel and recent vaccinations may have specific guidelines. Check with the blood donation center for the most accurate information.'
    },
    {
      'question': 'Q: Tattoos or piercings impact on donation?',
      'answer':
          'Ans: In most cases, recent tattoos or piercings may defer your donation for a certain period. Guidelines may vary.'
    },
    {
      'question': 'Q: Know my blood type after donation?',
      'answer':
          'Ans: Yes, many blood donation centers provide donors with their blood type after donation upon request.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FAQs Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            final question = questions[index]['question'];
            final answer = questions[index]['answer'];
            return Column(
              children: [
                ExpansionTile(
                  collapsedBackgroundColor: Colors.grey,
                  title: Text(
                    question!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        answer!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Add a SizedBox for separation
              ],
            );
          },
        ),
      ),
    );
  }
}
