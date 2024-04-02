import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var dateTime = DateTime.now();
var horas = 1;


// ignore: must_be_immutable
class DiasScreenHoras extends StatefulWidget {
  double valorMonetario;
    DiasScreenHoras({super.key,required this.valorMonetario});


  State<DiasScreenHoras> createState() => _DiasScreenHorasState();
}

class _DiasScreenHorasState extends State<DiasScreenHoras> {
  @override


  @override
  Widget build(BuildContext context) {
    // Initial Selected Value 
    String dropdownvalue = 'Seleccionar Horas';    

    // List of items in our dropdown menu 
    var items = [ 
      'Seleccionar Horas',    
      '1', 
      '2', 
      '3', 
      '4', 
      '5', 
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23',
      '24',

    ]; 

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
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Nº de horas: ${horas}",style: TextStyle(backgroundColor: const Color.fromARGB(255, 145, 145, 145),color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 28,fontStyle:FontStyle.italic),),
                            SizedBox(
                              height: screenSize.height*0.01,
                            ),
                            Container(
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              width: screenSize.width*0.5,
                              child: 
                              DropdownButton(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                // Initial Value 
                                value: dropdownvalue, 
                                  
                                // Down Arrow Icon 
                                icon: const Icon(Icons.keyboard_arrow_down),     
                                  
                                // Array list of items 
                                items: items.map((String items) { 
                                  return DropdownMenuItem( 
                                    value: items, 
                                    child: Text(items), 
                                  ); 
                                }).toList(), 
                                // After selecting the desired option,it will 
                                // change button value to selected value 
                                onChanged: (String? newValue) {  
                                  setState(() { 
                                    if(newValue!="Seleccionar Horas")
                                    {
                                    dropdownvalue = newValue!;
                                    
                                    horas=int.parse(dropdownvalue); 
                                    }
                                  }); 
                                }, 
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(
                        height: screenSize.height*0.1,
                      ),
                      FilledButton.icon(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.black)
                        ),
                        onPressed: () {
                          showDialog(
                            //if set to true allow to close popup by tapping out of the popup
                            barrierDismissible: true, 
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                              title: Center(child: Text("CONFIRMAR",style: TextStyle(color: const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                              content: Text("Desas reservar el día de ${dateTime.day}/${dateTime.month}/${dateTime.year} ($horas horas) por ${widget.valorMonetario*horas}€ ?"),
                              actions: [
                                TextButton(child: Text("Confirmar",style: TextStyle(color: const Color.fromARGB(255, 0, 122, 4))), onPressed: () {
                                  provider.addCarrito(widget.valorMonetario*horas);
                                  print("added");
                                  Navigator.pop(context);


                                  showDialog(
                                    barrierDismissible: true, 
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                      title: Center(child: Text("RESERVADO",style: TextStyle(color:  const Color.fromARGB(255, 189, 142, 0),fontWeight: FontWeight.bold),)),
                                      content: Text("Reservado día ${dateTime.day}/${dateTime.month}/${dateTime.year} ($horas horas) por ${widget.valorMonetario*horas}€ exitosamente"),
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
}