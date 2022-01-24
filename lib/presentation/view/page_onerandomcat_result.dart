import 'package:anAbundanceOfCats/business_logic/blocs/single_cat_display_bloc.dart';
import 'package:anAbundanceOfCats/data/models/cats_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/button_widgets/button_more_cats.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double catRescale = 1.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Cats"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildSingleCatDisplay(),
            _buildGetDifferentCat(),
          ],
        ),
      ),
    );
  }

  Widget _buildGetDifferentCat() {
    return const MoreCatsElevatedButton();
  }

  Widget _buildSingleCatDisplay() {
    final state = context.watch<SingleCatDisplayBloc>().state;
    return state.when(
      loading: (loadingWidget) => Container(
        child: loadingWidget,
      ),
      loaded: (loadedCats) => Image.network(
        loadedCats.url,
        scale: scaleCatImage(loadedCats),
      ),
      error: (message) => Text(message),
    );
  }

  scaleCatImage(Cats loadedCats) {
    if (loadedCats.height <= 600) {
      return 1.5;
    } else if (loadedCats.height > 600) {
      return 2.5;
    } else if (loadedCats.height > 1000) {
      return 4.0;
    } else if (loadedCats.height > 1500) {
      return 4.5;
    } else if (loadedCats.height > 2000) {
      return 6.0;
    } else if (loadedCats.height > 3000) {
      return 9.0;
    } else if (loadedCats.height > 4000) {
      return 11.0;
    }
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
