# FlutterTask

# Issues and Fixes
  # Issue
  The listview builder state is getting refreshed once the user scroll.
  # Fixes
  To maintain the count incremented by the user you need to maintain the state of the counts outside of the ListItemWidget itself. 
  You can achieve this by lifting the state up to the parent widget (ListWidget in this case) and passing the count values as parameters to each ListItemWidget. 
  Here i have changed the sateless to stateful in which the ListWidget is used and stateful to stateles where the ListItemWidget is used.
  And i have used the callback function to update the values from stateless to statefull.
  
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
      List<int> listCount = List<int>.generate(100, (index) => 0);
  3. Instead of creating MaterialButton and adding text as icon, We can create a IconButton directly.
  4. Alignments and Background color should be checked properly.
