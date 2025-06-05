import 'dart:io';

void main() {
  printTableHeader("Main Menu", 60);
}

void printTableHeader(String title, int width) {
  int titleLength = title.length;
  int signWidth = width - titleLength;

  print("_" * width);
  print(
    "|" +
        " " * (signWidth / 2).toInt() +
        title +
        " " * (signWidth / 2).toInt() +
        "|",
  );
  print("-" * width);
}
