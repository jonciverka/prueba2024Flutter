import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url extends StatelessWidget {
  final String url;
  const Url({super.key, required this.url});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(Uri.parse(url));
      },
      child: Text(
        url,
        style: _style.copyWith(
            fontSize: 13, color: const Color.fromARGB(255, 21, 92, 150)),
      ),
    );
  }
}
