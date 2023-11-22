import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.indigo, // Modern color scheme
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(70, 90, 70, 10),
                child: Image(image: AssetImage('images/vec.jpg')),
              ),
              const SizedBox(height: 20),
              const Text(
                'SmartDzala',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'At SmartDzala, we are passionate about creating a cleaner, greener future for our communities. With the increasing challenges in waste management, we have developed a cutting-edge Smart Garbage Monitoring System designed to revolutionize how we handle waste.',
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _launchUrl('mailto:sithewed@gmail.com');
                    },
                    child: const Icon(
                      Icons.mail,
                      color: Colors.indigo,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      _launchUrl('tel:+265888320672');
                    },
                    child: const Icon(
                      Icons.phone,
                      color: Colors.indigo,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//void main() => runApp(MaterialApp(home: AboutUsPage()));
