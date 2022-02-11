
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
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) => _CustomCard(index) ),
          ),
        
        ),
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final int i;
  const _CustomCard(this.i) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
               child: Column(
                 children: [
                  _Image(i: i),
                  const _Information()
                 ],
               ),
             );
  }
}

class _Information extends StatelessWidget {
  const _Information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
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
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(bottom: 4.0),
        color: const Color(0xfff2f2f2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           FadeInImage(
             placeholder: const  AssetImage('assets/img/loading.gif'), 
             image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${i + 1}.png'),                                    
           )
          ],
        ),
                               
      ),
    );
  }
}
