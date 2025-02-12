import 'package:azkary_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdhdhkarBaedAlsalaa extends StatefulWidget {
  @override
  _AzkarAlsabahScreenState createState() => _AzkarAlsabahScreenState();
}

class _AzkarAlsabahScreenState extends State<AdhdhkarBaedAlsalaa> {
  // قائمة الأذكار مع عدد مرات التكرار المطلوبة
  final List<Map<String, dynamic>> azkarAlsabah = [
    {
      'text': ' أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله. اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام   ',
      'repeat': 1,
    },
    {
      'text': ' لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد  ',
      'repeat': 1,
    },
    {
      'text': ' لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.   ',
      'repeat': 1,
    },
    {
      'text': ' سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.  ',
      'repeat': 33
    },
    {
      'text': '  لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير ',
      'repeat': 1,
    },{
      'text': ' بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى  ',
      'repeat': 3,
    },{
      'text': 'ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ',
      'repeat': 3,
    },{
      'text': ' بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى  ',
      'repeat': 3,
    },{
      'text': ' عُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.  ',
      'repeat': 1,
    },
    {
      'text': '  لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.  ',
      'repeat': 10,
    },
    {
      'text': '  اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً. بَعْد السّلامِ من صَلاةِ الفَجْر ',
      'repeat': 1,
    },
    {
      'text': '  اللَّهُمَّ أَجِرْنِي مِنْ النَّار. بعد صلاة الصبح والمغرب',
      'repeat': 7,
    },
    {
      'text': ' اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.  ',
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
