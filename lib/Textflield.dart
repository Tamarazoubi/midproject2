import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class textfeildclass extends StatefulWidget {
  const textfeildclass({super.key});

  @override
  State<textfeildclass> createState() => _textfeildclassState();
}

class _textfeildclassState extends State<textfeildclass> {
  final formkey=GlobalKey<FormState>();
  bool ischeeck=false;
  bool isclacked=false;
  TextEditingController c1=TextEditingController();
  TextEditingController c2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor:     Color(0xFFEfaebd6),
  title: Row(
    children: [

    ],
  ),
),
      backgroundColor:     Color(0xFFEfaebd6),
    body: Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Lottie.network('https://lottie.host/a85ac653-62ee-45aa-b691-934300f5ed55/dQzAvyUmZj.json'),
        Lottie.network('https://lottie.host/14bc3144-1776-4de4-9594-ba6bc062e3aa/xhAbCFovEp.json'),
            Form(
                key: formkey,

                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            Center(
              child: TextFormField(
                validator: (c1){
                  if(!(checkemail(c1!))){
                    return 'not vaild';
                  }
                  else
                    return null;
                },
                controller: c1,
              decoration: InputDecoration(
                label: Text("Your Email",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                hintText: " example@domain.com",
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.brown,
                width: 3,
              ),

              ),
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.brown,
              width: 3,
                )
              )
              ),

              ),
            ),
            SizedBox(height: 40,),
            TextFormField(
              controller:c2 ,

              obscureText: !isclacked,
              validator: (c2){
              if(!(checkpassward(c2!))){
                return 'not vaild';
             }
             else
               return null;
             },
              decoration: InputDecoration(

                  label: Text("passward",
                  style: TextStyle(
                    fontSize: 20,
                     color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                  suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          isclacked=! isclacked;
                        });
                      },

                      child:isclacked? Icon(Icons.remove_red_eye_sharp)

                  :Icon(Icons.visibility_off)),

                  hintText: "*************",

                  prefixIcon: Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.brown,
                      width: 3,
                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.brown,
                      width: 3,
                    ),
                  )
              ),

            ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(onPressed: () {
                 if(formkey.currentState!.validate()){
                Navigator.of(context).pushNamed( 'routescreen6');
                 }

                  },


                    style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xFFEE7BC91)
                      ),
                      child: Text("Next",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),))

                ],
            )


            ),
          ],
        ),
      ),
    )
    );

  }
  bool checkemail(String email) {
    return RegExp(r'^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$').hasMatch(email);
  }
  bool checkpassward(String passward)

  {
    String pattern =r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
    return RegExp(pattern).hasMatch(passward);
  }
}


