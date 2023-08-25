import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});


  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

   int count = 0;
   String entrar = "";

  void decremente(){
    setState(() {
      count--;

      if(count >= 0 ){
       
       entrar = "Mesas livres";
      
    }
    });
    
  }
  void increment(){

  setState(() {
  count++;
    });

    if(count >= 12){
      entrar =  "Capacidade máxima atingida !!! ";
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.black,
            body:Container(

              decoration: const BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("imagem/restaurant.png"),
                  fit: BoxFit.cover
                  )
              ),

              child:Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pode entrar!", style: TextStyle(fontSize: 30,color: Colors.pink),),
                Text(count.toString(),style: TextStyle(fontSize: 100,color: Color.fromARGB(255, 220, 222,100))),
                Text(entrar.toString(),style: TextStyle(fontSize: 100,color: Color.fromARGB(255, 220, 222,100))),

                //Text("0",style: TextStyle(fontSize: 100, color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  TextButton( onPressed: decremente,
                  style: TextButton.styleFrom(
                     backgroundColor: Colors.white,
                     fixedSize: Size(100,100),
                     shape: RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(24)
                     )
                     ),
                  child: Text("Saiu",style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),

                  SizedBox(width:64,),

                  TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                     backgroundColor: Colors.white,
                     fixedSize: Size(100,100),
                     shape: RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(24)
                     )
                     ),
                    child: Text("Entrou",style: TextStyle(fontSize: 16, color: Colors.black)),
                    )
                ],)
              ],
          
            )  ),
          ));
  }
}

