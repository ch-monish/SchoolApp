import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:country_pickers/country_pickers.dart';
// import 'package:country_pickers/country.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:country_pickers/country_pickers.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  CountryCode countrycode = CountryCode();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return new MaterialApp(
        home: new Scaffold(
      // return Scaffold(
      appBar: AppBar(
        title: Text('Logo', style: TextStyle(color: Color(0xFFFFFFFF))),
        // titleTextStyle: Colors.red,
        elevation: 0,
        toolbarHeight: 45,
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange[900],
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.black87,
          ),
          height: MediaQuery.of(context).size.height * 1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                ),

                // SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'School Management System',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    child: CountryCodePicker(
                      initialSelection: 'IN',
                      favorite: ["91", "IN"],
                      showDropDownButton: true,
                      showOnlyCountryWhenClosed: false,
                      showCountryOnly: true,
                      textStyle: TextStyle(color: Colors.white),
                      onChanged: (x) {
                        print(x);
                        setState(() {
                          countrycode = x;
                        });
                      },
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  // height: 80,

                  child: TextField(
                      style: TextStyle(
                        height: 0.01,
                        color: Colors.white,
                        decorationColor: Colors.white,
                      ),
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: 'Enter Mobile Number',

                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                      ),
                      cursorHeight: 20,
                      cursorColor: Colors.white,
                      maxLength: 10,
                      autofocus: false,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number),
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      // style:raisedButtonStyle,
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.80, 40),
                        primary: Colors.orange[800],

                        // double.infinity is the width and 30 is the height
                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, '/verification');
                      },

                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// class DemoPage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<DemoPage> {
//   Country _selectedDialogCountry =
//       CountryPickerUtils.getCountryByPhoneCode('90');

//   Country _selectedFilteredDialogCountry =
//       CountryPickerUtils.getCountryByPhoneCode('90');

//   Country _selectedCupertinoCountry =
//       CountryPickerUtils.getCountryByIsoCode('tr');

//   Country _selectedFilteredCupertinoCountry =
//       CountryPickerUtils.getCountryByIsoCode('DE');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Country Pickers Demo'),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(8.0),
//         children: <Widget>[
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerDropdown (SOLO)'),
//                 _buildCountryPickerDropdownSoloExpanded(),
//                 //ListTile(title: _buildCountryPickerDropdown(longerText: true)),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerDropdown (selectedItemBuilder)'),
//                 _buildCountryPickerDropdown(hasSelectedItemBuilder: true),
//                 //ListTile(title: _buildCountryPickerDropdown(longerText: true)),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerDropdown (filtered)'),
//                 ListTile(title: _buildCountryPickerDropdown(filtered: true)),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerDropdown (sorted by isoCode)'),
//                 ListTile(
//                     title: _buildCountryPickerDropdown(sortedByIsoCode: true)),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text("CountryPickerDropdown (has priorityList['GB,'CN'])"),
//                 ListTile(
//                     title: _buildCountryPickerDropdown(hasPriorityList: true)),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text("CountryPickerDialog (has priorityList['TR,'US'])"),
//                 ListTile(
//                   onTap: _openCountryPickerDialog,
//                   title: _buildDialogItem(_selectedDialogCountry),
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerDialog (filtered)'),
//                 ListTile(
//                   onTap: _openFilteredCountryPickerDialog,
//                   title: _buildDialogItem(_selectedFilteredDialogCountry),
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text("CountryPickerCupertino (has priorityList['TR,'US'])"),
//                 ListTile(
//                   title: _buildCupertinoSelectedItem(_selectedCupertinoCountry),
//                   onTap: _openCupertinoCountryPicker,
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('CountryPickerCupertino (filtered)'),
//                 ListTile(
//                   title: _buildCupertinoSelectedItem(
//                       _selectedFilteredCupertinoCountry),
//                   onTap: _openFilteredCupertinoCountryPicker,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   _buildCountryPickerDropdownSoloExpanded() {
//     return CountryPickerDropdown(
//       underline: Container(
//         height: 2,
//         color: Colors.red,
//       ),
//       //show'em (the text fields) you're in charge now
//       onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
//       //if you want your dropdown button's selected item UI to be different
//       //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
//       onValuePicked: (Country country) {
//         print("${country.name}");
//       },
//       itemBuilder: (Country country) {
//         return Row(
//           children: <Widget>[
//             SizedBox(width: 8.0),
//             CountryPickerUtils.getDefaultFlagImage(country),
//             SizedBox(width: 8.0),
//             Expanded(child: Text(country.name)),
//           ],
//         );
//       },
//       itemHeight: null,
//       isExpanded: true,
//       //initialValue: 'TR',
//       icon: Icon(Icons.arrow_downward),
//     );
//   }

//   _buildCountryPickerDropdown(
//       {bool filtered = false,
//       bool sortedByIsoCode = false,
//       bool hasPriorityList = false,
//       bool hasSelectedItemBuilder = false}) {
//     double dropdownButtonWidth = MediaQuery.of(context).size.width * 0.5;
//     //respect dropdown button icon size
//     double dropdownItemWidth = dropdownButtonWidth - 30;
//     double dropdownSelectedItemWidth = dropdownButtonWidth - 30;
//     return Row(
//       children: <Widget>[
//         SizedBox(
//           width: dropdownButtonWidth,
//           child: CountryPickerDropdown(
//             /* underline: Container(
//               height: 2,
//               color: Colors.red,
//             ),*/
//             //show'em (the text fields) you're in charge now
//             onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
//             //if you have menu items of varying size, itemHeight being null respects
//             //that, IntrinsicHeight under the hood ;).
//             itemHeight: null,
//             //itemHeight being null and isDense being true doesn't play along
//             //well together. One is trying to limit size and other is saying
//             //limit is the sky, therefore conflicts.
//             //false is default but still keep that in mind.
//             isDense: false,
//             //if you want your dropdown button's selected item UI to be different
//             //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
//             selectedItemBuilder: hasSelectedItemBuilder == true
//                 ? (Country country) => _buildDropdownSelectedItemBuilder(
//                     country, dropdownSelectedItemWidth)
//                 : null,
//             //initialValue: 'AR',
//             itemBuilder: (Country country) => hasSelectedItemBuilder == true
//                 ? _buildDropdownItemWithLongText(country, dropdownItemWidth)
//                 : _buildDropdownItem(country, dropdownItemWidth),
//             initialValue: 'AR',
//             itemFilter: filtered
//                 ? (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode)
//                 : null,
//             //priorityList is shown at the beginning of list
//             priorityList: hasPriorityList
//                 ? [
//                     CountryPickerUtils.getCountryByIsoCode('GB'),
//                     CountryPickerUtils.getCountryByIsoCode('CN'),
//                   ]
//                 : null,
//             sortComparator: sortedByIsoCode
//                 ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
//                 : null,
//             onValuePicked: (Country country) {
//               print("${country.name}");
//             },
//           ),
//         ),
//         SizedBox(
//           width: 8.0,
//         ),
//         Expanded(
//           child: TextField(
//             decoration: InputDecoration(
//               labelText: "Phone",
//               isDense: true,
//               contentPadding: EdgeInsets.zero,
//             ),
//             keyboardType: TextInputType.number,
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildDropdownItem(Country country, double dropdownItemWidth) =>
//       SizedBox(
//         width: dropdownItemWidth,
//         child: Row(
//           children: <Widget>[
//             CountryPickerUtils.getDefaultFlagImage(country),
//             SizedBox(
//               width: 8.0,
//             ),
//             Expanded(child: Text("+${country.phoneCode}(${country.isoCode})")),
//           ],
//         ),
//       );

//   Widget _buildDropdownItemWithLongText(
//           Country country, double dropdownItemWidth) =>
//       SizedBox(
//         width: dropdownItemWidth,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: <Widget>[
//               CountryPickerUtils.getDefaultFlagImage(country),
//               SizedBox(
//                 width: 8.0,
//               ),
//               Expanded(child: Text("${country.name}")),
//             ],
//           ),
//         ),
//       );

//   Widget _buildDropdownSelectedItemBuilder(
//           Country country, double dropdownItemWidth) =>
//       SizedBox(
//           width: dropdownItemWidth,
//           child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Row(
//                 children: <Widget>[
//                   CountryPickerUtils.getDefaultFlagImage(country),
//                   SizedBox(
//                     width: 8.0,
//                   ),
//                   Expanded(
//                       child: Text(
//                     '${country.name}',
//                     style: TextStyle(
//                         color: Colors.red, fontWeight: FontWeight.bold),
//                   )),
//                 ],
//               )));

//   Widget _buildDialogItem(Country country) => Row(
//         children: <Widget>[
//           CountryPickerUtils.getDefaultFlagImage(country),
//           SizedBox(width: 8.0),
//           Text("+${country.phoneCode}"),
//           SizedBox(width: 8.0),
//           Flexible(child: Text(country.name))
//         ],
//       );

//   void _openCountryPickerDialog() => showDialog(
//         context: context,
//         builder: (context) => Theme(
//           data: Theme.of(context).copyWith(primaryColor: Colors.pink),
//           child: CountryPickerDialog(
//             titlePadding: EdgeInsets.all(8.0),
//             searchCursorColor: Colors.pinkAccent,
//             searchInputDecoration: InputDecoration(hintText: 'Search...'),
//             isSearchable: true,
//             title: Text('Select your phone code'),
//             onValuePicked: (Country country) =>
//                 setState(() => _selectedDialogCountry = country),
//             itemBuilder: _buildDialogItem,
//             priorityList: [
//               CountryPickerUtils.getCountryByIsoCode('TR'),
//               CountryPickerUtils.getCountryByIsoCode('US'),
//             ],
//           ),
//         ),
//       );

//   void _openFilteredCountryPickerDialog() => showDialog(
//         context: context,
//         builder: (context) => Theme(
//             data: Theme.of(context).copyWith(primaryColor: Colors.pink),
//             child: CountryPickerDialog(
//                 titlePadding: EdgeInsets.all(8.0),
//                 searchCursorColor: Colors.pinkAccent,
//                 searchInputDecoration: InputDecoration(hintText: 'Search...'),
//                 isSearchable: true,
//                 title: Text('Select your phone code'),
//                 onValuePicked: (Country country) =>
//                     setState(() => _selectedFilteredDialogCountry = country),
//                 itemFilter: (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
//                 itemBuilder: _buildDialogItem)),
//       );

//   void _openCupertinoCountryPicker() => showCupertinoModalPopup<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return CountryPickerCupertino(
//           backgroundColor: Colors.black,
//           itemBuilder: _buildCupertinoItem,
//           pickerSheetHeight: 300.0,
//           pickerItemHeight: 75,
//           initialCountry: _selectedCupertinoCountry,
//           onValuePicked: (Country country) =>
//               setState(() => _selectedCupertinoCountry = country),
//           priorityList: [
//             CountryPickerUtils.getCountryByIsoCode('TR'),
//             CountryPickerUtils.getCountryByIsoCode('US'),
//           ],
//         );
//       });

//   void _openFilteredCupertinoCountryPicker() => showCupertinoModalPopup<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return CountryPickerCupertino(
//           backgroundColor: Colors.white,
//           pickerSheetHeight: 200.0,
//           initialCountry: _selectedFilteredCupertinoCountry,
//           onValuePicked: (Country country) =>
//               setState(() => _selectedFilteredCupertinoCountry = country),
//           itemFilter: (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
//         );
//       });

//   Widget _buildCupertinoSelectedItem(Country country) {
//     return Row(
//       children: <Widget>[
//         CountryPickerUtils.getDefaultFlagImage(country),
//         SizedBox(width: 8.0),
//         Text("+${country.phoneCode}"),
//         SizedBox(width: 8.0),
//         Flexible(child: Text(country.name))
//       ],
//     );
//   }

//   Widget _buildCupertinoItem(Country country) {
//     return DefaultTextStyle(
//       style: const TextStyle(
//         color: CupertinoColors.white,
//         fontSize: 16.0,
//       ),
//       child: Row(
//         children: <Widget>[
//           SizedBox(width: 8.0),
//           CountryPickerUtils.getDefaultFlagImage(country),
//           SizedBox(width: 8.0),
//           Text("+${country.phoneCode}"),
//           SizedBox(width: 8.0),
//           Flexible(child: Text(country.name))
//         ],
//       ),
//     );
//   }
// }
