import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Item'), // Titre de la page
        backgroundColor: Colors.transparent, // Couleur de fond transparente pour permettre le dégradé
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.limeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.orangeAccent,
                  Colors.limeAccent,
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white24,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 70, right: 70),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter name",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70, right: 70),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter email",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70, right: 70),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter age",
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Submit"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
