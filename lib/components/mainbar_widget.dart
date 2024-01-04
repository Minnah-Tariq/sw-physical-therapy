import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mainbar_model.dart';
export 'mainbar_model.dart';

class MainbarWidget extends StatefulWidget {
  const MainbarWidget({super.key});

  @override
  _MainbarWidgetState createState() => _MainbarWidgetState();
}

class _MainbarWidgetState extends State<MainbarWidget> {
  late MainbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.home,
          color: Color(0xFF6E0697),
          size: 25.0,
        ),
        Icon(
          Icons.article_sharp,
          color: Color(0xFF6E0697),
          size: 25.0,
        ),
        Icon(
          Icons.person,
          color: Color(0xFF6E0697),
          size: 35.0,
        ),
      ],
    );
  }
}
