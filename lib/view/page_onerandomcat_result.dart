import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_builder_catsstream.dart';
import 'package:flutter/material.dart';

import '../blocs/cats_bloc.dart';
import 'widgets/button_widgets/button_more_cats.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Results Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
              child: CatStream(),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

//
// class Error extends StatelessWidget {
//   final String errorMessage;
//   final Function onRetryPressed;
//   const Error(
//       {Key? key, required this.errorMessage, required this.onRetryPressed})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             errorMessage,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               color: Colors.red,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 8),
//           ElevatedButton(
//             child: const Text(
//               'Retry',
//             ),
//             onPressed: onRetryPressed =>
//           )
//         ],
//       ),
//     );
//   }
// }
