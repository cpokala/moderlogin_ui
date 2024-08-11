import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';


import 'page1_model.dart';

class Page1Widget extends StatefulWidget {
  const Page1Widget({super.key});

  @override
  State<Page1Widget> createState() => _Page1WidgetState();
}

class _Page1WidgetState extends State<Page1Widget> {
  late Page1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page1Model());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: colorScheme.surface,
        appBar: AppBar(
          backgroundColor: colorScheme.primary,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi,',
                style: theme.textTheme.labelSmall!.copyWith(
                  fontFamily: 'Outfit',
                  fontSize: 18,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onPrimary,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Fighter',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  Text(
                    ', How have you been? ',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ].divide(const SizedBox(height: 4)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 12, 12),
              child: Container(
                width: 48,
                height: 44,
                decoration: BoxDecoration(
                  color: colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: colorScheme.primary,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/123/600',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          toolbarHeight: 72,
          elevation: 0,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 0, 0),
                                child: Text(
                                  'Categories',
                                  style: theme.textTheme.labelMedium!.copyWith(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0,
                                    color: colorScheme.surface,
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 8),
                                        child: FlutterFlowChoiceChips(
                                          options: const [
                                            ChipData('Log Symptom'),
                                            ChipData('Medication'),
                                            ChipData('Insights')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                colorScheme.secondary,
                                            textStyle: theme.textTheme.bodyMedium!
                                                .copyWith(
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  color: colorScheme.onSecondary,
                                                  letterSpacing: 0,
                                                ),
                                            iconColor:
                                                colorScheme.onSecondary,
                                            iconSize: 18,
                                            labelPadding:
                                                const EdgeInsets.all(4),
                                            elevation: 0,
                                            borderColor:
                                                const Color(0xFFA661EF),
                                            borderWidth: 2,
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                colorScheme.primaryContainer,
                                            textStyle: theme.textTheme.bodyMedium!
                                                .copyWith(
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  color: colorScheme.onPrimaryContainer,
                                                  letterSpacing: 0,
                                                ),
                                            iconColor:
                                                colorScheme.onPrimaryContainer,
                                            iconSize: 20,
                                            elevation: 0,
                                            borderColor:
                                                const Color(0xFFEF8E64),
                                            borderWidth: 1,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          chipSpacing: 15,
                                          rowSpacing: 12,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: false,
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 8))
                                      .addToStart(const SizedBox(width: 16))
                                      .addToEnd(const SizedBox(width: 16)),
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 32)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 321,
                    height: 517,
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'lib/images/page1_image2.png',
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                          },
                          text: 'Air Quality',
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: colorScheme.primary,
                            textStyle: theme.textTheme.titleSmall!.copyWith(
                              fontFamily: 'Plus Jakarta Sans',
                              color: colorScheme.onPrimary,
                              letterSpacing: 0,
                            ),
                            elevation: 3,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'lib/images/page1_image1.png',
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                          },
                          text: 'Join our community',
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: colorScheme.primary,
                            textStyle: theme.textTheme.titleSmall!.copyWith(
                              fontFamily: 'Plus Jakarta Sans',
                              color: colorScheme.onPrimary,
                              letterSpacing: 0,
                            ),
                            elevation: 3,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Look at your Asthma History',
                    style: theme.textTheme.labelLarge!.copyWith(
                      fontFamily: 'Outfit',
                      color: const Color(0xFFCD6B19),
                      fontSize: 22,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      ('Button pressed ...');
                    },
                    text: 'Check Your Progress',
                    options: FFButtonOptions(
                      height: 40,
                      padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: colorScheme.primary,
                      textStyle: theme.textTheme.titleSmall!.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                        color: colorScheme.onPrimary,
                        letterSpacing: 0,
                      ),
                      elevation: 3,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}