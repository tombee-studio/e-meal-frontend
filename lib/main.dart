import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:emeal_app/settings/settings_info.dart';
import 'package:emeal_app/generated/l10n.dart';
import 'package:emeal_app/views/routes/api_router.dart';
import 'package:emeal_app/services/authentication.dart';
import 'package:emeal_app/helper/att_hlper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SettingsInfo().load();
  await initializeDateFormatting();
  await MobileAds.instance.initialize();
  await Authentication().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => ATTHelper().attCheck());
    return MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'e-Meal',
        theme: ThemeData(primarySwatch: Colors.teal),
        onGenerateRoute: ApiRouter().generateRoute,
        initialRoute: '/');
  }
}
