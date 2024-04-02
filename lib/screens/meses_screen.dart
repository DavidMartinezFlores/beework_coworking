import 'package:beework_coworking/models/Mes.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MesesScreen extends StatefulWidget {
  double valorMonetario;
    MesesScreen({super.key,required this.valorMonetario});

  @override
  State<MesesScreen> createState() => _MesesScreenState();
}

class _MesesScreenState extends State<MesesScreen> {
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            color: Colors.orange,
            icon: Icon(Icons.home)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrolleyScreen(),));
            },
            color: Colors.orange,
            icon: Icon(Icons.trolley)
          )
        ],
          toolbarHeight: screenSize.height*0.09,
          leading: Image.asset("assets/images/beeWorkLogo.png"),
          backgroundColor: Colors.black,
          title: const Center(child: Text("Beework Coworking",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),)
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
                height: screenSize.height+screenSize.height*0.25,
                width: screenSize.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                
                      SizedBox(
                        height: screenSize.height*0.1,
                      ),
                      Text("MESES DISPONIBLES",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
                    
                    
                      // ----- ENERO ----
                      Mes(mes:"Enero",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Febrero ----
                      Mes(mes:"Febrero",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Marzo ----
                      Mes(mes:"Marzo",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Abril ----
                      Mes(mes:"Abril",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Mayo ----
                      Mes(mes:"Mayo",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Junio ----
                      Mes(mes:"Junio",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Julio ----
                      Mes(mes:"Julio",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Agosto ----
                      Mes(mes:"Agosto",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Septiembre ----
                      Mes(mes:"Septiembre",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Octubre ----
                      Mes(mes:"Octubre",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Noviembre ----
                      Mes(mes:"Noviembre",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                
                      // ----- Diciembre ----
                      Mes(mes:"Diciembre",value: widget.valorMonetario,),
                
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),
                      
                      ListTile(
                        leading: 
                          Container(
                            width: screenSize.width*0.25,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/beeWorkLogo.png"),fit:BoxFit.cover),
                            ),
                          ),
                        title: Text("BeeWork Coworking"),
                        subtitle: Text("Corredera Capuchinos Nº20\nAndújar, Jaén"),
                      )
                    ]
                  ),
                ),
              ),
            ),
        ),
    );
  }
}