import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget{ @override Widget build(BuildContext c)=>MaterialApp(debugShowCheckedModeBanner:false, home:Home(), theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F7FF)));}
class Unit{ String t; String ic; Color co; List<Lesson> ls; Unit(this.t,this.ic,this.co,this.ls); }
class Lesson{ String t; String book; String exp; String img; List<Q> qz; List<Tq> tq; String vid; Lesson(this.t,this.book,this.exp,this.img,this.qz,this.tq,this.vid); }
class Q{ String q; List<String> o; int a; String ex; Q(this.q,this.o,this.a,this.ex); }
class Tq{ String q; String a; Tq(this.q,this.a); }
List<Unit> units=[
Unit("الوحدة 1: النماذج العلمية","🧪",Color(0xFF6366F1),[
Lesson("النماذج وانواعها","الكتاب ص1-9: النموذج تمثيل مبسط لظاهرة. انواعه: مادي (مجسم)، حاسوبي (محاكاة)، فكري (خريطة). يستخدم لتوضيح وتجريب وتنبؤ.",
"توسع موسوعي: المادي مثل مجسم ذرة، الحاسوبي مثل محاكاة زلزال، الفكري مثل معادلة. اهميته: توفير وقت وتكلفة وامان. مثال سوداني: نموذج مشروع الجزيرة لدراسة الري. كلما كان النموذج ابسط كان اوضح.",
"صور: مجسم DNA، نموذج بركان، خريطة مفاهيم طاقة، نموذج سيارة",
[Q("النموذج المادي هو",["فكرة فقط","مجسم ملموس","برنامج","معادلة"],1,"المادي يمكن لمسه كمجسم الكرة الارضية"),Q("اي نموذج آمن للتجارب الخطرة؟",["المادي","الحاسوبي","الفكري","لا احد"],1,"الحاسوبي آمن للانفجار النووي وغيره")],
[Tq("عرف النموذج","تمثيل مبسط لظاهرة او نظام لتسهيل دراسته"),Tq("ما فائدة النماذج؟","توضيح الافكار، التنبؤ، توفير الوقت والتكلفة")],
"https://youtu.be/search?النماذج+العلمية"),
]),
Unit("الوحدة 2: الكهرباء الساكنة","⚡",Color(0xFFF59E0B),[
Lesson("الشحنة الكهربائية","ص10-22: الذرة متعادلة. تفقد الكترون تصبح موجبة، تكسب سالبة. المتشابهة تتنافر والمختلفة تتجاذب. طرق الشحن: دلك، لمس، حث. الكشاف يكشف الشحنة.",
"توسع: قانون كولوم ق=أ ش1 ش2/ف2. البالون مع الصوف: الصوف يفقد الكترونات يصبح موجب، البالون يكسب سالب. تطبيقات: فلتر دخان المصانع، طلاء سيارات كهروستاتيكي، مانعة صواعق. الصاعقة شحنة كبيرة بين سحابة وارض.",
"صور: ذرة، كشاف، تنافر وتجاذب، صاعقة، مانعة صواعق",
[Q("بالون دلك بصوف يصبح",["موجب","سالب","متعادل","بروتون"],1,"يكسب الكترونات فيصبح سالب"),Q("المتشابهة",["تتجاذب","تتنافر","تتعادل","لا شي"],1,"المتشابهة تتنافر")],
[Tq("لماذا تنجذب قصاصات ورق لمسطرة مشحونة؟","المسطرة تشحن الورق بالحث"),Tq("ما وظيفة مانعة الصواعق؟","تفريغ الشحنة للارض")],
"https://youtu.be/الشحنة+الكهربائية"),
Lesson("القوة والمجال","ص23-32: القوة تقل مع مربع المسافة. المجال منطقة حول شحنة. خطوط المجال تخرج من موجب وتدخل سالب ولا تتقاطع.",
"توسع: شدة المجال=ق/ش. كلما قربت زادت القوة. تطبيقات: طابعة ليزر، تصفية هواء.",
"صور: خطوط مجال، قانون كولوم",
[Q("اذا تضاعفت المسافة القوة",["تتضاعف","تقل للربع","تبقى","تقل للنصف"],1,"عكسي مع مربع المسافة")],
[Tq("عرف المجال","الحيز حول الشحنة تظهر فيه القوة")],
"https://youtu.be/المجال+الكهربائي"),
]),
Unit("الوحدة 3: التيار الكهربائي","🔋",Color(0xFF10B981),[
Lesson("التيار والجهد والمقاومة وقانون اوم","ص33-55: التيار سريان شحنات امبير. الجهد قوة دافعة فولت. المقاومة اعاقة اوم. اوم: ج=ت×م. دائرة: بطارية سلك مصباح مفتاح. توالي: تيار ثابت جهد يتوزع. توازي: جهد ثابت تيار يتوزع.",
"توسع حسابي: بطارية 6ف مقاومة 3 اوم تيار=2امبير. توالي 2+3=5 اوم. توازي 1.2 اوم. ثلاجة 200واط 10س=2كيلوواط ساعة.",
"صور: دائرة بسيطة، توالي وتوازي، مثلث اوم",
[Q("وحدة التيار",["فولت","امبير","اوم","واط"],1,"امبير"),Q("توالي",["الجهد ثابت","التيار ثابت","المقاومة تقل","لا شي"],1,"تيار ثابت")],
[Tq("احسب تيار ج=12 م=4","ت=12/4=3امبير"),Tq("فرق توالي وتوازي","توالي مسار واحد ينقطع الكل، توازي مسارات مستقلة")],
"https://youtu.be/قانون+اوم"),
Lesson("القدرة والطاقة والامان","ص56-70: قدرة=ج×ت واط. طاقة=قدرة×زمن كيلوواط ساعة. فاتورة=طاقة×سعر. امان: منصهر يقطع عند زيادة، قاطع، تأريض.",
"توسع: مكيف 2000واط 5س=10كيلوواط. ترشيد: ليد، افصل اجهزة.",
"صور: عداد، قاطع، تأريض",
[Q("كيلوواط ساعة وحدة",["قدرة","طاقة","تيار","جهد"],1,"طاقة"),Q("المنصهر",["يزيد تيار","يقطع عند خطر","يقلل جهد","يخزن"],1,"يقطع لحماية")],
[Tq("كيف تحسب استهلاك؟","قدرة كيلو×ساعات"),Tq("ما التأريض؟","تفريغ زائد للارض")],
"https://youtu.be/فاتورة+الكهرباء"),
]),
Unit("الوحدة 4: التغيرات الكيميائية","🧫",Color(0xFFEF4444),[
Lesson("انواع التفاعلات","ص71-95: اتحاد، تحلل، احلال، مزدوج، تعادل، احتراق. حفظ كتلة.",
"توسع: 2H2+O2→2H2O. سرعة تزيد بحرارة تركيز مساحة حفاز. امثلة: تخمر، صابون، صدأ.",
"صور: انواع تفاعلات",
[Q("حمض+قاعدة يسمى",["اتحاد","تحلل","تعادل","احتراق"],2,"تعادل"),Q("يزيد سرعة",["خفض حرارة","زيادة تركيز","تقليل سطح","ازالة حفاز"],1,"زيادة تركيز")],
[Tq("وازن Fe+O2→Fe2O3","4Fe+3O2→2Fe2O3"),Tq("حفظ كتلة؟","كتلة متفاعلات=نواتج")],
"https://youtu.be/انواع+التفاعلات"),
Lesson("الحموض والقواعد وpH","ص96-111: حمض H+، قاعدة OH-. pH 0-14 اقل 7 حمضي اكبر قاعدي. كواشف.",
"توسع: ليمون2، دم7.4، صابون10. HCl+NaOH→NaCl+H2O. امطار حمضية.",
"صور: مقياس pH",
[Q("pH=3",["حمضي قوي","قاعدي","متعادل","ضعيف"],0,"اقل من7 حمضي"),Q("ناتج تعادل",["حمض","قاعدة","ملح وماء","غاز"],2,"ملح وماء")],
[Tq("لون عباد شمس؟","حمض احمر قاعدة ازرق"),Tq("لماذا معدة حمضية؟","HCl يهضم")],
"https://youtu.be/pH"),
]),
Unit("الوحدة 5: التكاثر والوراثة","🧬",Color(0xFF8B5CF6),[
Lesson("التكاثر","ص112-130: جنسي ذكر+انثى، لا جنسي فرد واحد. امشاج 23، اخصاب 46. نبات تلقيح ذاتي وخلطي، خضري عقل خلفات.",
"توسع: قصب بالعقل، موز بالخلفات، بطاطس درنات.",
"صور: تلقيح، تكاثر خضري",
[Q("عدد كروموسوم مشيج",["46","23","92","0"],1,"نصف 23"),Q("خضري",["جنسي","لا جنسي","بذور","تنوع"],1,"لا جنسي")],
[Tq("فرق ذاتي وخلطي","ذاتي نفس زهرة خلطي بين زهرتين")],
"https://youtu.be/التكاثر+نبات"),
Lesson("الوراثة ومندل","ص131-143: سائد R، متنحي r يحتاج rr. مربع بانيت.",
"توسع: Bb×Bb: 25% bb ازرق. انيميا منجلية فحص قبل زواج.",
"صور: مربع بانيت",
[Q("Bb×Bb نسبة bb",["25%","50%","75%","100%"],0,"25%"),Q("متنحية تظهر",["سائد واحد","اثنين متنحيين","لا تظهر","ذكور"],1,"تحتاج اثنين")],
[Tq("ما مربع بانيت؟","التنبؤ بصفات ابناء"),Tq("مرض وراثي","منجلية")],
"https://youtu.be/مندل"),
]),
Unit("الوحدة 6: الكائنات الدقيقة","🦠",Color(0xFF06B6D4),[
Lesson("بكتيريا وفيروسات","ص144-158: بكتيريا وحيدة خلية كروي عصوي حلزوني، نافع زبادي، ممرض تسمم. فيروس اصغر لا يتكاثر الا داخل خلية. مضاد يقتل بكتيريا فقط.",
"توسع: فول سوداني يثبت نيتروجين. كورونا رذاذ. لقاح.",
"صور: بكتيريا، فيروس كورونا",
[Q("نافعة في",["زبادي","كورونا","ايدز","انفلونزا"],0,"زبادي"),Q("مضاد يقتل",["بكتيريا فقط","فيروس فقط","اثنين","لا شي"],0,"بكتيريا فقط")],
[Tq("كيف تحمي؟","غسل يدين طهي جيد"),Tq("فرق بكتيريا وفيروس","بكتيريا خلية حية فيروس يحتاج عائل")],
"https://youtu.be/بكتيريا+فيروس"),
]),
Unit("الوحدة 7: الارض","🌍",Color(0xFF84CC16),[
Lesson("الصخور والمعادن والزلازل","ص159-192: نارية جرانيت بازلت، رسوبية رمل جيري، متحولة رخام. زلازل صفائح ريختر، براكين. موارد سودان ذهب بحر احمر، بترول، اسمنت عطبرة.",
"توسع: قشرة 5-70كم، وشاح 2900كم، لب حديد. تصرف زلزال تحت طاولة.",
"صور: انواع صخور، طبقات ارض",
[Q("جرانيت",["رسوبي","ناري","متحول","عضوي"],1,"ناري"),Q("مقياس زلازل",["سيلزيوس","ريختر","بارومتر","امبير"],1,"ريختر")],
[Tq("انواع صخور","نارية جرانيت رسوبية رملي متحولة رخام"),Tq("ماذا تفعل زلزال؟","تحت طاولة")],
"https://youtu.be/انواع+الصخور"),
]),
];
class Home extends StatelessWidget{ @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text("علوم تالتة متوسط 🇸🇩 - موسوعة"),backgroundColor:Colors.indigo,centerTitle:true), body:ListView(padding:EdgeInsets.all(12),children:[Card(color:Colors.indigo.shade50,child:ListTile(title:Text("المنهج الرسمي 2024 - 192 صفحة - 7 وحدات - موسع + حل تقويم",style:TextStyle(fontWeight:FontWeight.bold)),subtitle:Text("كل درس: شرح كتاب + توسع + صور + حل + اختبار"))),SizedBox(height:8),ElevatedButton.icon(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Exam())),icon:Icon(Icons.quiz),label:Text("اختبار شهادة شامل 20 سؤال"),style:ElevatedButton.styleFrom(backgroundColor:Colors.deepOrange,foregroundColor:Colors.white,padding:EdgeInsets.all(16))),SizedBox(height:12),...units.map((u)=>Card(elevation:3,child:ListTile(leading:CircleAvatar(backgroundColor:u.co,child:Text(u.ic)),title:Text(u.t,style:TextStyle(fontWeight:FontWeight.bold)),subtitle:Text("${u.ls.length} دروس - مع الحل والاختبار"),trailing:Icon(Icons.arrow_forward_ios),onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>UnitPage(u:u)))))).toList()]));
}
class UnitPage extends StatelessWidget{ final Unit u; UnitPage({required this.u}); @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text(u.t),backgroundColor:u.co),body:ListView.builder(itemCount:u.ls.length,itemBuilder:(cc,i){var l=u.ls[i]; return Card(child:ListTile(title:Text(l.t),subtitle:Text("شرح + توسع + حل + اختبار + فيديو"),onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>LessonPage(l:l,co:u.co)))));}));
}
class LessonPage extends StatefulWidget{ final Lesson l; final Color co; LessonPage({required this.l,required this.co}); @override _LP createState()=>_LP();}
class _LP extends State<LessonPage> with SingleTickerProviderStateMixin{ late TabController tab; @override void initState(){super.initState(); tab=TabController(length:5,vsync:this);} @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text(widget.l.t),backgroundColor:widget.co,bottom:TabBar(controller:tab,isScrollable:true,tabs:[Tab(text:"📖 شرح"),Tab(text:"💡 موسع"),Tab(text:"🖼️ صور"),Tab(text:"📝 حل تقويم"),Tab(text:"✅ اختبار")])),body:TabBarView(controller:tab,children:[SingleChildScrollView(padding:EdgeInsets.all(16),child:Text(widget.l.book,style:TextStyle(fontSize:16,height:1.8))),SingleChildScrollView(padding:EdgeInsets.all(16),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(widget.l.exp,style:TextStyle(fontSize:16,height:1.8)),SizedBox(height:20),Container(padding:EdgeInsets.all(12),color:Colors.amber.shade100,child:Text("🎥 فيديو:\n${widget.l.vid}"))])),SingleChildScrollView(padding:EdgeInsets.all(16),child:Text(widget.l.img,style:TextStyle(fontSize:16,height:1.8))),ListView.builder(padding:EdgeInsets.all(12),itemCount:widget.l.tq.length,itemBuilder:(cc,i){var t=widget.l.tq[i]; return Card(color:Colors.green.shade50,child:ListTile(title:Text("س: ${t.q}",style:TextStyle(fontWeight:FontWeight.bold)),subtitle:Text("ج: ${t.a}")));}),QuizView(qz:widget.l.qz)]));}
class QuizView extends StatefulWidget{ final List<Q> qz; QuizView({required this.qz}); @override _QV createState()=>_QV();}
class _QV extends State<QuizView>{ int idx=0,sc=0; int? sel; bool sh=false; @override Widget build(BuildContext c){ if(widget.qz.isEmpty) return Center(child:Text("لا يوجد")); var q=widget.qz[idx]; return Padding(padding:EdgeInsets.all(16),child:Column(children:[LinearProgressIndicator(value:(idx+1)/widget.qz.length),SizedBox(height:12),Text("سؤال ${idx+1}/${widget.qz.length}"),Text(q.q,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),SizedBox(height:12),...List.generate(q.o.length,(i)=>Card(color:!sh?Colors.white:(i==q.a?Colors.green.shade200:(i==sel?Colors.red.shade200:Colors.white)),child:RadioListTile(value:i,groupValue:sel,title:Text(q.o[i]),onChanged:sh?null:(v)=>setState(()=>sel=v as int)))),SizedBox(height:12),if(sel!=null&&!sh)ElevatedButton(onPressed:()=>setState(){sh=true; if(sel==q.a) sc++;},child:Text("تحقق")),if(sh)Column(children:[Text(sel==q.a?"✅ صحيح":"❌ خطأ",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:sel==q.a?Colors.green:Colors.red)),Container(padding:EdgeInsets.all(12),color:Colors.blue.shade50,child:Text("الشرح: ${q.ex}")),ElevatedButton(onPressed:(){if(idx<widget.qz.length-1){setState((){idx++; sel=null; sh=false;});}else{showDialog(context:c,builder:(_)=>AlertDialog(title:Text("النتيجة"),content:Text("أحرزت $sc من ${widget.qz.length}"),actions:[TextButton(onPressed:(){Navigator.pop(c); setState((){idx=0; sc=0; sel=null; sh=false;});},child:Text("إعادة"))]));}},child:Text(idx<widget.qz.length-1?"التالي":"النتيجة"))])]));}}
class Exam extends StatefulWidget{ @override _Ex createState()=>_Ex();}
class _Ex extends State<Exam>{ List<Q> ex=[]; @override void initState(){super.initState(); List<Q> all=[]; for(var u in units) for(var l in u.ls) all.addAll(l.qz); all.shuffle(); ex=all.take(20).toList();} int idx=0,sc=0; int? sel; bool sh=false; @override Widget build(BuildContext c){ if(ex.isEmpty) return Scaffold(appBar:AppBar(title:Text("اختبار")),body:Center(child:CircularProgressIndicator())); var q=ex[idx]; return Scaffold(appBar:AppBar(title:Text("شهادة ${idx+1}/20"),backgroundColor:Colors.deepOrange),body:Padding(padding:EdgeInsets.all(16),child:Column(children:[LinearProgressIndicator(value:(idx+1)/20,color:Colors.deepOrange),SizedBox(height:16),Text(q.q,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),...List.generate(q.o.length,(i)=>Card(color:!sh?Colors.white:(i==q.a?Colors.green.shade200:(i==sel?Colors.red.shade200:Colors.white)),child:RadioListTile(value:i,groupValue:sel,title:Text(q.o[i]),onChanged:sh?null:(v)=>setState(()=>sel=v as int)))),SizedBox(height:16),if(sel!=null&&!sh)ElevatedButton(onPressed:()=>setState(){sh=true; if(sel==q.a) sc++;},child:Text("تحقق")),if(sh)Column(children:[Text(sel==q.a?"✅":"❌ ${q.ex}"),ElevatedButton(onPressed:(){if(idx<19){setState((){idx++; sel=null; sh=false;});}else{showDialog(context:c,builder:(_)=>AlertDialog(title:Text("نتيجتك"),content:Text("أحرزت $sc /20\n${sc>=15?'ممتاز جاهز للشهادة 🌟':sc>=10?'جيد':'يحتاج مراجعة'}"),actions:[TextButton(onPressed:(){Navigator.pop(c); Navigator.pop(c);},child:Text("إنهاء"))]));}},child:Text(idx<19?"التالي":"النتيجة"))])])));}}
