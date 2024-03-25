import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Общежития КубГАУ'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Column(
                children: [
                  Image.asset('assets/images/dormitory.jpg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Общежитие №20',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Краснодар, ул. Калинина 13к20',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('26'),
                      IconButton(
                        onPressed: (){
                          print('Нажал');
                        },
                        icon: Icon(Icons.heart_broken, color: Colors.green,),),
                    ],
                  ),
                ],
              ),

              // Рейтинг
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    '1600 руб/месяц',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half),
                ],
              ),


              // Кнопки
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Позвонить
                  ElevatedButton(
                    onPressed: () {
                      print("Звоним коменде!");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.phone, color: Colors.green,),
                        Text('Позвонить', style: TextStyle(color: Colors. green)),
                      ],
                    ),
                  ),
                  // Маршрут
                  ElevatedButton(
                      onPressed: () {
                        print('Сторим маршрут!');
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                      ),
                      child:Column(
                        children: [
                          Icon(Icons.map, color: Colors.green),
                          Text('Маршрут', style: TextStyle(color: Colors.green)),
                        ],
                      )
                  ),



                  // Поделиться
                  ElevatedButton(
                    onPressed: () {
                      print("Делимся со всеми крутой общагой!");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.share, color: Colors.green),
                        Text('Поделиться', style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Text(
                  '«Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.»',
                  style: TextStyle(fontSize: 16.0),
                ),
              )

              // Описание

            ],
          ),
        ),
      ),
    );
  }

}