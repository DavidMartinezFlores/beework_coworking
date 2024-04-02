import 'package:beework_coworking/models/anuncio.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:beework_coworking/screens/trolley_screen.dart';
import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

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
              width: screenSize.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background2.jpg"),fit:BoxFit.cover),
              ),
              child: Column(
                children: [
                  
                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 55 56 66",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),


                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/imprentaClub.png",
                    number: "Teléfono: 915 22 38 89",
                    title: "Imprenta Club",
                    description: "Somos creativos y diseñadores de artes y diseños personalizados de tus productos de imprenta. Flyers y folletos, sobres, carpetas y papel de carta de empresa.",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/cc.jpg",
                    number: "Teléfono: 695 39 55 28",
                    title: "CC Asesores Andújar",
                    description: "Administradores de fincas, gestoría y asesoría fiscal.\n Dirección: C/ Mariana Pineda 34, Dpcho 12, Andújar 23740",
                  ),


                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/avanza.jpg",
                    number: "Teléfono: 953 33 00 95",
                    title: "Servicios de Constructora",
                    description: "Parque Científico y Tecnológico, Geolit. Avda. de la Innovación, Manzana 30, 23620, Mengibar (Jaén)",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  

                ],
              ),
            ),
          ),
      ),
    );
  }
}

