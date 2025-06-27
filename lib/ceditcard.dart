import 'package:flutter/material.dart';
class Ceditcard extends StatefulWidget {
  const Ceditcard({super.key});

  @override
  State<Ceditcard> createState() => _CeditcardState();
}

class _CeditcardState extends State<Ceditcard> {
  @override
  final formkey=GlobalKey<FormState>();
  bool ischeeck=false;
  bool isclacked=false;
  TextEditingController c1=TextEditingController();
  TextEditingController c2=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Image.asset('asset/imges2/im.jpg',fit: BoxFit.cover,),
              SizedBox(
          height: 80,
              ),
              Center(
          child: SingleChildScrollView(
            child: Form(
            key: formkey,
          
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Center(
              child: SingleChildScrollView(
                child: TextFormField(
                  validator: (v){
                    final clean=v?.replaceAll(' ', '');
                    if(clean==null||clean.length!=8){
                      return 'Enter exactly 8 digits';
                    }
                    return null;
                  },
                  obscureText: !isclacked,
                controller: c1,
                decoration: InputDecoration(
                label: Text("Your cerdit number",
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ),),
          
                suffixIcon:InkWell(
                    onTap: (){
                      setState(() {
                        isclacked=! isclacked;
                      });
                    },
          
                    child:isclacked? Icon(Icons.remove_red_eye_sharp)
          
                        :Icon(Icons.visibility_off)),
                hintText: " 1234  5378   ",
                prefixIcon: Icon(Icons.card_membership),
          
          
          
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
              ),
                  ],
              ),
            ),
          
            ),
          ),
              ),
              SizedBox(height: 40,),
              TextFormField(
          
          validator: (v){
            if(v==null|| v.isEmpty) return 'Enter the payment amount';
          final parsed =double.tryParse(v);
          
          if(parsed==null||parsed<=0)return 'Enter a vaild number';
          else
            return null;
          },
                controller: c2,
          
                decoration: InputDecoration(
          
                    label: Text('Payment value',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
          
          
                 //   hintText: "*************",
          
                    prefixIcon: Icon(IconData(0xeea2, fontFamily: 'MaterialIcons')),
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
                  Navigator.of(context).pushNamed(  'routescreen6');
                }
          
              },
          
          
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEE7BC91)
                  ),
                  child: Text("Done",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),))
          
          ],
          ),
        ),
      ),

    );


  }
}
