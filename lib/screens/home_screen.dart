import 'package:beework_coworking/screens/marketplace_screen.dart';
import 'package:beework_coworking/screens/reservas_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [
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
              height: screenSize.height*0.88,
              width: screenSize.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
              ),
              child: Column(
                children: [
            
                  SizedBox(
                    height: screenSize.height*0.1,
                  ),
                  Text("BIENVENIDO",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),)
                  ,
                  SizedBox(
                    height: screenSize.height*0.1,
                  ),
                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReservasScreen()));
                    },
                    icon: const Icon(Icons.book),
                    label: const Text("Reserva",style: TextStyle(fontSize: 18,color: Colors.amber,fontWeight: FontWeight.bold),)
                  ),
            
                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
            
                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MarketplaceScreen()));
                    },
                    icon: const Icon(Icons.trolley),
                    label: const Text("Market Place",style: TextStyle(fontSize: 18,color: Colors.amber,fontWeight: FontWeight.bold),)
                  ),
            
                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TrolleyScreen()));
                    },
                    icon: const Icon(Icons.payment),
                    label: const Text("Pago",style: TextStyle(fontSize: 18,color: Colors.amber,fontWeight: FontWeight.bold),)
                  ),
      
                  SizedBox(
                    height: screenSize.height*0.15,
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
                ],
              ),
            ),
          ),
      ),
    );
  }
}