import 'package:flutter/material.dart';
import 'screen_one.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
      child:  Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF115976),
        child: Container(
          padding: EdgeInsets.only(left: 0,top: 50,right: 0,bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text(
                    'World Ozone Day 2021',
                  style: TextStyle(
                    fontFamily: 'Dosis',
                    fontStyle: FontStyle.normal,
                    fontSize: 22.0,
                    height: 60.0 / 44.0,
                    letterSpacing: 0.01,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 25,),
                Text('Let’s Preserve the',
                  style: TextStyle(
                    fontFamily: 'Dosis',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                    height: 60.0 / 44.0,
                    letterSpacing: 0.01,
                    color: Colors.white,
                ),
               ),
                Text('Ozone Layer',
                  style: TextStyle(
                    fontFamily: 'Dosis',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                    height: 60.0 / 44.0,
                    letterSpacing: 0.01,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenOne())
                      );
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      backgroundColor: MaterialStateProperty.all(Color(0xFFEA5A42)),
                      fixedSize: MaterialStateProperty.all(Size(220,70)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      )
                    ),
                    child: Text(
                        'Get Started',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    )
                ),
                Expanded(child: SizedBox(height: 1,)),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset('images/bg1.png'),
                  ),

                )

              ],
          ),
        ),
      ),
      )
    );
  }
}
