import '/components/mainbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mainnnnnn_model.dart';
export 'mainnnnnn_model.dart';

class MainnnnnnWidget extends StatefulWidget {
  const MainnnnnnWidget({super.key});

  @override
  _MainnnnnnWidgetState createState() => _MainnnnnnWidgetState();
}

class _MainnnnnnWidgetState extends State<MainnnnnnWidget> {
  late MainnnnnnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainnnnnnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 355.0,
              height: 52.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0xFFDB86F4),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: wrapWithModel(
                model: _model.mainbarModel,
                updateCallback: () => setState(() {}),
                child: const MainbarWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
