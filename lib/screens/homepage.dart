import 'package:flutter/material.dart';
import 'package:vac_app/screens/call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController callIdTextCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vedio call'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 89, 141),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: callIdTextCtrl,
                  decoration: const InputDecoration(
                    labelText: 'join call by id',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CallPage(callID: callIdTextCtrl.text);
                    },
                  ));
                },
                child: const Text('Join'),
              )
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:vac_app/screens/call_page.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('video Call'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
              
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const PrebuiltCallPage(callID: 'user_id',)));
//               },
//               child: const Text('Start Call'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }