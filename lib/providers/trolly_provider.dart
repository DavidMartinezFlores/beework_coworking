import 'package:flutter/material.dart';

class TrollyProvider extends ChangeNotifier
{
  var focusNode= FocusNode();
  double valorCarrito = 0.0;

  void addCarrito(double valor)
  {
    this.valorCarrito+=valor;
    notifyListeners();
  }

  void delCarrito(double valor)
  {
    this.valorCarrito-=valor;
    if(this.valorCarrito<0)
    {
      this.valorCarrito=0;
    }
    notifyListeners();
  }

  void delAll()
  {

    this.valorCarrito=0;
    
    notifyListeners();
  }

}