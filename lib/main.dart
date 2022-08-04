import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';

void main() => runApp(MyApp());



//class SignUpPage extends State {
  
//}




class MyApp extends StatelessWidget {                           //spoorthi
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login UI',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: LoginPage(title: 'log in'),
    );
  }
}
//import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {    
                     
  TextStyle style= TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context){
    
    final emailField = TextFormField(                        
      obscureText: false,
      style: style,
      validator: (String value){
        if (value.isEmpty){
          return 'enter email';
        }

      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),);

    final passwordField= TextFormField(                                             //Spoorthi V
      obscureText: true,
      style: style,
      validator:(value){
        if (value.isEmpty){
          return "Please enter password";
        }
        return null;
      },
      
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

        hintText: "Password",
        border: 
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
   
    );
    final loginButton = Material(                                           //Spoorthi V
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      //color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
           
          //openPage(context);
          Route route = MaterialPageRoute(builder: (context) => MyHomePage());
          Navigator.push(context, route);
          Fluttertoast.showToast(msg: "Logged in successfully",fontSize: 16.0,
          gravity:ToastGravity.TOP,
          backgroundColor: Colors.white,
          toastLength: Toast.LENGTH_LONG
          );

        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
            //color: Colors.white, 
            fontWeight: FontWeight.bold
          )),
      ),
    );

    return Scaffold(  
      appBar:new AppBar(
        title: new Text("Haemo"),
      ),                                          //Spoorthi V
      body: Center(
        child:SingleChildScrollView(       //shreya//scrolled view
        child: Container(
          //color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0,),
                emailField,
                SizedBox(height: 25.0,),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButton,
                SizedBox(height: 15.0,
                ),
             
        
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New to HAEMO?',
            ),
            SizedBox(width: 5.0),
            InkWell(
              onTap: () {
               
                Route route = MaterialPageRoute(builder: (context) => SignUpPage());
                Navigator.push(context, route);

                //openPage(context);
              },
              child: Text('Sign-up',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),)
            )
          ],),
        ],
        ),
        ),
        ),),
      )
    );
  }
}


class SignUpPage extends StatelessWidget {               //sejal
  @override        
    
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomPadding:false ,
        appBar: AppBar(
          title: const Text('SIGN UP FORM'),
        ),
        body: Container(
          child:SingleChildScrollView(
          child: Column(children: <Widget>[
            Text('    '),
            TextFormField(
              decoration:InputDecoration(
    //hintText: 'Enter a combination of digits and letters',
    //icon: Icon(Icons.lock),
    border: OutlineInputBorder(),
    labelText: 'Enter first name' 
  ) ,
   ),
   Text('    '),
            
   TextFormField(
              decoration:InputDecoration(
   border: OutlineInputBorder(),
 labelText: 'Enter last name'
  ) ,
   ),
   Text('    '),
   TextFormField(
   keyboardType: TextInputType.number,
            decoration:InputDecoration(
              hintText: 'Enter valid 10 digit number',
   border: OutlineInputBorder(),
 labelText: 'Enter phone number'
  ) ,
   ),
   Text('    '),
      TextFormField(
   keyboardType: TextInputType.emailAddress,
            decoration:InputDecoration(
              hintText: 'Enter valid email address',
   border: OutlineInputBorder(),
 labelText: 'Enter email id'
  ) ,
   ),
    Text('    '),
    TextFormField(
  maxLines: 2,
     decoration:InputDecoration(
    border: OutlineInputBorder(),
 
    labelText: 'Enter address'
     ) ,),
      Text('    '),
         TextFormField(
            obscureText: true,
           
            decoration:InputDecoration(
              hintText: 'Enter combination of letters and digits',
   border: OutlineInputBorder(),
 labelText: 'Enter password'
  ) ,
   ),
    Text('    '),
        TextFormField(          
obscureText: true,
            decoration:InputDecoration(
   border: OutlineInputBorder(),
 labelText: 'Re-enter password'
  ) ,
   ),
    Text('    '),
      Material(                                           
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      //color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          
          
          //abc() ;
          //child: new IconButton(icon: Icon(Icons.message),onPressed: abc,
        //)

  
          Route route = MaterialPageRoute(builder: (context) => MyHomePage());
          Navigator.push(context, route);
          

        },
        child: Text("CONFIRM",                                        //sejal
          textAlign: TextAlign.center,
          )),
      ),

          ],),

        )
          
        )
      );
      
    }
  //));
}




class MyHomePage extends StatefulWidget {               //shreya v
  @override
  State createState() => MyHomePageState();
  
}
class MyHomePageState extends State<MyHomePage> {
  








  
  Widget actionIcon = new Icon(Icons.notifications_active);
  Widget appbarTitle = new Text("search for donors");
 @override
  Widget build(BuildContext context) {
    return new Scaffold(

      
      appBar: new AppBar(
        title: new Text("Profile"),
        //leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          //Route route = MaterialPageRoute(builder: (context) => MenuPage());
          //Navigator.push(context, route);

        //},),
      ),
      drawer: Drawer(
        child:Column(
          children: <Widget>[
            Container(
              width:double.infinity,
              padding:EdgeInsets.all(40.0),
              color:Theme.of(context).primaryColor,
              child:Center(
                child: Column(
                  children:<Widget>[
                    ListTile(
                      leading:IconButton(icon: Icon(Icons.person),onPressed: (){
                        Route route = MaterialPageRoute(builder: (context) => MyHomePage());
                        Navigator.push(context, route);
                        },
                      ),
                      title: Text("Profile",
                      style: TextStyle(
                        fontSize:17.0,
                      ),
                      ),
                      
                      ),


                      ListTile(
                      leading:IconButton(icon: Icon(Icons.menu),onPressed: (){
                        Route route = MaterialPageRoute(builder: (context) => MessagePage());
                        Navigator.push(context, route);
                        },
                      ),
                      title: Text("Messages",
                      style: TextStyle(
                        fontSize:17.0,
                      ),
                      ),
                      
                      ),
                      ListTile(
                      leading:IconButton(icon: Icon(Icons.notifications_active),onPressed: (){
                      
                      }
                        
                      ),
                      title: Text("Emergency",
                      style: TextStyle(
                        fontSize:17.0,
                      ),
                      ),
                      
                      ),

                  ]
                ),
              )
            )
          ],
        )
      ),
      body:new Container(
        child: new Column(
          children:<Widget>[
          BloodImageAsset()
          ]
        ),
      

      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(icon: Icon(Icons.local_hospital), onPressed: (){
          BookFlight(context);
          /*Fluttertoast.showToast(msg: "a new message arrived",fontSize: 16.0,
            gravity:ToastGravity.TOP,
            backgroundColor: Colors.black,
            textColor:Colors.white,
            toastLength: Toast.LENGTH_LONG*/
            //);

        }),
        onPressed: null),
        


    );
    
  }
}

void BookFlight(BuildContext context){                           //spoorthi
  var alertDialog = AlertDialog(content: Text('No hospital around you is in need of blood right now :)'),
  );

  showDialog(context:context,
  builder: (BuildContext context){
    return alertDialog;
  });
}
class BloodImageAsset extends StatelessWidget{

  @override                                                        //shreya
  Widget build(BuildContext context){
    AssetImage assetImage = AssetImage('images/blood.png');
    Image image = Image(image: assetImage,//width: 750.0,height: 628.0,fit: BoxFit.contain,
    colorBlendMode: BlendMode.darken,);
    return Container(child: image,);
  }
}

class MessagePage extends StatefulWidget {   
  @override   
  State createState() => MyMessPageState();
  
}
class MyMessPageState extends State<MessagePage> {                      
  List data;

  Widget build(BuildContext context) {
return Scaffold(
  appBar: new AppBar(
        title: Text("Messages"),

      ),
                                                              //sejal
 body:new Container(
        child: new Center(
          
          child: new FutureBuilder(
                        future: DefaultAssetBundle.of(context).loadString('load_json/person.json'),

                        builder: (context, snapshot) {
                          var mydata = json.decode(snapshot.data.toString());
                          return new ListView.builder(
                            //itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                            return new Card(
                              child:new Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  
                                  new Text("Name: "+mydata[index]['name']),
                                  new Text("Age: "+mydata[index]['age']),
                                  new Text("Gender: "+mydata[index]['gender']),
                                  new Text("BloodType: "+mydata[index]['bloodtype']),
                          
                                ],),
                            );
                           },
                           itemCount: mydata==null?0:mydata.length,
                          );
                        },
                      ),
                
        ),
      

      ),);
  }

        }



    
  


  


