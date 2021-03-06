import 'package:flutter/material.dart';
import 'dart:math';
void main (){
  runApp(MaterialApp(
  home: Home(),
    debugShowCheckedModeBanner: false,

  ));

}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [

    "A gratidão é a memória do coração.",
    "Deixe pra trás o que não te leva pra frente.",
    "Obrigado Deus pelo dia de hoje!",
    "As crises não afastam os amigos. Apenas selecionam.",
    "Tire o dia para sorrir.",
 ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase (){

    var numeroSorteado = Random().nextInt(_frases.length);


       setState(() {
         _fraseGerada = _frases [numeroSorteado];
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text ("Frases do dia "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
         /* width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3,color: Colors.amber)

          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),

              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
