import 'package:beework_coworking/screens/dias_screen%20horas.dart';
import 'package:beework_coworking/screens/dias_screen.dart';
import 'package:beework_coworking/screens/five_dias_screen.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/meses_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/material.dart';

var expansionTileSizeExtra = 0.0;

class ReservasScreen extends StatefulWidget {
  const ReservasScreen({super.key});

  @override
  State<ReservasScreen> createState() => _ReservasScreenState();
}

class _ReservasScreenState extends State<ReservasScreen> {
  
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    

    return WillPopScope(
      onWillPop: () {
        setState(() {
          screenSize = MediaQuery.of(context).size;
          expansionTileSizeExtra=0.0;
        });

        return Future.delayed(Duration.zero,() {
          return true;
        },);
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
            onPressed: () {
              setState(() {
                screenSize = MediaQuery.of(context).size;
                expansionTileSizeExtra=0.0;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            color: Colors.orange,
            icon: Icon(Icons.home)
          ),
            IconButton(
              onPressed: () {
                setState(() {
                  screenSize = MediaQuery.of(context).size;
                  expansionTileSizeExtra=0.0;
                });
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
                height: screenSize.height*0.88+expansionTileSizeExtra,
                width: screenSize.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                ),
                child: Column(
                  children: [
    
                    SizedBox(
                      height: screenSize.height*0.1,
                    ),
                    Text("RESERVAS",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
    
    
                    // ----- FELXIBLE ----
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Alquiler Escritorio Flexible",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("155€ Mes Completo"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MesesScreen(valorMonetario: 155,),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- FIJO ----
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Alquiler Escritorio Fijo",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("220€ Mes Completo"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MesesScreen(valorMonetario:220),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- BONO ---
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.32;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.32;
                            });
                          }
                        },
                        title: const Text("Bonos Escritorio por dia",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: ExpansionTile(
                              title: const Text("Bonos por 1 dia",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                              children: [
                                Container(
                                  width: screenSize.width*0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                                  ),
                                  child: Column(
                                    children: [
                                      Text("20€ Bono de 1 día"),
                                      SizedBox(
                                        height: screenSize.height*0.01,
                                      ),
                                
                                      FilledButton.icon(
                                        style: const ButtonStyle(
                                          backgroundColor:MaterialStatePropertyAll(Colors.black)
                                        ),
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => DiasScreen(valorMonetario: 20),));
                                        },
                                        icon: const Icon(Icons.payments_outlined),
                                        label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                      ),
                                      SizedBox(
                                        height: screenSize.height*0.01,
                                      ),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: ExpansionTile(
                              title: const Text("Bonos por 5 dias",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                              children: [
                                Container(
                                  width: screenSize.width*0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                                  ),
                                  child: Column(
                                    children: [
                                      Text("80€ Bono de 5 días"),
                                      SizedBox(
                                        height: screenSize.height*0.01,
                                      ),
                                
                                      FilledButton.icon(
                                        style: const ButtonStyle(
                                          backgroundColor:MaterialStatePropertyAll(Colors.black)
                                        ),
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => FiveDiasScreen(valorMonetario: 80),));
                                        },
                                        icon: const Icon(Icons.payments_outlined),
                                        label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                      ),
                                      SizedBox(
                                        height: screenSize.height*0.01,
                                      ),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- DESPACHO PRIVADO ----
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Alquiler despacho privado",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("350€ Mes Completo"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MesesScreen(valorMonetario:350),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- DOMICILIACION FISCAL ---
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Domiciliación Fiscal",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("30€ Mes Completo"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MesesScreen(valorMonetario:30),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- ATENCION LLAMADAS CLIENTES ---
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Atención de llamadas de Clientes",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("50€ Mes Completo"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MesesScreen(valorMonetario:50),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
    
                    SizedBox(
                      height: screenSize.height*0.01,
                    ),
    
                    // --- SALA REUNION ---
                    Container(
                      width: screenSize.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if(value)
                          {
                            
                            setState(() {
                              expansionTileSizeExtra+=screenSize.height*0.13;
                            });
                          }
                          else
                          {
                            
                            setState(() {
                              expansionTileSizeExtra-=screenSize.height*0.13;
                            });
                          }
                        },
                        title: const Text("Alquiler sala de reunión",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        children: [
                          Container(
                            width: screenSize.width*0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
                            ),
                            child: Column(
                              children: [
                                Text("30€ Cada hora"),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                          
                                FilledButton.icon(
                                  style: const ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.black)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => DiasScreenHoras(valorMonetario: 30),));
                                  },
                                  icon: const Icon(Icons.payments_outlined),
                                  label: const Text("Reservar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ),
                                SizedBox(
                                  height: screenSize.height*0.01,
                                ),
                              ],
                            ),
                          ),
                    
                          SizedBox(
                            height: screenSize.height*0.01,
                          ),
                        ],
                      ),
                    ),
    
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