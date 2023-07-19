import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<int> listCount = List<int>.generate(100, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCount.length,
      itemBuilder: (context, index) {
        return ListItemWidget(
          count: listCount[index],
          onCountIncremented: () => setState(() => listCount[index]++),
        );
      },
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final int count;
  final VoidCallback onCountIncremented;

  const ListItemWidget({
    Key? key,
    required this.count,
    required this.onCountIncremented,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(count.toString()),
          IconButton(
            icon: const Icon(Icons.add),
            highlightColor: Colors.black,
            onPressed: onCountIncremented,
          ),
        ],
      ),
    );
  }
}
