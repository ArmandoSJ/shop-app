import 'package:flutter/material.dart';


class SignUpActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Register")),
      body: ContainerForm(),
      floatingActionButton: FatButton(),
    );
  }
}


class ContainerForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child:Container(
         padding: EdgeInsets.all(5.0),
         child: Form(
           key: formKey,
           child: Column(
             children: <Widget>[
                SafeArea(
                 child: Container(
                     height: 50.0,
                 ),
               ),
              Text("Create your User Account", style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 20.0),
              TextField(),
              SizedBox(height: 15.0),
              EmailField(),
              SizedBox(height: 15.0),
              PasswordField(),
              SizedBox(height: 15.0),
              TextField(),
              SizedBox(height: 15.0),
              TextField(),       
             ],
           ),
         ),
       ),
    );
  }
}


class TextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal:20.0), 
        child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(//decora el textfield
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)//le da un radio de 20.0 a la caja de texto
                  ),
                  hintText: 'Usuario',
                  labelText: 'Usuario',
                  suffixIcon: Icon( Icons.supervised_user_circle)
                            //errorText: snapshot.error
                ),
                        /* onSaved: (predioValue) => service.vPredio = predioValue,
                        validator: (predioValue) {
                          switch (utils.serviceValitaiton(predioValue)) {
                                case 'E':
                                  return 'Campo Obligatorio';
                                break;
                                case 'L':
                                  return 'Solo se permiten numeros';
                                break;
                                case 'M':
                                  return 'El predio debe de ser menor a 7 numeros';
                                case 'T':
                                  return null;
                                break;
                          }
                          return null;
                        }, */
        )
    );
  }
}


class EmailField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal:20.0), 
          child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.sentences,//Muesta la primera letra en mayuscula
                    decoration: InputDecoration(//decora el textfield
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)//le da un radio de 20.0 a la caja de texto
                    ),
                    hintText: 'email@dominio.com',
                    labelText: 'Correo electronico',
                    suffixIcon: Icon( Icons.email ),
                  ),
          )
          );
  }
}



class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _showPassword = false;

  bool _showPassword2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal:20.0), 
          child: TextFormField(
                    obscureText: _showPassword,
                    textCapitalization: TextCapitalization.sentences,//Muesta la primera letra en mayuscula
                    decoration: InputDecoration(//decora el textfield
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)//le da un radio de 20.0 a la caja de texto
                    ),
                    hintText: 'Contraseña',
                    labelText: 'Contraseña',
                    //suffixIcon: Icon( Icons.lock_open ),
                    suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword ? Icons.visibility : Icons.visibility_off,
                          ),
                    ),
                  ),      
          )
          );
  }
}

class FatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(height : 5.0),
        FloatingActionButton(
          heroTag: 'add',
          child: Icon(Icons.done), 
          onPressed: (){ }
        ),
      ],
    );
  }
}