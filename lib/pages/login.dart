
import 'package:flutter/material.dart';
import 'package:flutter_yourcode/pages/reset-pass-page.dart';
import 'package:flutter_yourcode/pages/signup.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
           left: 40,
            right: 40,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/logo.png"),
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
                  style: TextStyle(
                    fontSize: 20
                    ),
                ),
                SizedBox(
                  height: 10,
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
                    )
                  ),
                  style: TextStyle(
                    fontSize: 20
                    ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      "Esqueci a senha",
                  
                    ),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => ResetPasswordPage()
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
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
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            ),
                        ],
                      ),
                       onPressed: () =>{
                    }
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
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
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Criar Conta",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            ),
                        ],
                      ),
                       onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) => SingUpPage()
                        ),
                      );
                    }
                    ),
                  ),
                ),
              ]
            ),
        ),
    );
  }

}