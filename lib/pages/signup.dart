import 'package:flutter/material.dart';


class SingUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Container(
            width: 200,
            height: 200,
            alignment: Alignment(0, 1.5), // alinhamento da segunda camada, no caso, o simbolo "add"
            decoration: new BoxDecoration( // para a imagem ficar de fundo, tentei fazer uma sobreposição de imagens para ficar mais mais bonito estéticamente.
              image: new DecorationImage(
                image: AssetImage("assets/profile-picture.png"), 
              fit: BoxFit.fitHeight, // como a imagem é quadrada, tanto o height qnt o weight iriam funcionar, só peguei oq a IDE recomendou xD
              ),
            ),
            child: Container(
              height: 55,
              width: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [1, 0.8],
                  colors: [ 
                      Color(0xFF64B5F6),
                        Color(0xFF3747F),
                  ],
                ),
                border: Border.all(
                  width: 4,
                  color: const Color(0xFFFFFFFF),

                ),
                borderRadius: BorderRadius.all(Radius.circular(56),
                )
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child:Icon(
                      Icons.add,
                      color: Colors.white,
                  ),
                  onPressed: (){

                  },
                  ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "Nome",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
           TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
         TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [1, 0.8],
                  colors: [ 
                      Color(0xFF64B5F6),
                      Color(0xFF3747F),
                  ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5)
              ),
            ),
            child: SizedBox.expand(
             child: TextButton(
              child: Text(
                "Cadastrar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {  },
             ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: TextButton(
              child: Text(
                "Cancelar",
                textAlign: TextAlign.center,
              ),
              onPressed: () => { Navigator.pop(context, false) },
              ),
          )
        ],),
      ),
    );
  }
}