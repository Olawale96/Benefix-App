// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class Copy extends StatefulWidget {
//   String quote;
//   double textSize;

//   Copy({Key? key, required this.quote, this.textSize = 20}) : super(key: key);

//   @override
//   _CopyState createState() => _CopyState();
// }

// class _CopyState extends State<Copy> {
//   String name = "Copy";

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Clipboard.setData(ClipboardData(text: widget.quote));
//         setState(() {
//           name = "Copied!";
//           Future.delayed(Duration(milliseconds: 3000), () {
//             setState(() {
//               name = "Copy";
//             });
//           });
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
//         clipBehavior: Clip.antiAlias,
//         decoration: ShapeDecoration(
//           color: const Color(0xFF8ADD88),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               name,
//               style: TextStyle(
//                 color: Color(0xFF000E3B),
//                 fontSize: 10,
//                 fontFamily: 'Sora',
//                 fontWeight: FontWeight.w700,
//                 height: 1.09,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
