import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_s/ProviderScreen/provider_Screen.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

    final Main = Provider.of<ProviderScreen>(context,listen: false);

    return  Scaffold(
      body: Center(
        child: Column(
          children: [

            Consumer<ProviderScreen>(
                builder: (context,Value,child){
                  return Text('Count--- ${Value.count}');
                }),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){
               Main.Increment();
              },
              child: Text('Increment'),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SecondScreen()));
                },
                child: Text('Second Screen')
            ),
          ],
        ),
      ),
    );
  }
}
