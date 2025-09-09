import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/services/model.dart';

class ListViewMenuProducts extends StatelessWidget {
  final List<Product> products;

  const ListViewMenuProducts({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      shrinkWrap: true, // يضمن أن ListView تأخذ فقط المساحة التي تحتاجها
      physics:
          const NeverScrollableScrollPhysics(), // تعطيل تمرير ListView للسماح لـ SingleChildScrollView بالتحكم في التمرير
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Container(
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                _buildImageWithGradient(product.image),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(color: Colors.black54, blurRadius: 6, offset: Offset(1, 1)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),

                      Text(
                        '${product.price} جنيه',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          shadows: [
                            Shadow(color: Colors.black54, blurRadius: 6, offset: Offset(1, 1)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildImageWithGradient(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ShaderMask(
        shaderCallback:
            (rect) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
            ).createShader(rect),
        blendMode: BlendMode.darken,
        child: Image.asset(
          image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
          errorBuilder:
              (context, error, stackTrace) => Image.asset(
                'assets/images/eldemeshki.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        ),
      ),
    );
  }
}

// class ListViewMenuProducts extends StatelessWidget {
//   const ListViewMenuProducts({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//   });

//   final String title;
//   final String subtitle;
//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: ListView.builder(
//         itemCount: 5,
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 5,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             child: Container(
//               height: 200,
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
//               child: Stack(
//                 children: [
//                   _buildImageWithGradient(),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             shadows: [
//                               Shadow(color: Colors.black54, blurRadius: 6, offset: Offset(1, 1)),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Row(
//                           children: [
//                             const Icon(Icons.star_rate_rounded, color: Colors.deepOrange, size: 20),
//                             Text(
//                               subtitle,
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.9),
//                                 fontSize: 16,
//                                 shadows: const [
//                                   Shadow(
//                                     color: Colors.black54,
//                                     blurRadius: 6,
//                                     offset: Offset(1, 1),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildImageWithGradient() {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(12),
//       child: ShaderMask(
//         shaderCallback:
//             (rect) => LinearGradient(
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               colors: [Colors.black.withOpacity(0.7), Colors.transparent],
//             ).createShader(rect),
//         blendMode: BlendMode.darken,
//         child: Image.asset(
//           image,
//           width: double.infinity,
//           height: double.infinity,
//           fit: BoxFit.fill,
//         ),
//       ),
//     );
//   }
// }

//******************************************************************************************************* */
// class ListViewItemsView extends StatelessWidget {
//   const ListViewItemsView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: ListView.builder(
//         itemCount: 10,
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),
//         itemBuilder: (context, index) {
//           return Container(
//             width: double.infinity,
//             height: 205,
//             color: Colors.white,
//             child: Stack(
//               alignment: Alignment.bottomLeft,
//               children: [
//                 Container(
//                   height: 200,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     image: const DecorationImage(
//                       image: AssetImage(AssetsData.itemTest),
//                       fit: BoxFit.cover,
//                     ),
//                     color: const Color(0xFFf2f2f2),
//                   ),
//                 ),
//                 Padding(
//                   padding: Styels.padding16,
//                   child: Column(
//                     spacing: 5,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Minute by tuk tuk',
//                         style: Styels.textStyle24.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           const Icon(Icons.star_rate_rounded, color: Colors.deepOrange, size: 20),
//                           Text(
//                             '4.9',
//                             style: Styels.textStyle16.copyWith(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             'Minute by tuk tuk  Desserts',
//                             style: Styels.textStyle16.copyWith(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
