class Table {
  // Private Variablen
  int _width = 0;

  // Konstruktor
  Table(int width) {
    this._width = width;
  }
  // Getter und Setter
  int getWidth() {
    return this._width;
  }

  void setWidth(int width) {
    this._width = width;
  }

  // Methoden
  void printHeader(String title) {
    int titleLength = title.length;
    int signWidth = this._width - titleLength;

    print(" " + "_" * (this._width - 1));
    print(
      "|" +
          " " * (signWidth / 2).toInt() +
          title +
          " " * (signWidth / 2).toInt() +
          "|",
    );
    print(" " + "-" * (this._width - 1));
  }

  void printRow(String content, bool end) {
    int contentLength = content.length;
    int signWidth = ((this._width - contentLength) / 2).toInt();
    print("|" + " " * signWidth + content + " " * (signWidth - 1) + "|");
    if (end) {
      print(" " + "-" * (this._width));
    }
  }
}
