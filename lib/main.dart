import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_s/ProviderScreen/provider_Screen.dart';

import 'FirstScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ProviderScreen(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
