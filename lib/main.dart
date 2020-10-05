import 'package:Sepetim/injection.dart';
import 'package:Sepetim/presentation/core/app_widget.dart';
import 'package:Sepetim/presentation/home/item/form/misc/form_link_objects.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();

  runApp(
    ChangeNotifierProvider(
        create: (_) => FormLinkObjects(), child: const AppWidget()),
  );
}
