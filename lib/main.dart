import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/firebase.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/router.dart';

import 'core/services/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Log.setupLogger();
  await Firebase.initializeApp();
  await LocalStorage().init();
  runApp(Application(
    appRouter: AppRouter(),
    firebaseServices: FirebaseServices(),
    localStorage: LocalStorage(),
    repository: ApplicationRepository(),
  ));
}

class Application extends HookWidget {
  final AppRouter appRouter;
  final FirebaseServices firebaseServices;
  final LocalStorage localStorage;
  final ApplicationRepository repository;
  const Application({
    Key? key,
    required this.appRouter,
    required this.firebaseServices,
    required this.localStorage,
    required this.repository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      firebaseServices.init(context);
    }, []);
    return RepositoryProvider.value(
      value: repository,
      child: BlocProvider<AuthenticationCubit>(
        create: (context) => AuthenticationCubit(),
        child: MaterialApp(
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
