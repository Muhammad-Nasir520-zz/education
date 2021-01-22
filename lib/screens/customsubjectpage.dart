import 'package:education21/model/customlist.dart';
import 'package:education21/model/datemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';


class SubjectPage extends StatefulWidget {
  String getImage,getText;

  SubjectPage({this.getImage,this.getText});

  @override
  _SubjectPageState createState() => _SubjectPageState(getImage,getText);
}

class _SubjectPageState extends State<SubjectPage> {
  String getImage,getText;
  _SubjectPageState(this.getImage,this.getText);
  double minAge = 0.0;
  double maxAge = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        getImage,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  SizedBox(
                    width: 20,
                  ),
                     Text(
                        getText,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child:search(context) ,
              ),
            ),

            SizedBox(width: 150,),


            // Align(
            //     alignment: Alignment.center,
            //     child: Expanded(child: Container(child: Center(child: search(context))))),



              Align(
                alignment: Alignment.centerRight,
                child: Expanded(
                  child: Container(
                    child: Row(
                      children: [
                         InkWell(

                              child: SvgPicture.asset(
                                'assets/subjectimages/calender.svg',
                                height: 30,
                                width: 30,
                              )),
                        SizedBox(width: 10,),

                        InkWell(
                          onTap: ()
                          {
                            // DropdownButton(
                            //   //icon: Icon(Icons.add),
                            //   isExpanded: true,
                            //   underline: SizedBox(),
                            //   items: getLanguages.map((Language lang) {
                            //     return new DropdownMenuItem<String>(
                            //       value: lang.languageCode,
                            //       child: new Row(
                            //         children: [
                            //           SvgPicture.asset(lang.languageCode),
                            //           Text(
                            //             lang.name,
                            //             overflow: TextOverflow.ellipsis,
                            //             style: TextStyle(color: Colors.red),
                            //           ),
                            //         ],
                            //       ),
                            //     );
                            //   }).toList(),
                            //   onChanged: (val) {
                            //     print(val);
                            //   },
                            // );
                          },
                          child: SvgPicture.asset(
                            'assets/subjectimages/sort.svg',
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Datum'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Inhalt'),
                        ),
                      ],
                    ),
                    Container(

                        height: 80,
                        child: buildDateListView()),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_left,size: 40,),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: buildAgeSlider(),
                  ),
                  Icon(Icons.arrow_right,size: 40,)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Text('Inhalt'),
                        )),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/subjectimages/einteng.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text('Einfohrung',
                                        style: TextStyle(fontSize: 10)))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                SvgPicture.asset(
                                  'assets/subjectimages/book2.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text('Unterrichtsmaterial',
                                        style: TextStyle(fontSize: 10)))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/subjectimages/emptyfolder.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text('Buch',
                                        style: TextStyle(fontSize: 10)))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/subjectimages/emptyfolder.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text('Beispiel Text',
                                        style: TextStyle(fontSize: 10)))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/subjectimages/emptyfolder.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text('Ubungsaufgabe',
                                        style: TextStyle(fontSize: 10)))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/subjectimages/folder.svg',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                    child: Text(
                                  'Weitere Dokumente',
                                  style: TextStyle(fontSize: 10),
                                ))
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomRight,
                        //   child: Container(
                        //     child:
                        //         SvgPicture.asset('assets/image.svg',height: 20,width: 20,),
                        //     ),
                        // ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/mixicons/add.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text('Notizbucher'),
                  )),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/subjectimages/emptyfolder.svg',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text('Notizheft',
                                  style: TextStyle(fontSize: 10)))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/subjectimages/emptyfolder.svg',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text('Hausaufgaben',
                                  style: TextStyle(fontSize: 10)))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/subjectimages/folder.svg',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text('Weitere Dokumente',
                                  style: TextStyle(fontSize: 10))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.only(bottom: 1),
                  child: SvgPicture.asset(
                    'assets/mixicons/add.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget search(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.50,
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: Icon(
              Icons.search,
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey[900]),
            contentPadding: EdgeInsets.symmetric(vertical: 8),
          ),
        ),
      ),
    );
  }

  // Widget Menu(BuildContext context) {
  //   return Expanded(
  //     child:
  //   );
  // }


  Widget buildDateListView() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: dateList.length,
      itemBuilder: (context, index) {
        return buildDateListItem(context, index);
      },
    );
  }

  Widget buildDateListItem(BuildContext context,int index)
  {
    return  Container(
      margin: EdgeInsets.only(left: 25,right: 25),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                              color: Colors.black,
                            )
                        )
                    ),
                    child: Text(dateList[index].dayText)),
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                            )
                        )
                    ),
                    //decoration: BoxDecoration(border: BorderSide()),
                    child: Text(dateList[index].dateText)),
              ]),
              Container(child: Text("Inhalt")),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text("Inhalt"),
              ),
            ]),
      ),
    );
  }

  Widget buildAgeSlider() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Age text


            // Text(
            //     "${minAge.round()} - ${maxAge.round()}"
            // ),
          ],
        ),

        FlutterSlider(
          values: [minAge, maxAge],
          max: 100,
          min: 0,
          rangeSlider: true,
          handlerHeight: 20,
          handlerWidth: 20,
          trackBar: FlutterSliderTrackBar(
            activeTrackBar: BoxDecoration(
                color: Colors.grey
            ),
            inactiveTrackBar: BoxDecoration(
                color: Colors.grey
            ),

          ),
          onDragging: (handlerIndex, lowerValue, upperValue) {
            setState(() {
              print(lowerValue.toString());
              minAge = lowerValue;
              maxAge = upperValue;
            });
          },
          handler: FlutterSliderHandler(
            foregroundDecoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle
            ),
          ),
          rightHandler: FlutterSliderHandler(
            foregroundDecoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle
            ),
          ),
        ),
      ],
    );
  }
}
