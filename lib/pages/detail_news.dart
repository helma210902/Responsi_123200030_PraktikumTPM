import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

class DetailNews extends StatelessWidget {
  final String? link;
  final String? title;
  final String? pubDate;
  final String? description;
  final String? thumbnail;
  const DetailNews(
      {Key? key,
      required this.link,
      required this.title,
      required this.pubDate,
      required this.description,
      required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateTime = DateFormat.yMMMMEEEEd().format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Text("CNN News"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "${title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text("$dateTime")),
            SizedBox(height: 10),
            Image.network("${thumbnail}"),
            SizedBox(height: 15),
            Text(
              "${description}",
              textAlign: TextAlign.justify,
            ),
            TextButton(
                onPressed: () async {
                  await urlLaunch("${link}");
                },
                child: Text(
                  "Baca Selengkapnya...",
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }

  Future<void> urlLaunch(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
