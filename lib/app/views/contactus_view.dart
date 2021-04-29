import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsView extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final questionController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: FittedBox(
        fit: BoxFit.contain,
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) => Container(
            padding: EdgeInsets.all(20),
            color: backgroundColor,
            width: sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Get.width
                : Get.width / 1.5,
            height: 600,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 25),
                TextContainerNormal(text: 'Contact Form'),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: 'Name: ',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: 'E-mail: ',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                TextFormField(
                  controller: questionController,
                  decoration: InputDecoration(
                      labelText: 'Question: ',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: messageController,
                  decoration: InputDecoration(
                      labelText: 'Message: ',
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 25),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: Get.width / 4),
                  child: ElevatedButton(
                      onPressed: () => sendMessage(), child: Text('SUBMIT')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendMessage() {
    if (!emailController.text.isEmail ||
        (questionController.text.isEmpty && messageController.text.isEmpty)) {
      Get.snackbar(
        'Error',
        'Please provide your e-mail and question or message!',
        backgroundColor: Colors.red,
      );
      return null;
    }
    FirebaseFirestore.instance.collection('mail').add({
      'to': 'sylvain@hellosourcing.asia',
      'message': {
        'from': emailController.text,
        'subject': nameController.text + ' sent a message for You',
        'html': 'Name: ' +
            nameController.text +
            '.<br/>E-mail: ' +
            emailController.text +
            '.<br/>Question: ' +
            questionController.text +
            '.<br/>Message: ' +
            messageController.text,
      },
    }).then((value) {
      Get.snackbar('Information', 'Message sent.');
      emailController.text = '';
      nameController.text = '';
      questionController.text = '';
      messageController.text = '';
    }).catchError((error) {
      print("Failed to save email: $error");
    });
    Get.back();
  }
}
