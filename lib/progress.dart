class Progress {
  int _width = 0;

  Progress(int width) {
    this._width = width;
  }

  int getWidth() {
    return this._width;
  }

  void setWidth(int width) {
    this._width = width;
  }

  printProgress(String title, int percentage) {
    String hashes = "#" * (this._width / 100 * percentage).toInt();
    String dashes = "-" * (this._width - hashes.length);
    print("$title[" + hashes + dashes + "]");
  }
}
