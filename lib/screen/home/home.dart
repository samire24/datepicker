import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "package:date_picker_test/components/button/button.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showIOSDatePicker() {
      // showCupertinoModalPopup is a built-in function of the cupertino library
      showCupertinoModalPopup(
          context: context,
          builder: (_) => Container(
                height: 260,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (val) {}),
                    ),

                    // Close the modal
                    CupertinoButton(
                      child: Text('OK'),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                ),
              ));
    }

    openAndroidDatePicker() async {
      await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1970, 01, 01),
          lastDate: DateTime(2099, 12, 31));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Button(
              label: "Open Android Style Date Picker",
              onPress: openAndroidDatePicker,
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              label: "Open IOS Style Date Picker",
              onPress: showIOSDatePicker,
            )
          ],
        ),
      ),
    );
  }
}
