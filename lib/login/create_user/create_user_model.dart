import '/flutter_flow/flutter_flow_util.dart';
import 'create_user_widget.dart' show CreateUserWidget;
import 'package:flutter/material.dart';

class CreateUserModel extends FlutterFlowModel<CreateUserWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldMobile widget.
  FocusNode? textFieldMobileFocusNode;
  TextEditingController? textFieldMobileTextController;
  String? Function(BuildContext, String?)?
      textFieldMobileTextControllerValidator;
  String? _textFieldMobileTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 13) {
      return 'Requires at least 13 characters.';
    }
    if (val.length > 13) {
      return 'Maximum 13 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('[0-9]').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for addresss widget.
  FocusNode? addresssFocusNode;
  TextEditingController? addresssTextController;
  String? Function(BuildContext, String?)? addresssTextControllerValidator;
  String? _addresssTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('').hasMatch(val)) {
      return '[0-9]';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldMobileTextControllerValidator =
        _textFieldMobileTextControllerValidator;
    addresssTextControllerValidator = _addresssTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldMobileFocusNode?.dispose();
    textFieldMobileTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    addresssFocusNode?.dispose();
    addresssTextController?.dispose();
  }
}
