import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  var _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Entrada de Dados'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType
                    .text, // Tipo de teclado (text, emailAddress, number...)
                decoration: const InputDecoration(labelText: 'Digite um valor'),
                // enabled: false, // Disabilita o campo
                maxLength: 2, // Define limite de caracteres
                // maxLengthEnforced: true, // Restringe caracteres ao limite (deprecated)
                maxLengthEnforcement: MaxLengthEnforcement
                    .truncateAfterCompositionEnds, // Restringe caracteres ao limite

                style: const TextStyle(
                  // fontSize: 24,
                  color: Colors.lightGreen,
                ),
                obscureText: true, // Esconde o texto digitado
                onChanged: (String texto) {
                  print('O texto digitado foi: $texto');
                }, // Callback chamado ao digitar
                onSubmitted: (String texto) {
                  print('O texto enviado foi: $texto');
                }, // Callback chamado ao enviar
                controller: _textEditingController,
              ),
            ),
            ElevatedButton(
              child: Text("Salvar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              ),
              onPressed: () {
                print("Foi digitado ${_textEditingController.text}");
              },
            )
          ],
        ));
  }
}
