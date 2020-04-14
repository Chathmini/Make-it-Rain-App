import 'package:flutter/material.dart';


class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return new MakeItRainState();
  }
}
class MakeItRainState extends State<MakeItRain> {
  int moneyCount= 0;
  void moneyCounter(){
        setState((){
      moneyCount= moneyCount + 100;
    }  );
  }  
   @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar:new AppBar(
        title:new Text("MAKE IT RAIN"),
        backgroundColor: Colors.blue,
        ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //titile
            new Center(
              child:new Text (
                "Get Rich!",
                style: new TextStyle(
                  color:Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ), 
                ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  "$moneyCount count",
                  style: new TextStyle(
                  color:moneyCount>=1000 ? Colors.blue: Colors.orange,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  ),
                ),
             ),
            ),
            new Expanded(
              child: new Center(
                child : new FlatButton(
                  onPressed: moneyCounter,
                  color: Colors.pink,
                  textColor: Colors.pink,                  
                  child: new Text(
                    "Let it Rain! ",                 
                    style:  new TextStyle(
                      fontSize: 28,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),    
      ),
    );
  }
  
  
}

