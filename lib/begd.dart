import 'package:begd/core/config/theme/colors/dark_theme.dart';
import 'package:begd/core/config/theme/colors/light_theme.dart';
import 'package:begd/core/routing/app_router.dart';
import 'package:begd/core/routing/routes.dart';
import 'package:begd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

class BegdApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  BegdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'بِجَدّ وَلّا هَبْد؟',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.system,
          navigatorKey: AppRouter.navigatorKey,
          initialRoute: Routes.onBoarding,
          onGenerateRoute: appRouter.generateRoute,
          locale: const Locale('ar', 'EG'),
          supportedLocales: const [Locale('ar', 'EG')],
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback:
              (locale, supportedLocales) => const Locale('ar', 'EG'),
        ),
      ),
    );
  }
}
