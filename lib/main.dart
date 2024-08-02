import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ordo_flutter/injection.dart';
import 'package:ordo_flutter/presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(kReleaseMode ? Environment.prod : Environment.dev);

  runApp(const AppWidget());
}
