// import 'package:flutter/material.dart';
// import 'package:food_mama/ui/pages/ordered_list_page.dart';
// ///////////////////////////////////////////////////////////////////////////////////////////////new
//
//
// class OrderedItemDetailPage extends StatefulWidget {
//   OrderedItem _orderedItem;
//
//   OrderedItemDetailPage(OrderedItem orderedItem) {
//     _orderedItem = orderedItem;
//   }
//
//   @override
//   _OrderedItemDetailPageState createState() => _OrderedItemDetailPageState(_orderedItem);
// }
//
// class _OrderedItemDetailPageState extends State<OrderedItemDetailPage> {
//   OrderedItem orderedItem;
//
//   _OrderedItemDetailPageState(OrderedItem orderedItem) {
//     this.orderedItem = orderedItem;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(orderedItem.title),
//       ),
//       body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Hero(
//                 transitionOnUserGestures: true,
//                 tag: orderedItem,
//                 child: Transform.scale(
//                   scale: 2.0,
//                   child: Image.asset(orderedItem.img),
//                 ),
//               ),
//               Card(
//                   elevation: 8,
//                   margin: EdgeInsets.all(16),
//                   child: Container(
//                     padding: EdgeInsets.all(16),
//                     child: Text(orderedItem.body),
//                   )
//               ),
//             ],
//           )),
//     );
//   }
// }