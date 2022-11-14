import 'package:flutter/material.dart';

class People_page extends StatelessWidget {
//esta lista es de tipo mapa 
      List<Map<String,dynamic>> people = [
        {
          "id": 1,
          "name": "Jose Carlos Montes",
          "phone":"789456123"
        },
        {
          "id": 2,
          "name": "Fio Chavez Montes",
          "phone":"123456879"
        },
        {
          "id": 3,
          "name": "Cecilia Mendez Montes",
          "phone":"147258369"
        },

      ];
     //List<dynamic> nombre = people.map((e) => e['name'].toLowerCase()).toList();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar( 
          title: const Text("People Page",),
          backgroundColor: Colors.indigo,
          
          ),
        body: Column(
          children: [
            //objetivo esl istar en la pantalla 
            ListView.builder(
              itemCount: people.length,
              shrinkWrap:true ,
              itemBuilder: (builder,index){
                print('${people[index]}');

                print('___________');
                people.forEach((element) {//el for eath -> funcion tipo void
                    print(element['name']);
                });

                //construye una caleccion.itera los elementos
                print(people.map((e){
                  //aqu puedes programar // e es una funcion 
                  //
                  return e['name'];
                  }));//retornara un 1 por cada elemento del mapa people
              
                 print(people.map((e){
                  //aqu puedes programar // e es una funcion 
                  //
                  return e['name'];
                  }).toList());
               return  Text('hola ${people[index]['name']}');    
              },
              ),
              ...List.generate(
                
                people.length, (index) => Text(people[2]['name'])
                ),
              //****** */
              ...people.map((e) => Text(e['name'])).toList(),

         

          ],
        ),
    );
  }
}