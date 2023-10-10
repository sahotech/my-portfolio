// import 'package:flutter/material.dart';
// import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:sahotech_portfolio/constant.dart';

// class TestimonialWidget extends StatelessWidget {
//   TestimonialWidget({super.key});

//   List testimonial = [
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//     {
//       "pic": "picture",
//       'name': "Benjamin Goku",
//       'role': "Student At TTU",
//       "testi":
//           "Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final ss = MediaQuery.sizeOf(context);

//     return Container(
//       color: Colors.white,
//       width: ss.width,
//       height: ss.height / 3,
//       child: Center(
//         child: SizedBox(
//           width: ss.width / 3,
//           height: 300,
//           child: ImageSlideshow(
//             indicatorBottomPadding: 16,
//             autoPlayInterval: 5000,
//             indicatorColor: Colors.purple,
//             indicatorBackgroundColor: Colors.grey,
//             indicatorRadius: 7,
//             isLoop: true,
//             indicatorPadding: 6,
//             onPageChanged: (value) {},
//             children: authoScrollTest(ss) as dynamic,
//           ),
//         ),
//       ),
//     );
//   }

//   authoScrollTest(Size ss) {
//     return ListView.builder(
//       keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//       scrollDirection: Axis.horizontal,
//       shrinkWrap: true,
//       itemCount: testimonial.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: InkWell(
//             onTap: () {},
//             onHover: (value) {},
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               height: ss.height / 3,
//               width: 400,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: myBoxShadow,
//               ),
//               child: Column(
//                 children: [
//                   // const SizedBox(height: 10),
//                   const CircleAvatar(
//                     radius: 50,
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     testimonial[index]['name'],
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.w600,
//                       color: titleColor,
//                     ),
//                   ),
//                   Text(
//                     testimonial[index]['role'],
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black38,
//                     ),
//                   ),
//                   Text(
//                     testimonial[index]['testi'],
//                     maxLines: 3,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black45,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
