import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri _phoneNumber = Uri(scheme: 'tel', path: '+1234567890'); 

void main() => runApp(
      const MaterialApp(
        home: Material(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /*ElevatedButton(
                  onPressed: _launchUrl,
                  child: Text('Show Flutter homepage'),
                ),*/
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _makePhoneCall,
                  child: Text('Fazer um chamada'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _makePhoneCall() async {
  if (!await launchUrl(_phoneNumber)) {
    throw Exception('Could not make the phone call to $_phoneNumber');
  }
}
