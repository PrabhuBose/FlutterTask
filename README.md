# FlutterTask

# Issues and Fixes
  # Issue
  The listview builder state is getting refreshed once the user scroll.
  # Fixes
  To maintain the state of an class, Flutter has defauld solution as AutomaticKeepAliveClientMixin.
  We can implement in state widget and implement the overide method wantKeepAlive and mark it as TRUE

  
