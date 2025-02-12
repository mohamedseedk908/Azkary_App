import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdhkarAliastiqaz extends StatefulWidget {
  @override
  _AzkarAlsabahScreenState createState() => _AzkarAlsabahScreenState();
}

class _AzkarAlsabahScreenState extends State<AdhkarAliastiqaz> {
  // قائمة الأذكار مع عدد مرات التكرار المطلوبة
  final List<Map<String, dynamic>> azkarAlsabah = [
    {
      'text': ' الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.   ',
      'repeat': 1,
    },
    {
      'text': '  الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه ',
      'repeat': 1,
    },
    {
      'text': '  لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي ',
      'repeat': 1,
    },


    // أضف المزيد من الأذكار هنا
  ];

  // قائمة لتتبع عدد المرات التي تم فيها تكرار كل ذكر
  late List<int> counters;

  @override
  void initState() {
    super.initState();
    // تهيئة قائمة العدادات بصفر
    counters = List<int>.filled(azkarAlsabah.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أذكار الصباح'),
      ),
      body: ListView.builder(
        itemCount: azkarAlsabah.length,
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.black,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text( textAlign: TextAlign.center,
                    azkarAlsabah[index]['text'],
                    style: TextStyle(fontSize: 25.sp,color: AppColors.offWhite),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' العدد: ${azkarAlsabah[index]['repeat']},',
                        style: TextStyle(fontSize: 25.sp,color: AppColors.lightGrey),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (counters[index] > 0) counters[index]--;
                              });
                            },
                          ),
                          Text(
                            '${counters[index]}',
                            style: TextStyle(fontSize: 25.sp,color: AppColors.offWhite),
                          ),
                          IconButton(
                            color: AppColors.red,
                            icon: Icon(Icons.add,size: 35.sp,),
                            onPressed: () {
                              setState(() {
                                if (counters[index] <
                                    azkarAlsabah[index]['repeat'])
                                  counters[index]++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
