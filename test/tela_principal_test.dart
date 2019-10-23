// import 'package:flutter/material.dart';

// class TelaPrincipal extends StatefulWidget {
//   @override
//   _TelaPrincipalState createState() => _TelaPrincipalState();
// }

// class _TelaPrincipalState extends State<TelaPrincipal> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           child: Icon(Icons.arrow_back),
//           onTap: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             color: Colors.grey[200],
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                  Container(
//                    height: MediaQuery.of(context).size.height*0.3,
//                    child: Image.asset("images/redes.jpg",
//                    fit: BoxFit.fitWidth,),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(8,16,8,8),
//                    child: Row(children: <Widget>[
//                       Icon(Icons.flash_on),
//                       Text("Acesso Rápido")
//                    ],
//                    ),
//                  ),
//                  Row(
//                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Expanded(
//                       flex: 1,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border.all(
//                                   color: Colors.white, width: 0.4),
//                               borderRadius: BorderRadius.circular(15)),
//                           padding: EdgeInsets.all(8),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Expanded(flex: 1, child: Icon(Icons.android)),
//                               Expanded(
//                                 flex: 3,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: <Widget>[
//                                     Text("Vazamento"),
//                                     Text("Água ou esgoto")
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Card(
//                         color: Colors.redAccent,
//                         child: Row(
//                           children: <Widget>[
//                             Row(
//                               children: <Widget>[
//                                 Icon(Icons.library_books),
//                                 Column(
//                                   children: <Widget>[
//                                     Text("Reparo na "),
//                                     Text("Água ou esgoto")
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
