import 'package:beework_coworking/models/anuncio.dart';
import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PagoScreen extends StatelessWidget {
  const PagoScreen({super.key});

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                          
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
                    Text("SELECCIONA",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),)
                    ,
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
              
                    Text("Importe: ${provider.valorCarrito}€",style: TextStyle(color: const Color.fromARGB(255, 24, 24, 24),fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
              
                    GestureDetector(
                      onTap: () {
                        provider.delAll();
                        showDialog(
                          barrierDismissible: true, 
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            title: Center(child: Text("PAGADO",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                            content: Text("Pago realizado con exito (VISA/TARJETA)"),
                            actions: [
                              TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                Navigator.pop(context);
                              },),
                            ],
                            elevation: 24,
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.87,
                        decoration:  
                          BoxDecoration(
                            boxShadow: [
                              boxShadow
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 247, 247, 247)
                          ),
                        child: Column(
                          children: [
                            SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.86,
                              height: MediaQuery.of(context).size.height*0.2,
                              decoration:  
                              BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(image: AssetImage("assets/images/visa.png"),fit:BoxFit.cover),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.82,
                              child: Column(
                                children: [
                                  Text(textAlign: TextAlign.justify,"VISA / TARJETA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height*0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.delAll();
                        showDialog(
                          barrierDismissible: true, 
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            title: Center(child: Text("PAGADO",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                            content: Text("Pago realizado con exito (PAYPAL)"),
                            actions: [
                              TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                Navigator.pop(context);
                              },),
                            ],
                            elevation: 24,
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.87,
                        decoration:  
                          BoxDecoration(
                            boxShadow: [
                              boxShadow
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 247, 247, 247)
                          ),
                        child: Column(
                          children: [
                            SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.86,
                              height: MediaQuery.of(context).size.height*0.2,
                              decoration:  
                              BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(image: AssetImage("assets/images/paypal.jpg"),fit:BoxFit.cover),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.82,
                              child: Column(
                                children: [
                                  Text(textAlign: TextAlign.justify,"PAYPAL",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                          
                        ),
                      ),
                    ),
                    
                    SizedBox( 
                      height: screenSize.height*0.09,
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
      ),
    );
  }
}