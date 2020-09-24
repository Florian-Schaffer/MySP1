class Keys {
  //egenskaber
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;

  // konstruktør
  Keys() {
  }
  // metoder
  void onKeyPressed(char k) {
    if(k=='a' || k=='A') {
      aDown=true;
    }
        if(k=='s' || k=='S') {
      sDown=true;
    }
        if(k=='w' || k=='W') {
      wDown=true;
    }
        if(k=='d' || k=='D') {
      dDown=true;
    }
  }
  
  void onKeyReleased(char k) {
        if(k=='a' || k=='A') {
      aDown=false;
    }
        if(k=='s' || k=='S') {
      sDown=false;
    }
        if(k=='w' || k=='W') {
      wDown=false;
    }
        if(k=='d' || k=='D') {
      dDown=false;
    }
  }
}
