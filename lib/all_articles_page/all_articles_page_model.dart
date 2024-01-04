import '/components/article_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_articles_page_widget.dart' show AllArticlesPageWidget;
import 'package:flutter/material.dart';

class AllArticlesPageModel extends FlutterFlowModel<AllArticlesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for article component.
  late ArticleModel articleModel1;
  // Model for article component.
  late ArticleModel articleModel2;
  // Model for article component.
  late ArticleModel articleModel3;
  // Model for article component.
  late ArticleModel articleModel4;
  // Model for article component.
  late ArticleModel articleModel5;
  // Model for article component.
  late ArticleModel articleModel6;
  // Model for article component.
  late ArticleModel articleModel7;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    articleModel1 = createModel(context, () => ArticleModel());
    articleModel2 = createModel(context, () => ArticleModel());
    articleModel3 = createModel(context, () => ArticleModel());
    articleModel4 = createModel(context, () => ArticleModel());
    articleModel5 = createModel(context, () => ArticleModel());
    articleModel6 = createModel(context, () => ArticleModel());
    articleModel7 = createModel(context, () => ArticleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    articleModel1.dispose();
    articleModel2.dispose();
    articleModel3.dispose();
    articleModel4.dispose();
    articleModel5.dispose();
    articleModel6.dispose();
    articleModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
