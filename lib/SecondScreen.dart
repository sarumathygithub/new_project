import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_s/ProviderScreen/provider_Screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                  Main.Decrement();
              },
              child: Text('Decrement'),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                Navigator.pop(context);
                },
                child: Text('First Screen')
            ),
          ],
        ),
      ),
    );
  }
}
