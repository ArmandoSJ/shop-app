import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/src/backend/usuario_model.dart';
import 'package:shop_app/src/providers/session_provider.dart';
import 'package:shop_app/src/utils/notifications_app.dart';
import 'package:shop_app/src/widgets/background_app.dart';
import 'package:shop_app/src/widgets/input_decoration.dart';
import 'package:shop_app/src/utils/validation_app.dart' as utils;

class LogInActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundApp(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ChangeNotifierProvider(
                  create: (_) => SessionProvider(),
                  child: _LogInForm(),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: _Buttons());
  }
}

class _LogInForm extends StatefulWidget {
  @override
  State<_LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<_LogInForm> {
  Usuario _user = new Usuario();
  final _formKey = GlobalKey<FormState>();
  late BuildContext context;
  SessionProvider? loginForm;
  Size? size;
  @override
  Widget build(BuildContext context) {
    loginForm = Provider.of<SessionProvider>(context);
    size = MediaQuery.of(context).size;
    this.context = context;
    return Container(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: <Widget>[
            SizedBox(height: 200.0),
            Text('Iniciar Sesión',
                style: TextStyle(fontSize: 20.0, color: Colors.white)),
            SizedBox(height: 30.0),
            _TxtUser(user: _user),
            SizedBox(height: 15.0),
            _PwdUser(user: _user),
            SizedBox(height: 20.0),
            btnLogIn(),
            SizedBox(height: 39.0),
            _RecoverUserPass(),
            SizedBox(height: 19.0),
            Divider(),
          ],
        ),
      ),
    );
  }

  MaterialButton btnLogIn() => MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      disabledColor: Colors.grey.shade300,
      elevation: 0,
      minWidth: size!.width * 0.9,
      color: Colors.blue.shade900,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          child: Text(
            loginForm!.isLoading ? 'Espere' : 'Ingresar',
            style: TextStyle(color: Colors.white),
          )),
      onPressed: loginForm!.isLoading ? null : _login);

  void _login() async {
    if (!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();
    loginForm!.isLoading = true;

    FocusScope.of(context).unfocus();

    utils.check().then((intenet) async {
      if (intenet) {
      } else {
        NotificationsApp.showSnackbar('Sin conexion a internet', Colors.red);
      }
    });
  }

  void validateSesion() async {}
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            heroTag: 'new',
            child: Icon(Icons.add),
            backgroundColor: Colors.purple,
            onPressed: () {
              Navigator.pushNamed(context, 'Registro');
            }),
      ],
    );
  }
}

class _TxtUser extends StatelessWidget {
  final user;
  const _TxtUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
        ),
        child: TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecorations.authInputDecoration(
            hintText: 'Usuario',
            labelText: 'Usuario',
            prefix: Icon(Icons.perm_identity),
            //color: Colors.white,
          ),
          onSaved: (userValue) => user.vUserId = userValue,
          validator: (userValue) {
            return null;
          },
        ),
      ),
    );
  }
}

class _PwdUser extends StatefulWidget {
  final user;

  _PwdUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<_PwdUser> createState() => _PwdUserState();
}

class _PwdUserState extends State<_PwdUser> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
        ),
        child: TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecorations.authInputDecoration(
            hintText: 'Contraseña',
            labelText: 'Contraseña',
            prefix: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
                //color: Colors.white,
              ),
            ),
            //color: Colors.white,
          ),
          obscureText: !_showPassword,
          onSaved: (pwdValue) => widget.user.vPassword = pwdValue,
        ),
      ),
    );
  }
}

class _RecoverUserPass extends StatelessWidget {
  const _RecoverUserPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '¿Olvido su usuario o contraseña?',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacementNamed(context, 'tabs');
                },
            ),
          ],
        ),
      ),
    );
  }
}
