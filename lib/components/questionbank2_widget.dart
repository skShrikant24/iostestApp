import '/backend/backend.dart';
import '/components/new_question_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'questionbank2_model.dart';
export 'questionbank2_model.dart';

class Questionbank2Widget extends StatefulWidget {
  const Questionbank2Widget({
    super.key,
    this.parameter1,
    this.list,
  });

  final String? parameter1;
  final List<CoursePracticeTestRecord>? list;

  @override
  State<Questionbank2Widget> createState() => _Questionbank2WidgetState();
}

class _Questionbank2WidgetState extends State<Questionbank2Widget> {
  late Questionbank2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Questionbank2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final list = FFAppState().listQuestion.toList();

        return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, listIndex) {
            final listItem = list[listIndex];
            return Container(
              width: 400.0,
              height: double.infinity,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: NewQuestionWidget(
                key: Key('Keylca_${listIndex}_of_${list.length}'),
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
        );
      },
    );
  }
}
