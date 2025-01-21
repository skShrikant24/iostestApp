import '/flutter_flow/flutter_flow_util.dart';
import '/professional/new_questionmock/new_questionmock_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mocktest_p_l_model.dart';
export 'mocktest_p_l_model.dart';

class MocktestPLWidget extends StatefulWidget {
  const MocktestPLWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<MocktestPLWidget> createState() => _MocktestPLWidgetState();
}

class _MocktestPLWidgetState extends State<MocktestPLWidget> {
  late MocktestPLModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MocktestPLModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                    child: Builder(
                      builder: (context) {
                        final list = FFAppState().mocktestlist.toList();

                        return SizedBox(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.9,
                          child: CarouselSlider.builder(
                            itemCount: list.length,
                            itemBuilder: (context, listIndex, _) {
                              final listItem = list[listIndex];
                              return Container(
                                width: 400.0,
                                height: double.infinity,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: NewQuestionmockWidget(
                                  key: Key(
                                      'Key0tv_${listIndex}_of_${list.length}'),
                                  question: getJsonField(
                                    listItem,
                                    r'''$.Question''',
                                  ).toString(),
                                  option1: getJsonField(
                                    listItem,
                                    r'''$.Option1''',
                                  ).toString(),
                                  result: getJsonField(
                                    listItem,
                                    r'''$.Result''',
                                  ).toString(),
                                  option2: getJsonField(
                                    listItem,
                                    r'''$.Option2''',
                                  ).toString(),
                                  option3: getJsonField(
                                    listItem,
                                    r'''$.Option3''',
                                  ).toString(),
                                  option4: getJsonField(
                                    listItem,
                                    r'''$.Option4''',
                                  ).toString(),
                                  coursname: widget.parameter1,
                                  index: listIndex.toString(),
                                ),
                              );
                            },
                            carouselController: _model.carouselController ??=
                                CarouselSliderController(),
                            options: CarouselOptions(
                              initialPage: max(0, min(1, list.length - 1)),
                              viewportFraction: 0.9,
                              disableCenter: true,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.45,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              autoPlay: false,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
