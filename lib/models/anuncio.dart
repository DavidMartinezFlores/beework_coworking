import 'package:flutter/material.dart';

var boxShadow = 
  const BoxShadow(
    color: Color.fromARGB(255, 82, 82, 82),
    offset: const Offset(
    5.0,
    5.0,
  ),
    blurRadius: 10.0,
    spreadRadius: 2.0
  );
var boxShadow2 = 
  const BoxShadow(
    color: Color.fromARGB(255, 32, 32, 32),
    offset: const Offset(
    1.0,
    1.0,
  ),
    blurRadius: 10.0,
    spreadRadius: 2.0
  );

// ignore: must_be_immutable
class Anuncio extends StatelessWidget {
  String imageUrl;
  String title;
  String description;
  String number;


  Anuncio({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.number

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        child: Center(
          child: Column(
            children: [
              
              Container(
                width: MediaQuery.of(context).size.width*0.8,
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
                      width: MediaQuery.of(context).size.width*0.79,
                      height: MediaQuery.of(context).size.height*0.2,
                      decoration:  
                      BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(image: AssetImage(this.imageUrl),fit:BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.75,
                      child: Column(
                        children: [
                          Text(textAlign: TextAlign.justify,this.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(textAlign: TextAlign.justify,this.description),
                          Text(textAlign: TextAlign.justify,this.number, style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 6, 122, 168)),),
                        ],
                      ),
                    ),
                  ],
                  
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}