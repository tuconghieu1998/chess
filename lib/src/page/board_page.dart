import 'package:chess/color_constants.dart';
import 'package:chess/src/common/stateless/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  static const String routeName = "/board";

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  
  List<Widget> renderBoard() {
    double size = (MediaQuery.of(context).size.width - 30) / 8;
    if (size > 100) {
      size = 100;
    }
    List<Widget> board = [];
    for(int row =8;row>0;row--) {
      board.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: renderRow(row, size),));
    }
    return board;
  }

  List<Widget> renderRow(int col, double size) {
    List<Color> colors = [];
    if(col%2 == 0) {
      colors.add(AppColor.whiteTile);
      colors.add(AppColor.blackTile);
    }
    else {
      colors.add(AppColor.blackTile);
      colors.add(AppColor.whiteTile);
    }
    
    List<Widget> row = [];
    for(int col =8;col>0;col--) {
      row.add(TileWidget(size: size, color: colors[col%2],));
    }
    return row;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Stockfish example app'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: renderBoard(),),
      )
    );
  }
}