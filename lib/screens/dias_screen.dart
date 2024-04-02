import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var dateTime = DateTime.now();
// ignore: must_be_immutable
class DiasScreen extends StatefulWidget {
  double valorMonetario;
    DiasScreen({super.key,required this.valorMonetario});

  @override
  State<DiasScreen> createState() => _DiasScreenState();
}

class _DiasScreenState extends State<DiasScreen> {
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
                height: screenSize.height,
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
                      Text("SELECCIONE UN DIA",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
                      
                      SizedBox(
                        height: screenSize.height*0.1,
                      ),

                      Text("Dia seleccionado: ${dateTime.day}/${dateTime.month}/${dateTime.year}",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
                      // --- BOTON CAMBIAR FECHA ---
                      FilledButton.icon(
                        onPressed: () {
                          Container();
                          showCupertinoModalPopup(
                              barrierColor:  Theme.of(context).secondaryHeaderColor.withOpacity(0.3),
                              context: context,
                              builder: (context) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                                  color:  Theme.of(context).secondaryHeaderColor.withOpacity(0.9)
                                ),
                                height: screenSize.height*0.5,
                                child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      initialDateTime: DateTime.now(),
                                      onDateTimeChanged: (value) {
                                        setState(() {
                                          dateTime = value;
                                        });
                                      },
                                    ),
                              ));
                        },
                        style: const ButtonStyle(
                          backgroundColor:MaterialStatePropertyAll(Colors.black)
                        ),
                        icon: const Icon(Icons.calendar_month),
                        label: const Text(
                          "Cambiar Fecha",
                          style: TextStyle(
                              fontSize: 15,color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height*0.1,
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
                              content: Text(textAlign: TextAlign.justify,"Desas reservar el día de ${dateTime.day}/${dateTime.month}/${dateTime.year} por ${widget.valorMonetario}€ ?"),
                              actions: [
                                TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                  provider.addCarrito(widget.valorMonetario);
                                  print("added");
                                  Navigator.pop(context);


                                  showDialog(
                                    barrierDismissible: true, 
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                      title: Center(child: Text("RESERVADO",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                                      content: Text(textAlign: TextAlign.justify,"Reservado día ${dateTime.day}/${dateTime.month}/${dateTime.year} por ${widget.valorMonetario}€ exitosamente"),
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
                        ]),

                    
                  ),
                ),
              ),
            ),
        );
  }
}