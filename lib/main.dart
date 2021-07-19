import 'package:flutter/material.dart';
import 'endpage.dart';
void main() {
  runApp(MaterialApp(
    home: app(),

  ));
}

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  void goToNextPage(BuildContext context)
  {
      Navigator.push(context,
          new MaterialPageRoute(builder: (BuildContext context)=>new End(end(sum),getcolor(sum))
          ));
  }

  double rate=0,sum=0;
  int i=0;
  List<String>rating=["How did you like our service","How did you appreciate Sanitization",
    "How was the sound quality","How was the lighting","How are you to recommend your friends","How likely are you to comeback here"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App",),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(child:
      Column(
          children: <Widget>[
            SizedBox(height: 150,),
            Text(rating[i],style: TextStyle(fontSize: 20),),
            Slider(value: rate, onChanged: (newrating){
              setState(() => rate =newrating
              );
            },
              divisions: 4,

            ),
            ElevatedButton(onPressed:(){setState(() {
              sum=sum+rate;
              if(i<5) {
                i++;
              }
              else
                {
              goToNextPage(context);
                }

            });} ,child: Text("next"),)
          ]
      ),)
        




    );
  }
}
String end(double sum)
{
  if(0<=sum&&sum<=2.5)
    return("We are sorry for your inconvenience") ;
else if(2.5<sum&&sum<=5)
    return("Hope we serve you better next time");
else
    return("We hope you come back next time.");
}
Color getcolor(double sum)
{
  if(0<=sum&&sum<=2.5)
    return(Colors.red) ;
  else if(2.5<sum&&sum<=5)
    return(Colors.yellow);
  else
    return(Colors.green);
}



