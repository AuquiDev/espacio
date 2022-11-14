

import 'package:espacio/domingo/init2_page.dart';
import 'package:espacio/domingo/init4_page.dart';
import 'package:flutter/material.dart';



class Challeng1Page extends StatelessWidget {
  const Challeng1Page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Stack(
          children: [
            //------
            _ImageGradient(height: height),
            //-----
            const TextBody(),

            //---botones de arriba 
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: _decoration(),
                      child: IconButton(onPressed: (){     
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                            return const Init2Page(); 
                        }));
                      }, 
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: Colors.white,
                      ),
                    ),
                  
                      Container(
                        decoration: _decoration(),
                        child: IconButton(onPressed: (){}, 
                        icon: const Icon(Icons.add_card),
                        color: Colors.white,
                        ),
                      ),
                    
                  ],
                ),
              ),
            ),

            _ButtonBuyNow(),
                    
          ],
        ),

    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
                      color: Color.fromARGB(255, 23, 14, 0).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(60),
                       boxShadow: [
                          BoxShadow(
                            color:Color.fromARGB(255, 128, 66, 9).withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0,5)
                          )
                        ],
                    );
  }
}

class _ImageGradient extends StatelessWidget {
  const _ImageGradient({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Stack(
        children: [
          Image.network('https://i.pinimg.com/564x/94/8f/e6/948fe6f85b78c1d0d6507932b2b62db2.jpg',
          height: height * 0.5,
          width: double.infinity,
          fit: BoxFit.cover,
          ),

          Container(
             height: height * 0.5,
             width: double.infinity,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 18, 17, 17),
                  Color.fromARGB(255, 18, 17, 17),
                  Color.fromARGB(73, 81, 48, 23),
                  Color.fromARGB(73, 81, 48, 23),
                  Color.fromARGB(74, 6, 6, 6)
                ] 
              )
            ),
          )
        ],
      ),
    );
  }
}


class _ButtonBuyNow extends StatelessWidget {
  const _ButtonBuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          padding: const EdgeInsets.only(left: 30,right: 30),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                 boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 40, 38, 38).withOpacity(.95),
                              //offset: Offset(0,2),
                              spreadRadius: 80,
                              blurRadius: 180
                         )
                    ],
                ),
                child: ElevatedButton(
                  onPressed: (){ 

                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const Init4Page())));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 51, 197, 112),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),

                  child:   const Text("Buy Now", style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    
                  ),),
                ),
               ),
            );
  }
}

class TextBody extends StatelessWidget {
  const TextBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: double.infinity,
       
        decoration: BoxDecoration(
          color: Color.fromARGB(230, 25, 12, 1).withOpacity(0.63),//opacidad
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight:Radius.circular(32)
          ),
          boxShadow: [
            BoxShadow(
              color:Color.fromARGB(175, 5, 5, 5).withOpacity(.5) ,
              offset: Offset(10,0),
              blurRadius: 21
            )
          ]
         
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 30,),
            const Text('Rock n Roll',
            style: TextStyle(
              color:Colors.white,
              fontSize: 16
            )),
            const Text('Avril Lavigne',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(height: 5,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.calendar_month,size: 30,color: Color.fromARGB(255, 19, 121, 53),),

              Container(     
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('01 Nov 2022', style: _textstyle(),),
                    Text('9:00 PM',style: _textstyle(),),
                  ],
                ),
              ),

              SizedBox(width: width * .1,),

              Icon(Icons.gps_fixed,size: 30,color: Color.fromARGB(255, 19, 121, 53),),

              Container(
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Paris Francia',style: _textstyle(),),
                     Text('Amsterdam AFAS live',style: _textstyle(),),
                  ],
                ),
              )
            ],
          ),
        
          const SizedBox(height: 15,),
            const Text('About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),               
            ),
          const SizedBox(height: 10,),
            Container(
              height: height *.3,
              child: ListView.builder(
                itemExtent:height * .18 ,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) { 
                return   Text('Avril Lavigne proviene de una familia cristiana de clase media. Es hija de John y Judy Lavigne, ambos de origen franco-canadiense,20​ nació el 27 de septiembre de 1984 en Belleville, Ontario,21​ pero pocos meses después se mudaron a Napanee, también en Ontario.7​ Cantaba canciones de género góspel y country. Unos años después, Avril se dedicó a cantar en ferias. Cuando creció, aprendió a tocar la guitarra sin ayuda.22​',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                    ),
                  );
                 },
              ),
            ),
             const SizedBox(height: 100,),
            
          
          ],
        ),
      ),
    );
  }

  TextStyle _textstyle() => TextStyle(
    color: Color.fromARGB(255, 41, 198, 120)
  );
}