import '/backend/backend.dart';
import '/components/new_question_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'questionbank2_copy_model.dart';
export 'questionbank2_copy_model.dart';

class Questionbank2CopyWidget extends StatefulWidget {
  const Questionbank2CopyWidget({
    super.key,
    this.parameter1,
    this.list,
  });

  final String? parameter1;
  final List<CoursePracticeTestRecord>? list;

  @override
  State<Questionbank2CopyWidget> createState() =>
      _Questionbank2CopyWidgetState();
}

class _Questionbank2CopyWidgetState extends State<Questionbank2CopyWidget> {
  late Questionbank2CopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Questionbank2CopyModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                    child: Builder(
                      builder: (context) {
                        final list = FFAppState().listQuestion.toList();

                        return Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.9,
                          child: CarouselSlider.builder(
                            itemCount: list.length,
                            itemBuilder: (context, listIndex, _) {
                              final listItem = list[listIndex];
                              return Container(
                                width: 400.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: NewQuestionWidget(
                                  key: Key(
                                      'Keysjr_${listIndex}_of_${list.length}'),
                                  question: listItem.question,
                                  option1: listItem.op1,
                                  result: listItem.result,
                                  option2: listItem.op2,
                                  option3: listItem.op3,
                                  option4: listItem.op4,
                                  coursname: listItem.cname,
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
