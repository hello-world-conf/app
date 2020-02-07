import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:helloworld/utilities/connection.dart';
import 'package:helloworld/widgets/alerts.dart';
import 'package:helloworld/widgets/verticaltabs.dart';
import 'package:url_launcher/url_launcher.dart';



class Speakers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SpeakersState();
}


class _SpeakersState extends State<Speakers>{

  Widget _speakersWidget(String imagePath, String description, BuildContext context,{String github, String linkedin, String facebook, String twitter}){
    return ListView(
      children: <Widget>[
        SizedBox(height: 15,),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(imagePath),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Color(0xff1f212c),
            )
        ),
        SizedBox(height: 15,),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    github != null ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      width: 60,
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        child: Image.asset('assets/developer-community-github-1.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
                        onPressed: () async{
                          if (await canLaunch(github)) {
                          await launch(github);
                          } else {
                          showCustomMessage(context, "Upsiii!", "It looks like something went wrong , please contact the support for this application, or go to www.helloworldconf.pt");
                          }
                        },
                      ),
                    ) : Text(""),
                    linkedin != null ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      width: 60,
                      child: FlatButton(
                        child: Image.asset('assets/professional-network-linkedin.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
                        onPressed: () async{
                          if (await canLaunch(linkedin)) {
                            await launch(linkedin);
                          } else {
                            showCustomMessage(context, "Upsiii!", "It looks like something went wrong , please contact the support for this application, or go to www.helloworldconf.pt");
                          }
                        },
                      ),
                    ) : Text(""),
                    facebook != null ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      width: 60,
                      child: FlatButton(
                        child: Image.asset('assets/social-media-facebook-1.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
                        onPressed: () async{
                          if (await canLaunch(facebook)) {
                            await launch(facebook);
                          } else {
                            showCustomMessage(context, "Upsiii!", "It looks like something went wrong , please contact the support for this application, or go to www.helloworldconf.pt");
                          }
                        },
                      ),
                    ) : Text(""),
                    twitter != null ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      width: 60,
                      child: FlatButton(
                        child: Image.asset('assets/social-media-twitter.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
                        onPressed: () async{
                          if (await canLaunch(twitter)) {
                            await launch(twitter);
                          } else {
                            showCustomMessage(context, "Upsiii!", "It looks like something went wrong , please contact the support for this application, or go to www.helloworldconf.pt");
                          }
                        },
                      ),
                    ) : Text(""),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Color(0xff1f212c),
            )
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            elevation: 7,
            child: Container(
                padding: EdgeInsets.all(10),
                child: Text(description, style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Color(0xff1f212c),
          ),
        ),

      ],
    );
  }
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/keyboard-arrow-return.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: <Widget>[
            Image.asset('assets/megaphone-1.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
            SizedBox(width: 10,),
            Text("Speakers"),
          ],
        ),elevation: 0,),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalTabs(
                  contentScrollAxis: Axis.vertical,
                  selectedTabBackgroundColor: Colors.white.withOpacity(0.1),
                  indicatorColor: Color(0xff307EBC),
                  tabsElevation: 2,
                  tabTextStyle: TextStyle(color: Colors.white),
                  tabBackgroundColor: Color(0xff232531),
                  tabsWidth: 120,
                  tabs: <Tab>[
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 260),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Maik Nogens',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 300),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Rita Castro',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 340),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Artur Moreira',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 380),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Tiago Mota Alão',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 420),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Tiago Seabra',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                    Tab(child: AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 460),
                        position: null,
                        child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Text('Luís Araújo',
                                  style: TextStyle(color: Colors.white, fontSize: 20),))))),
                  ],
                  contents: <Widget>[
                    _speakersWidget('assets/maik_hello_world.jpg', 'Maik works as a senior test consultant, where he focuses on the agile aspects of software testing. His 25+ years of work experience include working in the German Navy, being a project leader in the Middle East as well as working as a tester in different industries. As part of his passion to support the profession of testers and the craft of testing, Maik is active in many peer and community setups. Maik is a co-founder of two international peer networks, GATE (German Agile Testing and Exploratory Workshop) and PotsLightning. He runs several testing communities (STUGHH, ASQF SIG “Agility”) and established an English-speaking testing community in his hometown Hamburg, Germany. In 2014 he designed and implemented the Software Testing World Cup (STWC). This global event is run like the Olympics and happens every two years (2014, 2016 so far). He is a black belt in the Miagi-Do School of Software Testing, attended the BBST and RST courses, is a practicing testing trainer, conducts Testing Dojos and runs workshops for TestSphere, Pipeline, Kanban, SCRUM and other agile areas. He is experienced with agile and testing concepts and holds several certificates (CAT, CABA, IREB, ISTQB Full Advanced Level, CSM, etc.).', context, github: 'https://github.com/MaikNog', linkedin: 'https://www.linkedin.com/in/maiknogens/'),
                    _speakersWidget('assets/rita_hello_world.jpg', 'Software Engineer that used to build stand alone applications for data processing and mission planning systems turned into a Full-Stack Developer working with Test Driven Development, XP and Pair Programming. Also a Mom now. Awesome!',context, twitter: 'https://twitter.com/ritamcastro83' ,linkedin: 'https://www.linkedin.com/in/ritamcastro/'),
                    _speakersWidget('assets/artur_hello_world.png', 'Artur Moreira is a Senior Software Engineer at FMQ and part of a team focused on game engine development, overall architecture and code practices. Artur is C++ developer with more than 15 years of background but his expertise also covers other languages like Java, Javascript or C# for example. Despite the fact he took part in large projects in different fields (telecommunications, RCS solutions, stock exchanges and industrial measurement software) during these years, game development was a constant passion expressed in daily duties and nightly projects. Artur has been building game engines and games for most of his career, in different environments and programming styles for many of the major gaming platforms (android, ios, desktop). The speaker is also an enthusiast student of programming languages and their design. His incessant interest in researching new programming approaches and innovation which is applied in a long-running compiler and language project.',context, linkedin: 'https://www.linkedin.com/in/artur-moreira-a651212b/'),
                    _speakersWidget('assets/tiago_alao_hello_world.jpg', "Tiago has worked as IT Coordinator for several years at Américo Amorim Group, which owns, among other business Corticeira Amorim, the world's largest producer of cork. Has worked also as iOS Software Engineer at Smith Micro Software, Inc. where he joined projects ranging from geolocation to music festival applications. At 2017, join EGITRON as Software Product Manager for the cork area, leading the digitalization of cork stoppers quality control. At the beginning of the second semester of 2019, Tiago become Head of Software Engineering where is in charge for the vision and leadership all R&D Software, managing a 5+ engineering team in the development of apps, and ensure that the financial planning and the execution are met.",context,linkedin: 'https://www.linkedin.com/in/tiago-mota-alao/'),
                    _speakersWidget('assets/tiago_seabra_hello_world.jpg', "Currently VP of engineering at SWORD Health, Tiago Seabra has the responsibility of making the technology to fulfill the vision of changing the way the world does physiotherapy. In the past he was tech lead at Jumia's payment system. Current tech passions are kubernetes, Helm and Go. Next tech challenge will probably be istio.",context, linkedin: 'https://www.linkedin.com/in/tseabra/'),
                    _speakersWidget('assets/luis_araujo_hello_world.jpg', "Senior Software engineer and Team leader in the NONIUS R&D Department. Over 10 years of experience delivering technology for the hospitality market. The market itself is very demanding and constantly developing. Therefore the challenge is always at stake turning the day-to-day a thrilling race towards innovation and breaking concepts. Our mission is to engage every guest in the world with our products and solutions. The team is very knowledgeable in low level network programming, integrations across a wide variety of systems (PMS, CRS, POS, Door Locks, Domotics) and big data. Our passion for quality and performance, as well as the boldness of our ideas will certainly meet our goal. Today serving 3000 hotels in 80 countries tomorrow: world domination.",context,facebook: 'https://fb.me/noniussoftware',twitter: 'https://twitter.com/NoniusSoftware', linkedin: 'https://www.linkedin.com/in/nonius/')

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}