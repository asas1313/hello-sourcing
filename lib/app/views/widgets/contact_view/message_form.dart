import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

class MessageForm extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final questionController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: backgroundColor,
        width: 800,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextContainerHeading(text: 'Contact Form'),
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
            ElevatedButton(
                onPressed: () => sendMessage(), child: Text('SUBMIT'))
          ],
        ),
      ),
    );
  }

  void sendMessage() {
    FirebaseFirestore.instance.collection('mail').doc().set({
      'to': 'a.riauba@gmail.com',
      'message': {
        'from': emailController.text,
        'reply-to': emailController.text,
        'subject': nameController.text,
        'html': 'Question: ' +
            questionController.text +
            '.</br>' +
            messageController.text,
      },
    }).then((value) {
      Get.snackbar('Information', 'Message sent.');
    });
    Get.back();
  }
}
