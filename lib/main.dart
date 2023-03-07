import 'package:flutter/material.dart';
import 'package:flutter_routing_management/app/features/my_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child:MyApp()));
}

