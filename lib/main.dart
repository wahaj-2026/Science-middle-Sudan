import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner:false,home:S(),theme:ThemeData(fontFamily:'Cairo')));}
class S extends StatelessWidget{
final u=[
{"t":"الوحدة 1: النماذج 🧪","d":[{"t":"النماذج","b":"النموذج تمثيل مبسط. انواع: مادي مجسم، حاسوبي محاكاة، فكري معادلة. مثال: نموذج مشروع الجزيرة.","e":"توسع: المادي مثل DNA، الحاسوبي توقع طقس، الفكري خريطة مفاهيم. كلما بسط كلما وضح.","q":"ما المادي؟","o":["فكرة","مجسم ملموس","برنامج"],"a":1,"tq":"عرف النموذج: تمثيل مبسط لظاهرة"}]},
{"t":"الوحدة 2: ساكنة ⚡","d":[{"t":"الشحنة","b":"الذرة متعادلة. فقد e موجب، كسب سالب. متشابه تتنافر مختلف تتجاذب. شحن: دلك لمس حث.","e":"قانون كولوم ق=9e9 ش1 ش2/ف2. بالون+صوف: صوف موجب بالون سالب يلتصق. تطبيقات: فلتر اسمنت عطبرة، مانعة صواعق.","q":"بالون دلك بصوف؟","o":["موجب","سالب"],"a":1,"tq":"وظيفة مانعة: تفريغ للارض"}]},
{"t":"الوحدة 3: تيار 🔋","d":[{"t":"اوم","b":"تيار امبير، جهد فولت، مقاومة اوم. ج=ت×م. توالي تيار ثابت، توازي جهد ثابت.","e":"6ف/3اوم=2امبير. توالي 2+3=5اوم. توازي=1.2اوم. ثلاجة 200واط 10س=2كيلوواط.","q":"وحدة تيار؟","o":["فولت","امبير"],"a":1,"tq":"احسب ت: ج12 م4=3امبير"}]},
{"t":"الوحدة 4: كيمياء 🧫","d":[{"t":"تفاعلات","b":"اتحاد تحلل احلال تعادل حمض+قاعدة=ملح+ماء. حفظ كتلة.","e":"2H2+O2=2H2O. سرعة تزيد حرارة تركيز. تخمر عجين سوداني.","q":"حمض+قاعدة؟","o":["اتحاد","تعادل"],"a":1,"tq":"وازن Fe+O2=4Fe+3O2=2Fe2O3"}]},
{"t":"الوحدة 5: وراثة 🧬","d":[{"t":"مندل","b":"سائد يظهر، متنحي يحتاج اثنين. مربع بانيت.","e":"Bb×Bb=25% bb ازرق. منجلية فحص قبل زواج.","q":"Bb×Bb نسبة bb؟","o":["25%","50%"],"a":0,"tq":"مربع بانيت: تنبؤ صفات"}]},
{"t":"الوحدة 6: دقيقة 🦠","d":[{"t":"بكتيريا","b":"بكتيريا خلية، فيروس اصغر يحتاج عائل. مضاد يقتل بكتيريا فقط.","e":"فول يثبت نيتروجين، زبادي نافع، كورونا رذاذ.","q":"مضاد يقتل؟","o":["بكتيريا فقط","فيروس"],"a":0,"tq":"فرق: بكتيريا حية وحدها فيروس يحتاج خلية"}]},
{"t":"الوحدة 7: الارض 🌍","d":[{"t":"صخور","b":"نارية جرانيت، رسوبية جيري، متحولة رخام. زلازل ريختر، براكين. موارد سودان ذهب اسمنت.","e":"عطبرة حجر جيري، ذهب بحر احمر، طبقات قشرة وشاح لب. عند زلزال تحت طاولة.","q":"جرانيت؟","o":["رسوبي","ناري"],"a":1,"tq":"انواع: نارية جرانيت رسوبية رملي متحولة رخام"}]},
];
@override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text("علوم تالتة متوسط 🇸🇩 موسوعة"),backgroundColor:Colors.indigo),body:ListView(children:[Card(child:ListTile(title:Text("192 صفحة - موسوعي + حل تقويم + فيديو",style:TextStyle(fontWeight:FontWeight.bold)))),...u.map((x)=>Card(child:ExpansionTile(leading:CircleAvatar(child:Text("📚")),title:Text(x["t"]),children:(x["d"] as List).map((l)=>ListTile(title:Text(l["t"]),subtitle:Text("${l["b"]}\n\n💡 ${l["e"]}\n\n📝 حل: ${l["tq"]}"),onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>D(l:l))))).toList()))).toList()]));
}
class D extends StatelessWidget{
final Map l; D({required this.l});
@override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text(l["t"])),body:ListView(padding:EdgeInsets.all(16),children:[Text("📖 شرح الكتاب:\n${l["b"]}",style:TextStyle(fontSize:16,height:1.8)),Divider(),Text("💡 موسع أكثر من الكتاب:\n${l["e"]}",style:TextStyle(fontSize:16,height:1.8,color:Colors.green.shade800)),Divider(),Text("📝 حل التقويم:\n${l["tq"]}"),SizedBox(height:20),Card(color:Colors.orange.shade100,child:ListTile(title:Text("اختبار: ${l["q"]}"),subtitle:Column(children:(l["o"] as List<String>).map((o)=>Text("• $o")).toList()))),ElevatedButton(onPressed:(){ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text("الإجابة الصحيحة رقم ${l["a"]+1}")));},child:Text("تحقق من الإجابة"))]));
}
