import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrolleyScreen extends StatelessWidget {
  const TrolleyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<TrollyProvider>();
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
                  Text("CARRITO",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),)
                  ,
                  SizedBox(
                    height: screenSize.height*0.1,
                  ),

                  Text("Valor actual: ${provider.valorCarrito}€",style: TextStyle(color: const Color.fromARGB(255, 24, 24, 24),fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),

                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.monetization_on),
                    label: const Text("Realizar Pago",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                  ),
                  SizedBox(
                    height: screenSize.height*0.1,
                  ),
                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      provider.delAll();
                    },
                    icon: const Icon(Icons.cancel),
                    label: const Text("Vaciar carrito",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
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
                    title: Text("BeeWork Cooworking"),
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