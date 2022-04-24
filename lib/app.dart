import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickActionsIconsApp extends StatefulWidget {
  const QuickActionsIconsApp({Key? key}) : super(key: key);

  @override
  State<QuickActionsIconsApp> createState() => _QuickActionsIconsAppState();
}

class _QuickActionsIconsAppState extends State<QuickActionsIconsApp> {
  final _shortcuts = const QuickActions();

  @override
  void initState() {
    super.initState();
    _shortcuts.setShortcutItems(
      <ShortcutItem>[
        ShortcutItem(
          type: 'item1',
          localizedTitle: 'action 1',
          icon: '@mipmap/ic_globe',
        ),
        ShortcutItem(
          type: 'item2',
          localizedTitle: 'action 2',
          icon: '@mipmap/ic_flagslist',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter quick actions SVG icons',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Quick Actions SVG icons'),
        ),
        body: Center(
          child: Text(
            '''This app just aims to test whether it is possible to '''
            '''keep SVG icons for quick actions in a Flutter app that is '''
            '''distributed over Google Play.\n\n'''
            '''Long tap on this app\'s icon on your launcher:'''
            '''\nIf you are locally running this app, quick actions icons '''
            '''(which are SVG) will be shown;'''
            '''\nOn the other hand, if you have downloaded app from Play'''
            '''Store, you will probably notice that quick actions\' icons'''
            '''are not being rendered.''',
          ),
        ),
      ),
    );
  }
}
