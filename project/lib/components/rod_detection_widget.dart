import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rod_detection_model.dart';
export 'rod_detection_model.dart';

class RodDetectionWidget extends StatefulWidget {
  const RodDetectionWidget({super.key});

  @override
  State<RodDetectionWidget> createState() => _RodDetectionWidgetState();
}

class _RodDetectionWidgetState extends State<RodDetectionWidget>
    with TickerProviderStateMixin {
  late RodDetectionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RodDetectionModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'মানসিক রোগ বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.tiroBangla(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF040505),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মানসিক সমস্যার রোগীদের সুস্থ করে তোলার চেষ্টা করেন। মানসিক, অবসাদ, বা অধিক চিন্তাই ডিপ্রেশন এ চলে যাওয়া রোগিদের সুস্থ করে তুলার জন্য চিকিৎসা করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে মানসিক রো বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF111010),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nডার্মাটোলজিস্ট ( ত্বক বা চর্মরোগ বিশেষজ্ঞ/অভিজ্ঞ): ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মূলত দাঁদ, একজিমা, সোরিয়াসিস, ছুলি, মেছতা, ব্রণ, খুজলি, স্ক্যাবিস, ফুসকুড়ি, তিল বা আঞ্চিল, বিভিন্ন ত্বকের এলার্জি, ত্বকে ক্যান্সার, নখের সমস্যা, চুল পড়া বা টাঁক সমস্যা সমাধান করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন। তাহলে ডার্মাটোলজিস্ট ( ত্বক বা চর্মরো বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF010101),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nডায়বেটিস বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF050505),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nতেষ্টা ও প্রস্রাবের মাত্রা বৃদ্ধি: পিপাসা বা তেষ্টা বেড়ে যাওয়া বা ঘনঘন প্রস্রাবের বেগ পাওয়ার সমস্যা দুটি ডায়াবেটিস রোগের ক্ষেত্রে খুবই সাধারণ লক্ষণ। সাধারণত, একজন সুস্থ মানুষ সারাদিনে ৬-৭ বার প্রস্রাব করেন। \nপরিবেশ বা পরিস্থিতি পরিবর্তনে দিনে ৪-১০ বার প্রস্রাবকেও স্বাভাবিক ধরা হয়। তার বেশি হলেই আপনি ডায়বেটিস বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের পরামর্শ নিন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF131111),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nএন্ডোক্রিনোলজিস্ট (হরমন বিশেষজ্ঞ/অভিজ্ঞ): ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF010101),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ প্রধানত শরীরের বিভিন্ন চা হরমোন, এবং বিপাক জাত রাসায়নিক পদার্থের রো সমস্যার সমাধানের করে থাকেন। এছাড়াও জনন সংক্রান্ত সমস্যার সমাধান করেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে এন্ডোক্রিনোলজিস (হরমন বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0F0E0E),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nপ্লাস্টিক সার্জন ( প্লাস্টিক ও কসমেটিক সার্জারি বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0B0A0A),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ প্রধানত চামড়া, স্তন, হাত পা, মুখ বা শরীরের বিভিন্ন অংশ সার্জারি বা অপারেশ এর মাধ্যমে নতুন রুপ দিয়ে থাকেন এবং কোনো ভাবে মারাত্বক আঘাতের ফলে কোন ক্ষতস্থান কে নতুন রুপ দেওয়ার চিকিৎসা করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে প্লাস্টিক সার্জন ( প্লাস্টিক ও কসমেটিক সার্জারি বিশেষজ্ঞ/ অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF030303),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nনিউরোসার্জন বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF050505),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ নিউরলজিস্ট বিভাগের কাছাকাছি বলতে পারেন। এই বিভাগের ডাক্তারগণ নার্ভের সমস্যার সমধান এর জন্য অপারেশন করেন। মাথার খুলির সমস্যা, ব্রেনের নার্ভের সমস্যা, ঘাড়ের নার্ভের সমস্যা ইত্যাদি। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে নিউরোসার্জন বিশেষজ্ঞ/ অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0C0C),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nগাইনীকোলজিস্ট (স্ত্রী ও প্রসূতি বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF050505),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nপ্রেগন্যান্সি, শিশু জন্মানো, অনিয়মিত মাসিক, সাদাস্রাব অতিরজঃ বা মেনোরেজিয়া, ভেজাইনাল ক্যান্ডিডেডাস সহ গাইনি ও অবস জাতীয় সমস্যার জন্য আপনি গাইনীকোলজিস্ট (স্ত্রী ও প্রসূতি বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের চিকিৎসা নিতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0F0E0E),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nঅনকোলজিস্ট ( ক্যান্সার বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nগ্রিক শব্দ “Onkos” এর মানে হল টিউমার বা মাংস পিন্ড বা মাংসের দলা। এই বিভাগের ডাক্তার গুলো প্রধানত ক্যান্সার ও টিউমার এর চিকিৎসা করে\nচা থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন রো তাহলে অনকোলজিস্ট ( ক্যান্সার বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nএ্যানেস্থেসিওলজিস্ট / এ্যানেস্থেসিস্ট (অজ্ঞান বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ আপনাকে অবচেতন করবেন বা আপনার শরীরের কোন একটা বিশেষ যায়গা অবশ করে দিবেন বিভিন্ন রকম ঔষধ বা ইঞ্জেকশন এর মাধ্যমে এবং আপনার যন্ত্রনা থেকে মুক্তি দেওয়ার চেষ্টা করবেন। এই সব ডাক্তার এর কাজ মূলত- ১. অপারেশন বা সার্জারি করার সময়। ২. বাচ্চা প্রসব কালীন। উক্ত ধরণের কোন সমস্যা হলে আপনি এ্যানেস্থেসিওলজিস্ট / এ্যানেস্থেসিস্ট (অজ্ঞান বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF030303),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nগ্যাস্ট্রো- এন্টেরোলজিস্ট (গ্যাস্ট্রো- লিভার বিশেষজ্ঞ/ অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ বিশেষ করে হজমের সমস্যা তথা পাকস্থলী, যকৃত, বৃহদন্ত, ক্ষুদ্রান্ত বিষয়ক সমস্যা সমাধান করে থাকেন। এছাড়াও এন্ডোস্কপী, লিভার- বায়ন্সী এই সব পরীক্ষা-নিরিক্ষা ও করেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে গ্যাস্ট্রো- এন্টেরোলজিস্ট (গ্যাস্ট্রো- লিভার বিশেষজ্ঞ) বিশেষজ্ঞ, অভিজ্ঞ ডাক্তারগণের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nপালমোনোলজিস্ট বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF010101),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ ফুস্ফুসের চিকিৎসা করেন। ফুস্ফুসের বিভিন্ন রোগ এর সমস্যা সমাধান করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে পালমোনোলজিস্ট বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF131111),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nমেডিসিন বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nমেডিসিন বিশেষজ্ঞ ডাক্তারগণ সকল প্রকার প্রাথমিক রোগের চিকিৎসা করে থাকেন। তাই রোগ গুরুত্বর না হলে আপনি মেডিসিন বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের চিকিৎসা নিতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF050404),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nকার্ডিওলজিস্ট (হৃদরোগ বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ প্রধানত হার্ট বা হৃদরোগ বিশেষজ্ঞ হয়ে থাকেন। হার্টের কোন সমস্যা সমাধানে জন্য এদের কাছে যান। এছাড়াও শিরা, উপশিরা বা ধমনীতে রক্ত সঞ্চালনের সমস্যার জন্য ও আপনি কার্ডিওলজিস্ট (হৃদরোগ বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের কাছে যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nহেপাটোলজিস্ট (যকৃত বা লিভার বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nপিত্তনালী, গল ব্লাডার ও যকৃতের রোগের সমস্যা নির্ণয়ের এবং সমাধানের কাজ করেন একজন হেপাটোলজিস্ট উক্ত সমস্যা সমাধানের জন্য হেপাটোলজিস্ট (যকৃত বা লিভার বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।\n',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0F0E0E),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nনিউরোলজিস্ট ( স্নায়ু রোগ বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগ টি যথেষ্ট গুরুত্বপূর্ন একটা বিভাগ, এই বিভাগের ডাক্তারগণ মূলত নার্ভের সমস্যার সমাধান করেন। ব্রেন, স্পাইন্যাল কর্ড, এবং নিউরোনের সমস্যার সমাধান প্রদান করেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে নিউরোলজিস্ট (স্নায়ু রোগ বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nঅপথালমোলজিস্ট ( চক্ষু বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nএই বিভাগের ডাক্তারগণ মূলত চোখের সমস্যা সমাধানের জন্য। বিভিন্ন রকমের সমস্যা যেমন- শুস্ক চোখ, চোখে টিউমার, চোখে বিভিন্ন এলার্জি ইত্যাদি রোগের চিকিৎসা করে থাকেন। আপনি যদি উক্ত রোে আক্রান্ত হয়ে থাকেন। তাহলে অপথালমোলজিস্ট ( চক্ষু বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন ৷',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF111010),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nপেডিয়েট্রিশিয়ান ( শিশুরোগ বিশেষজ্ঞ / অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0B0A0A),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মূলত শিশু জন্মানো থেকে বড় হওয়া পর্যন্ত বিভিন্ন সমস্যার চিকিৎসা করে থাকেন এবং শিশু মনস্তাত্বিক বিকাশের জন্য ও আপনি চা পেডিয়েট্রিশিয়ান ( শিশুরোগ বিশেষজ্ঞ / অভিজ্ঞ) রো ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nঅর্থোপেডিস্ট (পেশী এবং হাড় বিশেষজ্ঞ/অর্থোপেডিব সার্জন/অভিজ্ঞ ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090808),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মূলত হাড় ভাঙ্গা, হাড়ের বিভিন্ন সমস্যা, হাড় বেঁকে যাওয়া, টেন্ডন, লিগামেন্ট ও সব সমস্যার চিকিৎসা করে থাকেন। আপনি যদি উক্ত সমস্যায় আক্রান্ত হয়ে থাকেন তাহলে অর্থোপেডিস্ট (পেশী এবং হাড় বিশেষজ্ঞ/অর্থোপেডিক সার্জন/ অভিজ্ঞ) ডাক্তার দেখাতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nস্পোর্টস্ মেডিসিন বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nআপনি যদি খেলাধুলা/ক্রীড়া সংক্রান্ত কোন রোগে আক্রান্ত হয়ে থাকেন তাহলে আপনি স্পোর্টস মেডিসিন বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের চিকিৎসা নিতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF131111),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nডেন্টিস্ট ( দন্ত চিকিৎসক/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF050404),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মূলত দাঁত ক্ষয়ে যাওয়া, দা পড়া, মাড়ি দিয়ে রক্ত পড়া, দূর্ঘটনায় দাঁত ক্ষতিগ্রস্থ হওয়া, ঠান্ডা খাবার বা পানি গ্রহণে দাঁত শিরশির করা মুখে দূর্গন্ধ হওয়া, অকালে দাঁত পড়ে যাওয়া, কৃত্রিম বা বাঁধানো দাঁত, আক্কেল দাঁত উঠা, অবাঞ্চিত দাতেঁর ব্যাথা এবং দাতেঁর অপারেশন করে থাকে। আপনি যা উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে ডেন্টিস্ট ( দ চিকিৎসক/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nচেস্ট স্পেশালিষ্ট (বক্ষ ব্যাধি বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ মূলত ফুসফুসসহ শ্বাসযন্ত্রের বিভিন্ন রোগ ব্যাধি যেমন শ্বাসকষ্ট, নিউমোনিয়া, যক্ষা, কাশির সাথে বেশি কফ বের হওয়া, শ্বাস নিতে বুকে আওয়াজ হওয়া ইত্যাদি রোগের চিকিৎসা করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে চেস্ট স্পেশালিষ্ট (বক্ষ ব্যাধি বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।\n',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF090707),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nসংক্রামক রোগ বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: TextStyle(
                        color: Color(0xFF070606),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তার গুলো বিভিন্ন ইনফেকশন জনিত রোগ, বা ছোঁয়াচে রোগ এর সমস্যা সমাধান করে থাকেন যেমন টিবি (TB), এডস (AIDS), বিভিন্ন রকমের জ্বর, বমি, পাতলা পায়খানা, করোনা (Corona) ইত্যাদি। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে সংক্রামক রোগ বিশেষজ্ঞ/অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF171515),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nরেডিওলজিস্টঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0C0C),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ কিছু পরিচিত পরীক্ষা-নিরিক্ষ করেন। যেমন X-Ray, CT Scan, MRI ইত্যাদি। চা আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে রো রেডিওলজিস্ট ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF151313),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nহেমাটোলজিস্ট ( রক্ত ও অস্থি-মজ্জার রোগ বিশেষজ্ঞ রক্ত রোগ বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0F0E0E),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ প্রধানত রক্তের সমস্যা সমাধানের জন্য। যেমন রক্তাল্পতা, রক্তে হিমোগ্লোবিন এর পরিমান কমে যাওয়ার জন্য বিভিন্ন সমস্যার সমাধান করেন। এছাড়াও স্প্লিন, লিউকমিয়া, হিমোফিলা, লিম্ফ গ্ল্যান্ডের কোন সমস্যার সমাধান দিয়ে থাকেন। উক্ত সমস্যা সমাধানের জন্য আপনি হেমাটোলজিস্ট ( রক্ত ও অস্থি-মজ্জার রোগ বিশেষজ্ঞ রক্ত রোগ বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nনেফ্রোলজিস্ট (কিডনিরোগ বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0D0B0B),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ কিডনী সমস্যার সমাধানের জন্য সর্বদা প্রস্তুত। কিডনী বায়ন্সী, কিডনীতে পাথর, ডায়ালিসিস, এছাড়াও কিডনির বিভিন্ন রোগের সমাধান প্রদান করেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে নেফ্রোলজিস্ট (কিডনিরোগ বিশেষজ্ঞ/ অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0B0A0A),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n\n\nজেনারেল সার্জন/সার্জারী বিশেষজ্ঞ/অভিজ্ঞঃ',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF111010),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগের ডাক্তারগণ বিভিন্ন রকমের অপারেশনের জন্য প্রস্তুত। শরীরের কোন ক্ষতিকর পদার্থ বাদ দেওয়া, বা কোন ক্ষত কে ঠিক করার জন্য চিকিৎসা করে থাকেন। আপনি যদি উক্ত রোগে আক্রান্ত হয়ে থাকেন তাহলে জেনারেল সার্জন/সার্জারী বিশেষজ্ঞ/ অভিজ্ঞ ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontSize: 15.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\n\nই এন টি সার্জন বা স্পেশালিস্ট (নাক, কান ও গলা বিশেষজ্ঞ/অভিজ্ঞ):',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF070606),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n\nএই বিভাগ টি আমরা সকলেই ENT বিভাগ নামেই বেশি পরিচিত। নাক-কান-গলা বা কান-নাক-গলা নামেই জানি সকলেই। এই বিভাগের ডাক্তারগণ মূলত কান, নাক ও গলার বিভিন্ন সমস্যার সমাধান করেন। উক্ত সমস্যার জন্য আপনি ই এন টি সার্জন বা স্পেশালিস্ট (নাক, কান ও গলা বিশেষজ্ঞ/অভিজ্ঞ) ডাক্তারের নিকট যেতে পারেন।',
                      style: GoogleFonts.tiroBangla(
                        color: Color(0xFF0F0D0D),
                        fontSize: 15.0,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF010101),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'হ্যাঁ! বুঝতে পারছি!!',
                options: FFButtonOptions(
                  width: 365.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF009788),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.tiroBangla(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: Color(0xFFD5F9F9),
                  hoverBorderSide: BorderSide(
                    color: Color(0xFFD5F9F9),
                  ),
                  hoverTextColor: Color(0xFFD5F9F9),
                ),
              ),
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
