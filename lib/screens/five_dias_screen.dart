import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var dateTime1 = DateTime.now();
var dateTime2 = DateTime.now();
var dateTime3 = DateTime.now();
var dateTime4 = DateTime.now();
var dateTime5 = DateTime.now();

// ignore: must_be_immutable
class FiveDiasScreen extends StatefulWidget {
  double valorMonetario;
    FiveDiasScreen({super.key,required this.valorMonetario});

  @override
  State<FiveDiasScreen> createState() => _FiveDiasScreenState();
}

class _FiveDiasScreenState extends State<FiveDiasScreen> {
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
                      Text("SELECCIONE SUS 5 DIAS",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
                      
                      SizedBox(
                        height: screenSize.height*0.01,
                      ),

                      Text("Dia seleccionado 1: ${dateTime1.day}/${dateTime1.month}/${dateTime1.year}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 18,fontStyle:FontStyle.italic),),
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
                                          dateTime1 = value;
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
                        height: screenSize.height*0.01,
                      ),

                      Text("Dia seleccionado 2: ${dateTime2.day}/${dateTime2.month}/${dateTime2.year}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 18,fontStyle:FontStyle.italic),),
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
                                          dateTime2 = value;
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
                        height: screenSize.height*0.01,
                      ),


                      Text("Dia seleccionado 3: ${dateTime3.day}/${dateTime3.month}/${dateTime3.year}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 18,fontStyle:FontStyle.italic),),
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
                                          dateTime3 = value;
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
                        height: screenSize.height*0.01,
                      ),

                      Text("Dia seleccionado 4: ${dateTime4.day}/${dateTime4.month}/${dateTime4.year}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 18,fontStyle:FontStyle.italic),),
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
                                          dateTime4 = value;
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
                        height: screenSize.height*0.01,
                      ),

                      Text("Dia seleccionado 5: ${dateTime5.day}/${dateTime5.month}/${dateTime5.year}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 18,fontStyle:FontStyle.italic),),
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
                                          dateTime5 = value;
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


                      // --- CONFIRMAR ---
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
                              content: Text(textAlign: TextAlign.justify,
                              "Desas reservar los días:\n${dateTime1.day}/${dateTime1.month}/${dateTime1.year}\n${dateTime2.day}/${dateTime2.month}/${dateTime2.year}\n${dateTime3.day}/${dateTime3.month}/${dateTime3.year}\n${dateTime4.day}/${dateTime4.month}/${dateTime4.year}\n${dateTime5.day}/${dateTime5.month}/${dateTime5.year}\npor ${widget.valorMonetario}€ ?"),
                              actions: [
                                TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                  
                                  if(!diasIguales())
                                  {
                                    provider.addCarrito(widget.valorMonetario);
                                    print("added");
                                    Navigator.pop(context);


                                    showDialog(
                                      barrierDismissible: true, 
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                        title: Center(child: Text("RESERVADOS",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                                        content: Text(textAlign: TextAlign.justify,"Días reservados por ${widget.valorMonetario}€ exitosamente"),
                                        actions: [
                                          TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                            Navigator.pop(context);
                                          },),
                                        ],
                                        elevation: 24,
                                      ),
                                    );
                                  }
                                  else
                                  {
      
                                    Navigator.pop(context);


                                    showDialog(
                                      barrierDismissible: true, 
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                        title: Center(child: Text("ERROR",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                                        content: Text(textAlign: TextAlign.justify,"Asegurese de que todos los días son diferentes"),
                                        actions: [
                                          TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                            Navigator.pop(context);
                                          },),
                                        ],
                                        elevation: 24,
                                      ),
                                    );
                                  }
                                  


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
                        title: Text("BeeWork Coworking"),
                        subtitle: Text("Corredera Capuchinos Nº20\nAndújar, Jaén"),
                      )
                        ]),

                    
                  ),
                ),
              ),
            ),
        );
  }
  
  bool diasIguales() {
    
    if(dateTime1==dateTime2 || dateTime1==dateTime3 || dateTime1==dateTime4 || dateTime1==dateTime5)
    {
      return true;
    }
    if(dateTime2==dateTime1 || dateTime2==dateTime3 || dateTime2==dateTime4 || dateTime2==dateTime5)
    {
      return true;
    }
    if(dateTime3==dateTime1 || dateTime3==dateTime2 || dateTime3==dateTime4 || dateTime3==dateTime5)
    {
      return true;
    }
    if(dateTime4==dateTime1 || dateTime4==dateTime2 || dateTime4==dateTime3 || dateTime4==dateTime5)
    {
      return true;
    }
    if(dateTime5==dateTime1 || dateTime5==dateTime2 || dateTime5==dateTime3 || dateTime5==dateTime4)
    {
      return true;
    }

    return false;
  }
}