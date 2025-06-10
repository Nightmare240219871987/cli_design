enum Alignment { LEFT, RIGHT, CENTER }

class Table {
  int _width = 0;

  Table(int width) {
    this._width = width;
  }

  int getWidth() {
    return this._width;
  }

  void setWidth(int width) {
    this._width = width;
  }

  void printHeader(String title, Alignment align) {
    int titleLength = title.length;
    if (titleLength % 2 == 1) {
      titleLength++;
      title = title + " ";
    }
    int signWidth = (this._width - titleLength) ~/ 2;

    print(" " + "_" * (this._width - 1));

    if (align == Alignment.LEFT) {
      print("|" + " " + title + " " * (signWidth * 2 - 1) + "|");
    } else if (align == Alignment.CENTER) {
      print("|" + " " * signWidth + title + " " * signWidth + "|");
    } else if (align == Alignment.RIGHT) {
      print("|" + " " * (signWidth * 2 - 1) + title + " |");
    }

    print(" " + "-" * (this._width - 1));
  }

  void printRow(String content, bool end, Alignment align) {
    int contentLength = content.length;
    if (contentLength % 2 == 1) {
      contentLength++;
      content = content + " ";
    }
    int signWidth = ((this._width - contentLength) / 2).toInt();

    if (align == Alignment.LEFT) {
      print("| " + content + " " * (signWidth * 2 - 1) + "|");
    } else if (align == Alignment.CENTER) {
      print("|" + " " * signWidth + content + " " * signWidth + "|");
    } else if (align == Alignment.RIGHT) {
      print("|" + " " * ((signWidth * 2) - 1) + content + " |");
    }

    if (end) {
      print(" " + "-" * (this._width));
    }
  }
}
