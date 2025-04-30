import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ConnectionForm extends StatefulWidget {
  const ConnectionForm({super.key});

  @override
  State<ConnectionForm> createState() => _ConnectionFormState();
}

class _ConnectionFormState extends State<ConnectionForm> {
  String identifiant = '';
  String motDePasse = '';
  bool rememberMe = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateIdentifiant(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Veuillez entrer un identifiant';
    }
    if (!EmailValidator.validate(value)) {
      return 'Veuillez entrer un identifiant valide';
    }
    return null;
  }

  String? validateMotDePasse(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Veuillez entrer un mot de passe';
    }
    if (value.length < 8) {
      return 'Le mot de passe doit contenir au moins 8 caractères';
    }
    return null;
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Succès ✅"),
          content: Text("Votre formulaire a été soumis avec succès !"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Ferme la boîte de dialogue
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) => {identifiant = value!},
                  validator: validateIdentifiant,
                  decoration: InputDecoration(
                    labelText: 'Identifiant',
                  ),
                ),
                TextFormField(
                  onSaved: (value) => motDePasse = value!,
                  validator: validateMotDePasse,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                  ),
                ),
                Row(
                  children: [
                    Switch(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value;
                          });
                        }),
                    Text("Mémoriser mes informations"),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                       showSuccessDialog(context);
                      }},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF58B0F0)),
                ),
                    child: Text("Connexion", style: TextStyle(color: Colors.white))),

              ],
            )));
  }
}
