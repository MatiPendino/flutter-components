import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': 'Matías',
      'lastName': 'Pendino',
      'email': 'matiaspendino76@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField(
                  labelText: "Nombre", 
                  hintText: "Nombre del usuario",
                  helperText: "Máximo 50 caracteres",
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.messenger_outline,
                  keyboardType: TextInputType.text, 
                  formProperty: 'firstName', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 30),
          
                CustomInputField(
                  labelText: "Apellido", 
                  hintText: "Apellido del usuario",
                  helperText: "Máximo 50 caracteres",
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.messenger_outline,
                  formProperty: 'lastname', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 30,),
          
                CustomInputField(
                  labelText: "Email", 
                  hintText: "Correo del usuario",
                  helperText: "Puede ser gmail, hotmail o yahoo",
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.messenger_outline,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 30,),
          
                CustomInputField(
                  labelText: "Contraseña", 
                  hintText: "Contraseña del usuario",
                  helperText: "Incluye letras y números",
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.messenger_outline,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: const[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'PDV', child: Text('PDV')),
                    DropdownMenuItem(value: 'Admin de eventos', child: Text('Admin de eventos')),
                    DropdownMenuItem(value: 'Productor', child: Text('Productor')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'admin';
                  }
                ),
          
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  )
                )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}