import '/components/article_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'all_articles_page_model.dart';
export 'all_articles_page_model.dart';

class AllArticlesPageWidget extends StatefulWidget {
  const AllArticlesPageWidget({super.key});

  @override
  _AllArticlesPageWidgetState createState() => _AllArticlesPageWidgetState();
}

class _AllArticlesPageWidgetState extends State<AllArticlesPageWidget> {
  late AllArticlesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllArticlesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 6.0),
            child: Container(
              width: 44.0,
              height: 44.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/petite-woman-1-820x500.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            'Hey Norsen',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: const Icon(
                  Icons.settings_sharp,
                  color: Color(0xFF6E0697),
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('ArticleView');
                            },
                            child: wrapWithModel(
                              model: _model.articleModel1,
                              updateCallback: () => setState(() {}),
                              child: const ArticleWidget(),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.articleModel2,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                          wrapWithModel(
                            model: _model.articleModel3,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                          wrapWithModel(
                            model: _model.articleModel4,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                          wrapWithModel(
                            model: _model.articleModel5,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                          wrapWithModel(
                            model: _model.articleModel6,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                          wrapWithModel(
                            model: _model.articleModel7,
                            updateCallback: () => setState(() {}),
                            child: const ArticleWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
