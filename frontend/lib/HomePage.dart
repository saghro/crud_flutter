import 'package:flutter/material.dart';
import 'package:frontend/create.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.orangeAccent,
                    Colors.limeAccent
                  ])),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 100,horizontal: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white24
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>createScreen()));
                      },
                      icon: const Icon(Icons.create),
                      label:  const Text('Create'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                      )),
                       const Padding(padding: EdgeInsets.only(top: 20)),
                  ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.update),
                      label: const Text('Update'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                      )
                  ),
                  const  Padding(padding: EdgeInsets.only(top: 20)),
                  ElevatedButton.icon(

                      onPressed: (){},
                      icon:  const Icon(Icons.delete),
                      label:  const Text('Delete'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                      )
                  ),
                  const  Padding(padding: EdgeInsets.only(top: 20)),
                  ElevatedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.read_more_rounded),
                      label: const Text('Read'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                      )
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
