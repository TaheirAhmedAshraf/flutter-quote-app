import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.quote,
    this.delete,
  }) : super(key: key);

  final quote;
  final delete;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${quote.text}',
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '${quote.author}',
                style: TextStyle(color: Colors.grey[800], fontSize: 16),
              ),
              FlatButton.icon(
                  onPressed: () {
                    delete();
                  },
                  icon: Icon(Icons.delete),
                  label: Text("Delete"))
            ],
          ),
        ));
  }
}
