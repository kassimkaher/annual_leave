import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/theme/theme.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/theme.dart';
import 'package:annual_leave/firebase_options.dart';
import 'package:annual_leave/src/apps/annual_leave/logic/annual/annual_leav_cubit.dart';
import 'package:annual_leave/src/apps/annual_leave/user_leaves_page.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/financial_accounts_logic/financial_accounts_cubit.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/prepare_app_page.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/logic/app%20config/app_config_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

Future<void> configureHive() async {
  await Hive.initFlutter();

  Hive.registerAdapter(TransactionModelAdapter());

  Hive.registerAdapter(FinancialTypeAdapter());
  Hive.registerAdapter(FinancialStatusAdapter());
  await LocalDatabase.iniLocalDataBase();
  configureDependencies();
  initializeDateFormatting('en_US', null);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void configureDependencies() {
  registerDependencies();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureHive();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<FinancialAccountsCubit>(
            create: (BuildContext context) =>
                FinancialAccountsCubit()..getTransactionEvent()),
        BlocProvider<AnnualLeavCubit>(
            create: (BuildContext context) => AnnualLeavCubit()..init()),
        BlocProvider<AppConfigCubit>(
            create: (BuildContext context) => AppConfigCubit()..init()),
      ],
      child: MaterialApp(
        title: 'Anual Leave',
        theme: const BaseTheme().themeData,
        navigatorKey: navigatorKey,
        home: const PrepareAppPage(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar'), // English
          Locale('en'), // Spanish
        ],
        locale: const Locale("ar"),
        // home: LocalDatabase.getUser() == null
        //     ? const GoogleLoginPage()
        //     : const UserLeavesPageContent(),
      ),
    );
  }
}

class FinanicailApp extends StatelessWidget {
  const FinanicailApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<FinancialAccountsCubit>(
            create: (BuildContext context) =>
                FinancialAccountsCubit()..getTransactionEvent()),
        BlocProvider<AnnualLeavCubit>(
          create: (context) => AnnualLeavCubit(),
          child: Container(),
        )
      ],
      child: MaterialApp(
        title: 'Financial Accounts',
        theme: getTheme(context, "Somar"),
        navigatorKey: navigatorKey,
        locale: const Locale("ar"),
        // initialRoute: "google_signin",
        // routes: {
        //   "user_leaves": (context) => const UserLeavesPageContent(),
        //   "google_signin": (context) => const GoogleLoginPage(),
        //   "manager_leaves": (context) => const ManagerLeavesPageContent(),
        // },
        home: const UserLeavesPageContent(),
        // home: LocalDatabase.getUser() == null
        //     ? const GoogleLoginPage()
        //     : const UserLeavesPageContent(),
      ),
    );
  }
}
