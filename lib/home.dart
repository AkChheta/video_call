// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:video_call/call.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CallPage(callID: "1")));
            },
            child: const Text("Join call")),
      ),
    );
  }
}


































// import 'package:flutter/material.dart';
// import 'call.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _formkey = GlobalKey<FormState>();
//   final _nameController = TextEditingController(text: 'Name');
//   final _idController = TextEditingController(text: 'ID');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Video Call App"),
//       ),
//       body: Form(
//           key: _formkey,
//           child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _nameController,
//                   ),
//                   const SizedBox(height: 20),
//                   TextFormField(controller: _idController)
//                 ],
//               ))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => CallPage(
//                 callID: _idController.text.toString(),
//                 uName: _nameController.text.toString()),
//           ));
//         },
//         child: const Text("Call"),
//       ),
//     );
//   }
// }
