import 'package:flutter/material.dart';
import 'package:queen/queen.dart';

class ValidationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  ValidationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Queen Validators 👑'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          final isFormValid = _formKey.currentState!.validate();
          if (isFormValid) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('the form is valid')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('not valid')));
          }
        },
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'password'),
                controller: _passwordController,
                validator: qValidator([
                  const IsRequired(),
                ]),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'password confirmation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
