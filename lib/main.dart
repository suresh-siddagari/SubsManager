import 'package:flutter/material.dart';
import 'AppStyles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: Stack(
        
       children: [
         Container(
            constraints: BoxConstraints.expand(height:200),
         decoration: BoxDecoration(
           color: blueColor, 
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60) ) 
         ),
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text("Subscription Manager", style: AppHeadingText),
           Padding(
             padding: const EdgeInsets.only(top: 10,),
             child: Text("Suresh Siddagari", style:userNameText),
           ),
           
         ],),
         ),
         Container(
            margin: EdgeInsets.only(top:160, left: MediaQuery.of(context).size.width / 2 -35),
            
            height: 80,
            width: 80,
              child: FittedBox
              (
                
                  child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  foregroundColor: blueColor,
                  
              onPressed: _incrementCounter,
             tooltip: 'Add subscription',
        child: Icon(Icons.add),
      ),
              ),
           ),
           Container(
             margin: EdgeInsets.only(top:240),
             child: ListView(
             
             children: getSubscriptionCards() ),)
       ],
       
      ),
     
      
    );
  }

  List<Container> getSubscriptionCards(){
     
     List<Container> cards= new List<Container>();
   var cardColors= [cardPurpleColor, cardBlueColor,cardYellowColor];
     for(int i=0; i<5; i++){
       
       cards.add(
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: cardColors[i%3],
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
         width: 100,
         height: 100,
         padding: EdgeInsets.all(10),
         child: Column(
           
           children: [
           Container(
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text("Telia", style: subscriptionNameText,),
               Text("89 Kr", style: subscriptionNameText,)
             ],),
             ),

             Container(
               
               child: 
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text("till 2019-9-20", style: subscriptionNameText,),
               Text("2 mån uppsägning", style: subscriptionDetailsText,)
             ],),
             ),
             Container(child: Text("Price can be lowered by adjusting speed", style: subscriptionDetailsText,),
             )
         ],),
       ));
     }

     return cards;
  }
}
