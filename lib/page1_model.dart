import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'page1_widget.dart' show Page1Widget;
import 'package:flutter/material.dart';

class Page1Model extends FlutterFlowModel<Page1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
