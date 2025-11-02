import 'package:flutter/material.dart';
import 'package:mi_card/src/widgets/app_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const phonNumber = '+031 1234 5678';
  static const email = 'noh@email.com';
  static const address = 'https://github.com/noh123456';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/dog.png'),
              ),
              Text(
                'NohYam',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              AppCard(
                icon: Icons.phone,
                text: phonNumber,
                onTap: () async {
                  final url = Uri.parse('tel:$phonNumber');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Could not call call');
                  }
                },
              ),
              AppCard(
                icon: Icons.email,
                text: email,
                onTap: () async {
                  final url = Uri(
                    scheme: 'mailto',
                    path: email,
                    query: 'subject=Hello&body=How are you?',
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Could not send mail');
                  }
                },
              ),
              AppCard(
                icon: Icons.code,
                text: address,
                onTap: () async {
                  final url = Uri.parse(address);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Could not launch $url');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
