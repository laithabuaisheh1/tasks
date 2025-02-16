import 'package:flutter/material.dart';

class Task16 extends StatelessWidget {
@override
Widget build ( BuildContext context ) {
return MaterialApp (
home : FirstScreen () ,
);
}
}
class FirstScreen extends StatelessWidget {
@override
Widget build ( BuildContext context ) {
return Scaffold (
appBar : AppBar ( title : Text (" Hero ␣ Animation ")) ,
body : Center (
child : GestureDetector (
onTap : () {
Navigator . push (
context ,
MaterialPageRoute ( builder : ( context ) = > SecondScreen ()) ,
);
} ,
child : Hero (
tag : "hero -tag ",
child : Container (
width : 100 ,
height : 100 ,
color : Colors . red ,
) ,
) ,
) ,
) ,
);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build ( BuildContext context ) {
return Scaffold (
appBar : AppBar ( title : Text (" Second ␣ Screen ")) ,
body : Center (
child : Hero (
tag : "hero -tag" ,
child : Container (
width : 200 ,
height : 200 ,
color : Colors . red ,
) ,
) ,
) ,
);
}
}