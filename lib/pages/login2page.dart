import 'dart:math';

import 'package:espacio/domingo/init_page.dart';
import 'package:espacio/pages/login_page.dart';
import 'package:espacio/widgets/circle_widgets.dart';
import 'package:flutter/material.dart';



class Login2Page extends StatelessWidget {
  const Login2Page({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xfffbf5ff),
    
        body:  Stack(
          children: [
              Positioned(
              right: -130,
              top: -125,
              child: CircleWidgets(
                radius: height*0.4,
                colors: [
                const Color.fromARGB(255, 191, 34, 108),
                 const Color(0xffd94e8e),
                const Color.fromARGB(255, 235, 164, 196).withOpacity(.5)
                ]
                )),
              
              Positioned(
              left: width*0.05,
              top: 60,
              child: CircleWidgets(
                radius: 45,
                colors:const [
                Color(0xffd94e8e),
                Color(0xffe98db7)
                ],
                icon: IconButton(
                       onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Login1Page())));
                       }, 
                       icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 17,
                        color: Colors.white,),
                    ),
                  ),
                ),


              Positioned(
                bottom: -150,
                left: -130,
                child: CircleWidgets(
                  radius:height*0.35,
                  colors: const [
                  Color.fromARGB(255, 62, 40, 128),
                  Color(0xff564293),
                  Color(0xff9d8ad9),
                  Color(0xff9d8ad9),
                  ], 
                )
               ),

              Positioned(
                top: 300,
                right: 30,
                child: CircleWidgets(
                  radius:35,
                  colors: const [
                  Color(0xff564293),
                  Color(0xff9d8ad9)
                  ], 
                )),
                Positioned(
                top: height * .79,
                right: -10,
                child: Transform.rotate(
                  angle: pi/-10,
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: const BoxDecoration(
                      gradient:   LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft, 
                      colors: [
                        Color(0xff9d8ad9),
                          Color(0xff564293),
                        Color(0xff9d8ad9)
                      ], 
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)
                      )
                   ),
                  ),
                )
              ),


              const _CreateAcount(),
            
          ],
        ),
      );
   
  }
}

class _CreateAcount extends StatefulWidget {
  const _CreateAcount({
    Key? key,
  }) : super(key: key);

  @override
  State<_CreateAcount> createState() => _CreateAcountState();
}

class _CreateAcountState extends State<_CreateAcount> {
  String password = "";
   bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
   
    return SafeArea(
     child: Padding(
       padding: const EdgeInsets.all(30),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children:[
          SizedBox(height:height*.21 ,),
         const Text("Create Your\nAccount!",
         style: TextStyle(
          fontSize: 32,
          color: Color.fromARGB(255, 69, 47, 134),
          fontWeight: FontWeight.bold
          ),
         ),

         SizedBox(height:height *.05,),
          const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Email Address",
            prefixIcon: Icon(Icons.email),
            prefixIconColor: Color.fromARGB(255, 69, 47, 134),
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 69, 47, 134),
                fontSize: 13
              ),
          ),
         ),
         const SizedBox(height: 30,),
         TextField(
            
            onChanged: (value) => setState(() => this.password = value) ,
            onSubmitted: (value) => setState(() => this.password = value),
            obscureText: isPasswordVisible,
            decoration: InputDecoration(
                hintStyle: const TextStyle(
                color: Color.fromARGB(223, 69, 47, 134),
                fontSize: 13
              ),
             
              hintText: "Password",
              prefixIcon: const Icon(Icons.lock_clock_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                 setState(() {
                   isPasswordVisible = ! isPasswordVisible;
                 });
                }, 
                icon: isPasswordVisible
                ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                ),
            ),
          ),
         SizedBox(height: height * .08),

        //botton create account
          Container(
           height: 52,
           width:double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(40),
             boxShadow: [
               BoxShadow(
                 color: const Color.fromARGB(255, 139, 137, 138).withOpacity(0.65),
                 offset: const Offset(0,10),
                 blurRadius: 12
               )
             ],
             gradient: const LinearGradient(
               colors:[
                 Color(0xffe98db7),
                 Color(0xffd94e8e)
               ]
             )
           ),
            child: MaterialButton(
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
                onPressed: (){
                Navigator.push( context, MaterialPageRoute(builder: (context)=> const InitPage()));
                },
                child:  const Text('Create Account',
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
                
               
                
             ),
          )
         ]
       ),
       )
    
    );
  }
}