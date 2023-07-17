import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> list = List.generate(100, (i) => const ListItemWidget());
    return ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> with AutomaticKeepAliveClientMixin {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$_count"),
            IconButton(
              icon:  const Icon(Icons.add),
              highlightColor: Colors.black,
              onPressed: (){ setState(() => _count++);},
            ),
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
