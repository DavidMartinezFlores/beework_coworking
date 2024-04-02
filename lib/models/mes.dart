import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Mes extends StatefulWidget {
  String mes;
  double value;
    Mes({super.key,required this.mes,required this.value});

  @override
  State<Mes> createState() => _MesState();
}

class _MesState extends State<Mes> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<TrollyProvider>();
    var screenSize = MediaQuery.of(context).size;
    return  
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
              
              });
             
            }
            else
            {
              
              setState(() {
               
              });
             
            }
          },
          title: Text(widget.mes,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
          children: [
            Container(
              width: screenSize.width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
              ),
              child: Column(
                children: [
                  Text("Estás seleccionando el mes de ${widget.mes}, pulsa en el botón confirmar"),
                  SizedBox(
                    height: screenSize.height*0.01,
                  ),
            
                  FilledButton.icon(
                    style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.black)
                    ),
                    onPressed: () {
                      showDialog(
                        //if set to true allow to close popup by tapping out of the popup
                        barrierDismissible: true, 
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          title: Center(child: Text("CONFIRMAR",style: TextStyle(color: const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                          content: Text(textAlign: TextAlign.justify,"Desas reservar el mes de ${widget.mes} por ${widget.value}€ ?"),
                          actions: [
                            TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                              provider.addCarrito(widget.value);
                              print("added");
                              Navigator.pop(context);


                              showDialog(
                                barrierDismissible: true, 
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                  title: Center(child: Text("RESERVADO",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                                  content: Text(textAlign: TextAlign.justify,"Reservado mes ${widget.mes} por ${widget.value}€ exitosamente"),
                                  actions: [
                                    TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                      Navigator.pop(context);
                                    },),
                                  ],
                                  elevation: 24,
                                ),
                              );


                            },),
                            TextButton(child: Text("Cancelar",style: TextStyle(color: Color.fromARGB(255, 122, 0, 0))), onPressed: () {
                              Navigator.pop(context);
                            },)
                          ],
                          elevation: 24,
                        ),
                      );
                      
                    },
                    icon: const Icon(Icons.payments_outlined),
                    label: const Text("Confirmar",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
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
      );
  }
}