import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var maskPhoneFormatter = MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskCpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskCnpjFormatter = MaskTextInputFormatter(
      mask: '##.###.###/####-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskDateFormatter = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskPasswordFormatter = MaskTextInputFormatter(
      mask: '********',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            bool emailValid = RegExp(
                                    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                .hasMatch(value!);
                            if (!emailValid) {
                              return 'Invalid email';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(color: Colors.grey),
                              label: Text(
                                'Email',
                                selectionColor: Colors.teal,
                                style: TextStyle(color: Colors.teal),
                              ),
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(color: Colors.grey),
                              label: Text(
                                'password',
                                selectionColor: Colors.teal,
                                style: TextStyle(color: Colors.teal),
                              ),
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.length < 11) {
                              return 'Name must be at least 11 characters';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter your cpf',
                              hintStyle: TextStyle(color: Colors.grey),
                              label: Text(
                                'cpf',
                                selectionColor: Colors.teal,
                                style: TextStyle(color: Colors.teal),
                              ),
                              filled: true),
                          inputFormatters: [maskCpfFormatter],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!
                                    .replaceAll('/', '')
                                    .replaceAll(')', '')
                                    .replaceAll('-', '')
                                    .replaceAll(' ', '')
                                    .length <
                                11) {
                              return 'Name must be at least 11 characters';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter your phone',
                              hintStyle: TextStyle(color: Colors.grey),
                              label: Text(
                                'phone',
                                selectionColor: Colors.teal,
                                style: TextStyle(color: Colors.teal),
                              ),
                              filled: true),
                          inputFormatters: [maskPhoneFormatter],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.replaceAll('/', '').length < 8) {
                              return 'Date invalid';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter Date',
                              hintStyle: TextStyle(color: Colors.grey),
                              label: Text(
                                'Date',
                                selectionColor: Colors.teal,
                                style: TextStyle(color: Colors.teal),
                              ),
                              filled: true),
                          inputFormatters: [maskDateFormatter],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        duration: Duration(seconds: 2),
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 150.0,
                                        content: Text('Form is invalid')));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            child: const Text('Submit'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
