
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom list',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Custom list'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0),
        child: SizedBox(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder:(context, index) {
              int i = index + 1;
              String image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${(i*2)-1}.png';
              String image2 = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${i*2}.png';
              return FadeIn(
                duration: const Duration( milliseconds: 500 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:4.0),
                        child: Card(
                          child: Column(
                            children: [
                             Container(
                               margin: const EdgeInsets.only(bottom: 4.0),
                               color: const Color(0xfff2f2f2),
                              //  height: 100.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children:  [
                                  Image.network(image, width: 150,)
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 5.0, bottom:4.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                    const Text('N.°001', style: TextStyle(color: Color(0xff919191), fontWeight: FontWeight.w600 )),
                                    const SizedBox(height: 8.0,),
                                    const Text('Bulbasaur', style: TextStyle(fontWeight: FontWeight.w600 )),
                                    const SizedBox(height: 4.0,),
                                    Row(
                                      children:  [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(0xff9bcc50),
                                            borderRadius: BorderRadius.circular(4.0)
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical:2.0, horizontal: 16.0),
                                            child: Text('Planta'),
                                          )
                                        ),
                                        const SizedBox(width:4.0),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(0xffb97fc9),
                                            borderRadius: BorderRadius.circular(4.0)
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical:2.0, horizontal: 16.0),
                                            child: Text('Veneno', style: TextStyle(color: Colors.white),),
                                          )
                                        ),
                                      ],
                                    )
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:4.0),
                        child: Card(
                          child: Column(
                            children: [
                             Container(
                               margin: const EdgeInsets.only(bottom: 4.0),
                               color: const Color(0xfff2f2f2),
                              //  height: 100.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children:  [
                                  Image.network(image2, width: 150,)
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 5.0, bottom:4.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                    const Text('N.°001', style: TextStyle(color: Color(0xff919191), fontWeight: FontWeight.w600 )),
                                    const SizedBox(height: 8.0,),
                                    const Text('Bulbasaur'),
                                    const SizedBox(height: 4.0,),
                                    Row(
                                      children:  [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(0xff9bcc50),
                                            borderRadius: BorderRadius.circular(4.0)
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical:2.0, horizontal: 16.0),
                                            child: Text('Planta'),
                                          )
                                        ),
                                        const SizedBox(width:4.0),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: const Color(0xffb97fc9),
                                            borderRadius: BorderRadius.circular(4.0)
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical:2.0, horizontal: 16.0),
                                            child: Text('Veneno', style: TextStyle(color: Colors.white),),
                                          )
                                        ),
                                      ],
                                    )
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),
                      ),
                    ),
                  
                  ],
                ),
              );
            }, 
          ),
        ),
      ),
    );
  }
}
