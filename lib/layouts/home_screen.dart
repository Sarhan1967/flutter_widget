import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

//===========
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        color:Colors.lightBlueAccent,
        child:Center(
            child:Text(
                "HELLO WORLD",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white,fontSize: 30)
            )
        )
    );
  }
}

//=================================================
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Container(
      alignment: Alignment.center,
        color: Colors.yellow,
        //width: 300,
        //height: 200,
      margin: EdgeInsets.only(left: 33,top: 55),
      padding: EdgeInsets.only(left: 40,right: 2,top: 200,bottom: 20),

        child: Text("HI FLUTTER",textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blueGrey,fontSize: 30)
        ),
      )
    );
  }
}*/


//=====================================
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        color:Colors.lightBlueAccent,
        child:Center(
            child:Text(
                "HELLO WORLD",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white,fontSize: 30)

            )
        )

    );
  }
}*/
//==========================================
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Container(
      alignment: Alignment.center,
        color: Colors.yellow,
        width: 500,
        height: 200,
*/
/*      margin: EdgeInsets.only(left: 33,top: 55),
      padding: EdgeInsets.only(left: 40,right: 2,top: 200,bottom: 20),*//*

        child: Text("HI FLUTTER",textDirection: TextDirection.ltr,
            style: TextStyle(
                fontFamily: "Courgette",
                color: Colors.blueGrey,
                fontSize: 40,
                fontWeight: FontWeight.w700
            ),
        ),
      )
    );
  }
}*/


//==== Using Rows============
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Container(
          alignment: Alignment.center,
          color: Colors.yellow,
            child:Row(
              children:<Widget> [
                Text("HI AHMED",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.blueGrey,
                      backgroundColor: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                ),
              ),

                Text("HI MOHAMMED",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.blueGrey,
                      backgroundColor: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
            ],
          )
        )
    );
  }
}*/


//==== Using Rows and columns============
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child:Column(
                children:<Widget> [
                  Row(
                    children:<Widget> [
                        Text("HI AHMED",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: "Courgette",
                              color: Colors.blueGrey,
                              backgroundColor: Colors.lightBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),

                        Text("HI MOHAMMED",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: "Courgette",
                              color: Colors.blueGrey,
                              backgroundColor: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children:<Widget> [
                    Text("HI ALI",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: "Courgette",
                          color: Colors.blueGrey,
                          backgroundColor: Colors.lightBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),

                    Text("HI AKRAM",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: "Courgette",
                          color: Colors.blueGrey,
                          backgroundColor: Colors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                  ),
               ],
            ),
        ),
    );

  }


}
*/


//==== Using Rows,columns and image============
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Container(
        padding: EdgeInsets.only(left: 10,right: 60,top: 100,bottom: 200),
        alignment: Alignment.center,
        color: Colors.yellow,
        child:Column(
          children:<Widget> [
            Row(
              children:<Widget> [
                Expanded(
                  child:Text("HI AHMED ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontFamily: "Courgette",
                        color: Colors.blueGrey,
                        backgroundColor: Colors.lightBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Text("HI ISSAM",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.blueGrey,
                      backgroundColor: Colors.brown,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  ),
                ),

              ],
            ),
            Row(
              children:<Widget> [
                Text("HI ALI",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.blueGrey,
                      backgroundColor: Colors.lightBlue,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  ),
                ),

                Text("HI AKRAM",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.blueGrey,
                      backgroundColor: Colors.brown,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            MyImage(),
          ],
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/pro1.jpg');
    Image myImg = new Image(image: image, width: 200, height: 100,);
    return Container(child: myImg,);
  }
}*/



//==== Using Rows,columns and Button============
/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home:  Center(
          child:Container(
            padding: EdgeInsets.only(left: 10,right: 60,top: 100,bottom: 200),
            alignment: Alignment.center,
            color: Colors.yellow,
            child:Column(
              children:<Widget> [
                Row(
                  children:<Widget> [
                    Expanded(
                      child:Text("HI AHMED ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontFamily: "Courgette",
                            color: Colors.blueGrey,
                            backgroundColor: Colors.lightBlue,
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Text("HI ISSAM",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: "Courgette",
                          color: Colors.blueGrey,
                          backgroundColor: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                      ),
                    ),

                  ],
                ),
                Row(
                  children:<Widget> [
                    Text("HI ALI",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: "Courgette",
                          color: Colors.blueGrey,
                          backgroundColor: Colors.lightBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                      ),
                    ),

                    Text("HI AKRAM",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: "Courgette",
                          color: Colors.blueGrey,
                          backgroundColor: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
                MyImage(),
                MyButton()
              ],
            ),
          ),
        ),
    );
  }
}

class MyImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/pro1.jpg');
    Image myImg = new Image(image: image, width: 200, height: 100,);
    return Container(child: myImg,);
  }
}
//------------Button-----------------------------
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ElevatedButton button = ElevatedButton(
      onPressed: () {
        onClick(context);
      },
      // color: Colors.redAccent,
      child: Text(
        "Start Coffee",
        style: TextStyle(
            fontFamily: "Courgette",
            color: Colors.white,
            backgroundColor: Colors.brown,
            fontSize: 25,
            fontWeight: FontWeight.w700
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(top: 20),
      height: 80,
      width: 400,
    );
  }

  void onClick(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text('Coffee'),
      content: Text('Have a nice time'),

    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        }
    );
  }

}
*/


