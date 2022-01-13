import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_builder_catsstream.dart';
import 'package:flutter/material.dart';

import '../blocs/cats_bloc.dart';
import 'widgets/button_widgets/button_more_cats.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late CatsBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = CatsBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Results Page')),
      body: RefreshIndicator(
        onRefresh: () => _bloc.fetchCat(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CatStream(bloc:_bloc,),
              ),
              const SizedBox(height: 50,),
              MoreCatsElevatedButton(bloc: _bloc,),
              const SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}


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
//             onPressed: onRetryPressed,
//           )
//         ],
//       ),
//     );
//   }
// }

