import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
            ),),
            SizedBox(height: 5),
            Text(quote.movie, style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete, color: Colors.grey,),
                    label: Text('delete', style: TextStyle(
                        color: Colors.grey
                    ),)
                )
              ],
            )
         ],
        ),
      ),
    );
  }
}