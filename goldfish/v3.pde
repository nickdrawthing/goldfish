class v3 {
  float x, y, z;
  float buffersize = 75;
  v3(float _x, float _y) {
    x = _x;
    y = _y;
  }
  int contain() {
    int retV = 0;
    if (x < buffersize) {
      //x = 0;
      retV = 1;
    }
    if (x > width-buffersize) {
      //x = width;
      retV = 2;
    }
    if (y < buffersize) {
      //y = 0;
      retV = 3;
    }
    if (y > height-buffersize) {
      //y = height;
      retV = 4;
    }
    /*
    if (x < 0) {
      x = 0;
      retV = 5;
    }
    if (x > width) {
      x = width;
      retV = 6;
    }
    if (y < 0) {
      y = 0;
      retV = 7;
    }
    if (y > height) {
      y = height;
      retV = 8;
    }*/
    return retV;
  }
}