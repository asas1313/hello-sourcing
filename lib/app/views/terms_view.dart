import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TermsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    text: '⦁ Terms\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text:
                              'HelloSourcing’s website, « Site », is edited by  Hello Sourcing Co., Ltd, a legal company registered in Thailand at  88/204 The Plant Prestige, Mu5, Baan Mai, Pakkret, 11110 Nonthaburi Thailand and whose tax ID is 01255633017299\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Contacts :\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Service : contact@hellosourcing.asia\nAdmin : admin@hellosourcing.asia\nPhone : +66 9 74 91 54 28\nPublishing rights are ended over to Modernios informacines Technologijos, UAB.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Hosting\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Hosting is managed by Modernios Informacines Technologijos, UAB.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Personal Information (PI)\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Regarding PI’s management, please refer to our confidentiality policy\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: '⦁ Confidentiality Policy\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'This Policy covers the way the Site collects, uses, saves and shares information collected about its Users.\nThis Policy applies to the Site and to the services offered by Hello Sourcing.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Personal identification information\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'We may collect personally identifiable information from Users in a variety of ways, including, but not limited to, when Users visit our site, register on the Site, place an order, subscribe to the newsletter and other activities, services, features or resources that we make available on our site.\nUsers may be required to provide, where applicable, name, email address, mailing address and telephone number, especially if they wish to contact us. Users can, however, visit our Site anonymously.\nWe only collect personally identifiable information from Users who voluntarily provide that information to us. Users can always refuse to provide personally identifiable information, which could prevent them from accessing certain parts of the Site.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Non-personal identification information\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'We may collect non-personal identifying information about Users when they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about the means of use of Users on our Site, such as the operating system and Internet service providers used and other similar.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'information.Cookies from the web browser\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Our Site uses "cookies" to improve the User Experience. Users'
                              ' browsers place cookies on their hard drive in order to keep records and sometimes to track information about them. Users can choose to configure their browser to refuse cookies or to be notified when cookies are sent. If they do, please note that some parts of the Site may not function properly.',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'How we use the information we collect\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Hello Sourcing collects and uses personal information from users for the following purposes:\n- Improve customer service\n- Information helps us to respond more effectively to customer service requests and identified needs.\n- Personalize the user experience (UX)\nWe may use the information in an aggregate fashion to measure how our Users, as a group, use the services and resources made available on our Site.\n- To improve our Site.\nWe want to continuously improve the offer presented on our Site thanks to the information and feedback you receive from you.\n- To send emails.\nIf at any time the User wishes to unsubscribe from the newsletter, we include at the bottom of each email the instructions for unsubscribing. The User can also contact us for this purpose through our Site.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'How we protect your information\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'We use best practices in terms of information collection, storage and use and we adopt the necessary security measures to prevent unauthorized access attempts, modifications, dissemination or destruction of your personal data.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Sharing your personal information\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'We do not sell, trade, or rent personal identifying information to other people. We may share aggregate generic demographic information that is not linked to any personally identifiable information about Visitors and Users with our business partners, trusted affiliates and advertisers for the purposes described above. We may use third party vendors to help us run our business and the Site or to administer activities on our behalf, such as sending newsletters or surveys (example: sendinblue / Mailerlite ...).\nWe may have to share your information with these third parties for these particular services, taking into account that you have authorized us to do so.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Update of this policy\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Hello Sourcing can update this policy at any time\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Your acceptance of this Policy \n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'By using this Site, you confirm that you accept this Policy as well as the Terms. If you don’t ant to accept this policy, kindly stop using this Site. By using this Site after any change of the Policy, you acknowledge its changes.\n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Contact us\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'If you have some question about this Policy, feel free to to contact us at :\nadmin@hellosourcing.asia \n\n',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
