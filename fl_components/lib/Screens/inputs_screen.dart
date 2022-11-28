import 'package:fl_components/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget{
  const InputsScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String,String> formValues ={
      'first_name':'Rick',
      'last_name' :'Julcamoro',
      'email'     :'greegjp@gmail.com',
      'password'  :'RGJP*27396',
      'role'      :'Admin',

    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [

                CustomInputField( labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues),
                SizedBox(height: 30),

                CustomInputField( labelText: 'Apellido', hintText: 'Apellido de usuario', formProperty: 'last_name', formValues: formValues),
                SizedBox(height: 30),

                CustomInputField( labelText: 'Correo', hintText: 'Correo de usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                SizedBox(height: 30),

                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña de usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                SizedBox(height: 30),
                
                DropdownButton(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'JrDeveloper', child: Text('JrDeveloper')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }
                ),
                
                
                
                
                
                ElevatedButton(
                    onPressed: () {
                      
                      FocusScope.of(context).requestFocus(FocusNode());
                      if( !myFormKey.currentState!.validate()){
                        print('Formulario no valido');
                        return;
                      }

                      //Todo: imprimir valores del formulario
                      print(formValues);

                    },
                    child: SizedBox(
                        width: double.infinity,
                        child: Center(child: const Text('Registrar'))
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
