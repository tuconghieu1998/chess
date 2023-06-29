import 'package:chess/color_constants.dart';
import 'package:chess/src/common/stateless/tile_widget.dart';
import 'package:chess/src/logic/logic.dart';
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
  
  List<Widget> renderBoard(List<List<String>> boardConfig) {
    double size = (MediaQuery.of(context).size.width - 30) / 8;
    if (size > 100) {
      size = 100;
    }
    List<Widget> board = [];
    for(int row =8;row>0;row--) {
      board.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: renderRow(boardConfig[row - 1], row, size),));
    }
    return board;
  }

  List<Widget> renderRow(List<String> rowConfig, int rowIndex, double size) {
    List<Color> colors = [];
    if(rowIndex%2 == 0) {
      colors.add(AppColor.whiteTile);
      colors.add(AppColor.blackTile);
    }
    else {
      colors.add(AppColor.blackTile);
      colors.add(AppColor.whiteTile);
    }
    
    List<Widget> row = [];
    for(int col =1;col<=8;col++) {
      row.add(TileWidget(
        size: size,
        color: colors[col%2],
        typePiece: rowConfig[col - 1],
        isSuggest: boardSuggestion[col -1][rowIndex - 1],
        onTap: () {
          onTapTile(Point(col, rowIndex));
        }));
    }
    return row;
  }

  bool isTileEmpty(Point pos) {
    return board[pos.x ?? 0][pos.y ?? 0] == "";
  }

  onTapTile(Point pos) {
    List<Point> tileCanMove = ChessLogic.getListTypeCanMove(pos);
    print(tileCanMove.length);
    setState(() {
      if(isTileEmpty(pos)) {
        isSuggesting = false;
      }
      else {
        isSuggesting = true;
      }
      // clear all suggest tile
      for(int i = 0;i<board.length;i++) {
        for (var j = 0; j < board[i].length; j++) {
          boardSuggestion[i][j] = false;
        }
      }

      // show suggest tile
      if(isSuggesting) {
        print("suggest"); 
        for(Point pos in tileCanMove) {
        boardSuggestion[pos.x ?? 0][pos.y ?? 0] = true;
      }
      }      
    });
    
  } 

  late List<List<String>> board;
  late List<List<bool>> boardSuggestion;
  late bool isSuggesting;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSuggesting = false;
    board = ChessLogic.initChessBoard();
    boardSuggestion = [];
    for(int i = 0;i<board.length;i++) {
      boardSuggestion.add([]);
      for (var j = 0; j < board[i].length; j++) {
        boardSuggestion[i].add(false);
      }
    }
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
          children: renderBoard(board),),
      )
    );
  }
}