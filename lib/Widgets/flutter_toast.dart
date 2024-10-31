import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(BuildContext context, String error,
    {Color colorLetra = Colors.white}) {
  Fluttertoast.showToast(
    msg: error.toString(),
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Theme.of(context).colorScheme.primary,
    textColor: colorLetra,
    fontSize: 16.0,
    timeInSecForIosWeb: 1,
    webShowClose: true,
    webBgColor: "#eb0400",
    webPosition: "center",
  );
}
