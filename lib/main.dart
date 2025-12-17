import 'package:education/features/home/presentation/home_screen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/main.dart' as tzdata;
import 'package:education/provider/top_button_selection_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await initializeTimeZones();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await GetStorage.init();
  // diSetup();

  // DioSingleton.instance.create();
  //await NotificationService.initialize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => TopButtonSelectionProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // rotation();
    // setInitValue();
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) async {
        // showMaterialDialog(context);
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return const UtillScreenMobile();
        },
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 875),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, _) async {
            // showMaterialDialog(context);
          },
          child: GetMaterialApp(
            initialRoute: '/',
            // theme: ThemeData(
            //   unselectedWidgetColor: Colors.white,
            //   primarySwatch: CustomTheme.kToDark,
            //   useMaterial3: false,
            //   scaffoldBackgroundColor: AppColors.cFFFFFF,
            //   appBarTheme: const AppBarTheme(
            //     backgroundColor: AppColors.cFFFFFF,
            //     elevation: 0,
            //   ),
            // ),
            debugShowCheckedModeBanner: false,
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,

            home: HomeScreen(),
          ),
        );
      },
    );
  }
}

Future<void> initializeTimeZones() async {
  tzdata.initializeTimeZones();
}
