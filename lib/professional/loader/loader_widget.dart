import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'loader_model.dart';
export 'loader_model.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({super.key});

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  late LoaderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoaderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.did = await actions.getDeviceId(
        isWeb.toString(),
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      _model.apiResultkla = await LoginCheckprofessionalCall.call(
        imei: FFAppState().dId,
      );

      if ((_model.apiResultkla?.succeeded ?? true)) {
        _model.data = await actions.parseXmlToprofesionallogin(
          (_model.apiResultkla?.bodyText ?? ''),
        );
        if (getJsonField(
              _model.data?.lastOrNull,
              r'''$.eAppCode''',
            ) !=
            null) {
          context.pushNamed(
            'PLHomepage',
            queryParameters: {
              'epcode': serializeParam(
                getJsonField(
                  _model.data?.lastOrNull,
                  r'''$.eAppCode''',
                ).toString().toString(),
                ParamType.String,
              ),
              'cname': serializeParam(
                getJsonField(
                  _model.data?.lastOrNull,
                  r'''$.CName''',
                ).toString().toString(),
                ParamType.String,
              ),
            }.withoutNulls,
          );
        } else {
          context.pushNamed('ProfessionLogin');
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/load-8510_256.gif',
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
