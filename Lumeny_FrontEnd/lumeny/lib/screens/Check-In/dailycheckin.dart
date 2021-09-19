import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/constants.dart';

class DailyCheckIn extends StatefulWidget {
  @override
  _DailyCheckInState createState() => _DailyCheckInState();
}

class _DailyCheckInState extends State<DailyCheckIn> {
  List<String> buildinglist = [
    'alumni memorial building',
    'an bourns science building (abb)',
    'burke science building (bsb)',
    'chester new hall',
    'commons building',
    'communications research library',
    'david braley sport medicine & rehabilitation centre',
    'degroote school of business',
    'engineering technology building (etb)',
    'et clarke centre',
    'general sciences',
    'gilmour hall',
    'hamilton hall',
    'hg thode library',
    'information technology building (itb)',
    'institute for applied health sciences',
    'ivor wynne centre',
    'john hodgins building (jhe)',
    'kenneth taylor hall (kth)',
    'life sciences building',
    'lr wilson hall',
    'mcmaster university student centre (musc)',
    'michael degroote centre for learning and discovery (mdcl)',
    'mills library',
    'museum of art',
    'nuclear research building',
    'psychology building',
    'refectory',
    'ron joyce stadium',
    't13',
    'tandem accelerator',
    'togo salmon hall',
    'university hall'
  ];
  List<String>? buildinglistSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Container(
              decoration: BoxDecoration(
                  color: kHintStyle, borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    buildinglistSearch = buildinglist
                        .where(
                            (element) => element.contains(value.toLowerCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        buildinglistSearch!.length == 0) {
                      print(
                          'buildinglistSearch length ${buildinglistSearch!.length}');
                    }
                  });
                },
              ),
            )),
        body: _textEditingController!.text.isNotEmpty &&
                buildinglistSearch!.length == 0
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search_off,
                          size: 160,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'No results found,\nPlease try different keyword',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty
                    ? buildinglistSearch!.length
                    : buildinglist.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.home_filled),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(_textEditingController!.text.isNotEmpty
                            ? buildinglistSearch![index]
                            : buildinglist[index]),
                      ],
                    ),
                  );
                }));
  }
}
