import 'package:flutter/material.dart';
import 'package:uisamples/widgets/AlertdialogWidget/Alertdialog.dart';
import 'package:uisamples/widgets/AnimatedContainer/Animatedcontainer.dart';
import 'package:uisamples/widgets/DismissableWidget/Dismisable.dart';
import 'package:uisamples/widgets/DragableScrolable/Dragablescrollablewidget.dart';
import 'package:uisamples/widgets/Dragtarget/DragtargetWidget.dart';
import 'package:uisamples/widgets/InteractiveViewer/interactiveCustomView.dart';
import 'package:uisamples/widgets/LongPressdraggalble/Longpressdrag.dart';
import 'package:uisamples/widgets/ReorderableList/ReaorderableListcustomView.dart';
import 'package:uisamples/widgets/bottomsheet/bottomsheet.dart';
import 'package:uisamples/widgets/card/CustomCardWidget.dart';
import 'package:uisamples/widgets/cubercinoContext%20menu/cubercino.dart';
import 'package:uisamples/widgets/table/tablewidget.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainAppScreen(),
        '/bottomsheet': (context) => const BottomSheetWideget(),
        '/longdragable': (context) => const LongPressDraggableWidget(),
        '/interactive': (context) => const Interactivecustomview(),
        '/reaorderable': (context) => const ReorderableListCustomView(),
        '/cuber': (context) => const Cubercino(),
        '/tablewidget': (context) => const Tablewidget(),
        '/aleartdialog': (context) => const Alertdialog(),
        '/animatedcontainer': (context) => const AnimatedcontainerWidget(),
        '/customcard': (context) => const Customcardwidget(),
        '/dismisable': (context) => const DismisableCustomWidget(),
        '/dragscroll': (context) => const CustomDragablescrolableWideget(),
        '/dragtarget': (context) => const CustomDragablewidget()
      },
    );
  }
}

class MainAppScreen extends StatelessWidget {
  const MainAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40),
        child: const Column(
          children: [
            _ElevatedNavigationButton(
                path: '/bottomsheet', data: "bottom Sheet Widget"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/longdragable', data: "Long press Draggable"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/interactive', data: "inteactive View"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/reaorderable', data: "Reorderable view"),
            _ElevatedNavigationButton(
                path: '/cuber', data: "Cubercino Context Menu"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/tablewidget', data: "Table Widget"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/aleartdialog', data: "Aleart Dialog"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/animatedcontainer', data: "Animated container"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(path: '/customcard', data: "Custom Card"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/dismisable', data: "dismissable widget"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/dragscroll', data: "draggable scrollble"),
            SizedBox(
              height: 20,
            ),
            _ElevatedNavigationButton(
                path: '/dragtarget', data: "dragge target"),
          ],
        ),
      ),
    ));
  }
}

class _ElevatedNavigationButton extends StatelessWidget {
  const _ElevatedNavigationButton(
      {super.key, required this.path, required this.data});

  final String path;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('$path');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          '$data',
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ));
  }
}
