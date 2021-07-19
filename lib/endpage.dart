import 'package:flutter/material.dart';
import 'main.dart';
class End extends StatefulWidget {
  const End(this.result,this.color1) : super();
 final String result;
 final Color color1;
  @override
  _EndState createState() => _EndState();
}

class _EndState extends State<End> {
  void goToNextPage(BuildContext context)
  {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context)=>new app()
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color1,
       body: SafeArea(child: Column(children:<Widget>[
         SizedBox(height: 130),
         Center(
                child: Text(widget.result,style: TextStyle(fontSize: 20, color: Colors.white))),
          ElevatedButton(onPressed: (){goToNextPage(context);}, child: Text("Restart"),)
         ],) ),
    );
  }
}
