import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> chechUrl(context, url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Cannot Launch ${uri}")));
  }
}
