import 'package:contact_us/reusable_widgets/reg_form_validation_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegScreenValidationTask extends StatefulWidget {
  const RegScreenValidationTask({super.key});

  @override
  State<RegScreenValidationTask> createState() =>
      _RegScreenValidationTaskState();
}

class _RegScreenValidationTaskState extends State<RegScreenValidationTask> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Form Validation Task'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.height * .02),
          child: Column(
            children: [
              const Text("Form Validation",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: Get.height * .04),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    reUsableWidgetRegScreen(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the name';
                          }
                          return null;
                        },
                        fieldIcon: const Icon(Icons.person),
                        lblText: "Name",
                        fieldHintText: "Enter name",
                        fieldController: nameController,
                        inputType: TextInputType.text),
                    SizedBox(height: Get.height * .02),
                    reUsableWidgetRegScreen(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the mail';
                          }
                          RegExp emailRegExp = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (!emailRegExp.hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        fieldIcon: const Icon(Icons.mail),
                        lblText: 'Email',
                        fieldHintText: 'Enter email',
                        fieldController: emailController,
                        inputType: TextInputType.emailAddress),
                    SizedBox(height: Get.height * .02),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter the password';
                        }
                        RegExp emailRegExp =
                            RegExp(r"^(?=.*[a-zA-Z0-9]{6,})[a-zA-Z0-9]*$");
                        if (!emailRegExp.hasMatch(value)) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                      obscureText: hidden,
                      decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: "Enter password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidden = !hidden;
                                });
                              },
                              icon: hidden
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    SizedBox(height: Get.height * .02),
                    reUsableWidgetRegScreen(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the phone No';
                          }
                          RegExp emailRegExp =
                              RegExp(r"^(\+92|0)(3[0-9]{9}|3[0-9]{9})$");
                          if (!emailRegExp.hasMatch(value!)) {
                            return 'Please enter a valid phone No';
                          }
                          return null;
                        },
                        fieldIcon: const Icon(Icons.phone),
                        lblText: 'Phone',
                        fieldHintText: 'Enter phone No',
                        fieldController: phoneController,
                        inputType: TextInputType.phone),
                    SizedBox(height: Get.height * .02),
                    reUsableWidgetRegScreen(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the blood group';
                          }
                          RegExp emailRegExp = RegExp(
                              r"^(A\+|A-|B\+|B-|AB\+|AB-|O\+|O-)$|a\+|a-|Bb\+|b-|ab\+|ab-|o\+|o-");
                          if (!emailRegExp.hasMatch(value)) {
                            return 'Please enter a valid blood group';
                          }
                          return null;
                        },
                        fieldIcon: const Icon(Icons.location_on_outlined),
                        lblText: 'Blood Group',
                        fieldHintText: 'Enter blood group',
                        fieldController: bloodGroupController,
                        inputType: TextInputType.text),
                    SizedBox(height: Get.height * .02),
                    reUsableWidgetRegScreen(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter the location';
                          }
                          return null;
                        },
                        fieldIcon: const Icon(Icons.location_on_outlined),
                        lblText: 'Location',
                        fieldHintText: "Enter location",
                        fieldController: locationController,
                        inputType: TextInputType.text),
                    SizedBox(height: Get.height * .02),
                    SizedBox(
                        width: Get.width,
                        height: Get.height * .08,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: _submitForm,
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            )))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
