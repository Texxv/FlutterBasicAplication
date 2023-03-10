import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(icon: Icon(Icons.arrow_back),
      color: Colors.black54,
      onPressed: () => Navigator.pop(context, false),),
    ),
    body: Container(
      padding: EdgeInsets.only(top: 60, left: 40, right: 40),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/reset-pass.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Esqueceu seu senha?",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Digite o seu e-mail:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
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
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
                stops: [1, 0.8],
                colors: [
                        Color(0xFF64B5F6),
                        Color(0xFF3747F),
                      ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: SizedBox.expand(
                  child: TextButton(child: Text(
                    "Enviar",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color:Colors.white,
                    fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                    ),
                    onPressed: (){},
                    ),
                ),
              ),
        ],
      ),
      ),
   );
  }
}