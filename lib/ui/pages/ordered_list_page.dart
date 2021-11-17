// import 'package:flutter/material.dart';
// import 'package:food_mama/ui/pages/ordered_item_details_page.dart';
// ///////////////////////////////////////////////////////////////////////////////////////////////new
//
// class OrderedListPage extends StatefulWidget {
//   OrderedListPage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _OrderedListPageState createState() => _OrderedListPageState();
// }
//
// class OrderedItem {
//   final String img;
//   final String title;
//   final String body;
//
//   OrderedItem(this.img, this.title, this.body);
// }
//
// class _OrderedListPageState extends State<OrderedListPage> {
//   List<OrderedItem> items = [];
//
//   _OrderedListPageState() {
//     items.add(new OrderedItem("assets/iron_man.png", "Iron Man",
//         "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man."));
//     items.add(new OrderedItem("assets/captain_america.png", "Captain America",
//         "Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers."));
//     items.add(new OrderedItem("assets/thor.png", "Thor",
//         "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike."));
//     items.add(new OrderedItem("assets/hulk.png", "Hulk",
//         "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage."));
//     items.add(new OrderedItem("assets/black_widow.png", "Black Widow",
//         "Despite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers."));
//   }
//
//   Widget OrderedItemCardOrRow(BuildContext ctx, int index) {
//     return GestureDetector(
//       onTap: () {
//         final snackBar = SnackBar(content: Text("Tap"));
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => OrderedItemDetailPage(items[index])));
//       },
//       child: Card(
//           margin: EdgeInsets.all(8),
//           elevation: 4.0,
//           child: Container(
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Hero(
//                       tag: items[index],
//                       child: Image.asset(items[index].img),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     Text(
//                       items[index].title,
//                       style:
//                       TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Icon(Icons.navigate_next, color: Colors.black38),
//               ],
//             ),
//           )),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Stack(
//           children: <Widget>[
//             ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) => OrderedItemCardOrRow(context, index),
//             ),
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }