import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ordo_flutter/presentation/routes/app_router.dart';

import '../injection.dart';
import 'components/gen/colors.gen.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test Ordo',
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        scaffoldBackgroundColor: ColorName.neutral100,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', ''),
        Locale('en', ''),
      ],
    );
  }
}
