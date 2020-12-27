import 'package:flutter/material.dart';
import 'package:intro_ui/pages/App.dart';
import 'package:intro_ui/pages/MyHomePage.dart';

class IntroApp extends StatefulWidget {
  static final String id='IntroApp';
  @override
  _IntroAppState createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  List<Items> _lists=[
    Items(image:'asset/images/illustration.png' ,text: 'Search',title: 'you will able to find any production by pressing one button'),
    Items(image:'asset/images/illustration3.png' ,text: 'Delivery',title: 'we well able to deliver your order in time'),
    Items(image:'asset/images/illustration2.png' ,text: 'Eat',title: 'we will guarantee our goods i mean dont worry about it')
  ];
  int currentIndex=0;
  PageController _pagecontroller;
  @override
  initState(){
    super.initState();
    _pagecontroller=PageController();
  }
    dispose(){
      _pagecontroller.dispose();
      super.dispose();
    }
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // PageView for items


          PageView.builder(
            controller: _pagecontroller,
              onPageChanged: (int page){
              setState(() {
                currentIndex=page;
              });
              },
              itemCount: _lists.length,itemBuilder: (ctx,index){
            return Stack(
              children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text(_lists[index].text,style: TextStyle(fontSize: 20,color: Colors.purple),),
                SizedBox(height: 10,),
                Text(_lists[index].title,style: TextStyle(fontSize: 15)),

                Container(
                  height:250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:AssetImage(_lists[index].image)
                      )
                  ),
                ),

              ],),
                if(index==2)Container(
                  padding:EdgeInsets.all(20),
                    child:Align(
                    alignment:Alignment.bottomRight,
                    child:GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context,MyHomePage.id);
                        },child:Text('Skip',style:TextStyle(fontSize: 17))
                    ),
                  )
                ),
              ],
            );
          }),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children:_inicator()
                ),],
            ),
          )

        ],
      ),
      //shu
      // another part



    );

  }

  Widget pageControlers(bool isRight){
    return AnimatedContainer(duration:Duration(milliseconds: 200),
    width: isRight?10:6,
      height: isRight?10:6,
      decoration: BoxDecoration(
        color:isRight?Colors.grey:Colors.grey[400],
            borderRadius: BorderRadius.circular(12)
      ),


    );
  }
  List <Widget>_inicator(){
    List<Widget> items=[];
    for(int i=0;i<_lists.length;i++){
      if(currentIndex==i){
        items.add(pageControlers(true));
      }
      else{
        items.add(pageControlers(false));
      }
    }
    return items;


  }


}
