# FlutterTask

# Issues and Fixes
  # Issue
  The listview builder state is getting refreshed once the user scroll.
  # Fixes
  To maintain the state of an class, Flutter has defauld solution as AutomaticKeepAliveClientMixin.
  We can implement in state widget and implement the overide method wantKeepAlive and mark it as TRUE

# Code Review
  1. In the ListWidget class, it's recommended to specify the type of the list variable explicitly.
     Instead of var list = <Widget>[], you can use List<Widget> list = [].
  2. To make the app more efficient we can avoid unnecessary ForLoop in the code and use the default functions like Itreate, generate etc.
     For example:
      var list = <Widget>[];
      for (var i = 0; i <= 100; i++) {
      list.add(const ListItemWidget());
      }
     Can be change as below:
      List<Widget> list = List.generate(100, (i) => const ListItemWidget());
  3. Instead of creating MaterialButton and adding text as icon, We can create a IconButton directly.
  4. Use private variables if the varible has no scope as public.
     For Example :
      var count = 0;
     Can be used as :
      int _count = 0;
  5. Alignments and Background color should be checked properly.
