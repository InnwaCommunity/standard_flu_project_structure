
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_structure/app_config/app_route.dart';
import 'package:project_structure/shared/constant/language.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Preferences().initPreferences();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: Languages.values.map((e) => e.locale).toList(),
      fallbackLocale: Languages.english.locale,
      useFallbackTranslations: true,
      path: 'assets/translations',
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var themeState = ref.watch(themeStateProvider);
  return MaterialApp.router(
      title: 'Flutter Demo',
      // scaffoldMessengerKey: AppGlobals.scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      // themeMode:
      //     themeState == ThemeStatus.light ? ThemeMode.light : ThemeMode.dark,
      // theme: CustomThemeData.buildLightTheme(context),
      // darkTheme: CustomThemeData.buildDarkTheme(context),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: goRouter,
    );
  }
}