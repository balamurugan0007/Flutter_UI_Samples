import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uisamples/components/BackButton.dart';

class BottomSheetWideget extends StatelessWidget {
  const BottomSheetWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(40),
          child: Center(
              child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(
                            height: 400,
                            child: Center(
                              child: Text(
                                'Bottom sheet',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red),
                              ),
                            ));
                      });
                },
                child: const Text(
                  'Bottom sheet Open ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              const CustomBackButton()
            ],
          ))),
    );
  }
}
