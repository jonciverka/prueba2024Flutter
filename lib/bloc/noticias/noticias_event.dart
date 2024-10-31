import 'package:flutter/material.dart';

abstract class NoticiasEvent {}

class NoticiasGetList extends NoticiasEvent {
  final BuildContext context;
  NoticiasGetList({
    required this.context,
  });
}

class NoticiasChangeCustomer extends NoticiasEvent {
  final bool customerChanged;
  NoticiasChangeCustomer({
    required this.customerChanged,
  });
}
