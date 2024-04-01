import 'package:beework_coworking/models/anuncio.dart';
import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
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
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),


                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                  SizedBox(
                    height: screenSize.height*0.04,
                  ),
                  Anuncio(
                    imageUrl: "assets/images/abogado.jpeg",
                    number: "Teléfono: 953 555 666",
                    title: "Abogados López",
                    description: "Abogados con experiencia en el sector con capacidad de contacto 24/7",
                  ),

                ],
              ),
            ),
          ),
      ),
    );
  }
}

