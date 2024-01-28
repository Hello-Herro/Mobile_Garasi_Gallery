import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_btw/dependency_injection.dart';
import 'package:my_app_btw/src/config/constants/strings.dart';
import 'package:my_app_btw/src/config/resources/get_platform.dart';
import 'package:my_app_btw/src/config/router/router.dart';
import 'package:my_app_btw/src/config/theme/app_themes.dart';
import 'package:my_app_btw/src/feature/auth/presentasion/cubit/login/login_cubit.dart';
import 'package:oktoast/oktoast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencies();
  initializeBlocDependencies();
  initializePlatform();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<LoginCubit>(),
        ),
      ],
      child: OKToast(
        child: MaterialApp.router(
          title: appTitle,
          theme: mainTheme,
          routerDelegate: appRouter.router.routerDelegate,
          routeInformationProvider: appRouter.router.routeInformationProvider,
          routeInformationParser: appRouter.router.routeInformationParser,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
