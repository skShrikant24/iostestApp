import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Privacy Policy',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PRIVACY POLICY\n\n\nAt DiSHAComputer Institute (“We/Our”) are committed to protecting and respecting your privacy.\n\nThis policy sets out the basis on which any personal information we collect from you, or that you provide to us, will be processed by us. Please read the following carefully to understand our views and practices regarding your personal information and how we will use it.\n\n\nWE MAY COLLECT AND PROCESS THE FOLLOWING INFORMATION\nInformation that you submit during the registration in relation to the SERVICEs provided by us. We will ask for yourlegally valid name, e-mail address, mobile number, city, zip code, etc.\nInformation about your use of the Mobile App.\nIf you contact us, we may keep a record of that correspondence.\nWe may also ask you to complete surveys that we use for research purposes.\nDetails of your access to the Mobile App, but not limited to, traffic data, location data, and other communication data, whether this is required for our own billing purposes.\n\nUSE OF THE INFORMATION PROVIDED BY YOU\nWe use information about you in the following ways:\n\nTo make assessments about your learning needs in relation to the course packages in order to better tailor your educational needs.\nTo make assessments of how proficient you are at using the SERVICEsprovided by us.\nTo ensure superior educational experience of the SERVICEpresented to you.\nTo notify you with educational SERVICEs, which we feel may interest you, such as Offers and Notifications.\nTo carry out our obligations arising from any contracts entered into between you and us.\nTo allow you to participate in quizzes and competitions when you choose to do so.\n\nPROTECTION OF YOUR INFORMATION\nWe implement a variety of security measures to maintain the safety of your personal information when you enter, submit, or access your personal information.\nThe data that we collect from you may be transferred to, and stored at, our server. This enables us to track your progress and let you see the remaining contents.\nWe will take reasonable technical and operational security measures to protect the information that we hold about you. Once we have received your information, we will use strict procedures and security features to try to prevent unauthorized access.\nWe have given you (or where you have chosen) a password, which enables you to access the SERVICE, you are responsible for keeping this password confidential. We ask you not to share a password with anyone.\n\nDISCLOSURE OF INFORMATION\nWe do not disclose your personal information to a seller or buyer.\n\nWe may disclose your personal information to third parties as follows:\n\nIf you have given your prior consent, we may disclose your proficiency score to your employers.\nWe may disclose your information to data processors who process personal information on our behalf. Any such disclosure will be disclosed only for the purposes stated in this Privacy Policy.\nWe may use aggregated information about users (for example, the performance) in press releases relating to our competitive exam results or for similar purposes.\nWe may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.\n\nIP ADDRESS AND COOKIES\nWe may collect information about your computer, including where available your IP address, operating system and browser type, for system administration and to gather aggregate information. This is statistical data about our users’ browsing actions and patterns, and does not identify any individual.\n\nFor the same reason, we may obtain information about your general internet usage by using a cookie file, which is stored on the hard drive of your computer. We use cookies to understand and save your preferences for future visits.They enable us:\n\nTo estimate our audience size and usage pattern.\nThey help us to improve our site and to deliver a better and more personalized SERVICE.\nTo speed up your searches.\nTo recognize you when you return to the SERVICE.\nUnless you have adjusted your browser setting so that it will refuse cookies, our system will issue cookies when you log on to our Site. You may refuse to accept cookies by configuring the settings on your browser, which allows you to refuse the setting of cookies. However, if you select this setting you may be unable to access certain parts of our SERVICE or your use of the SERVICE may be hindered.\n\nCHILDRENS ONLINE PRIVACY PROTECTION ACT COMPLIANCE\nWe are in compliance with the requirements of COPPA (Children’s Online Privacy Protection Act), we do not collect any information from anyone under 13 years of age. Our website, products and SERVICEs are all directed to people who are at least 13 years old or older.\n\n\nYOUR CONSENT\nBy using our SERVICE, you consent to our privacy policy.\n\n\nALERTS\nWe may alert you by email or phone (through SMS/call) to inform you about our new service offerings, which we feel might be useful for you.\n\n\nCHANGES TO OUR PRIVACY POLICY\nAny changes we may make to our Privacy Policy in the future will be posted on this page and, where appropriate, notified to you by e-mail.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
