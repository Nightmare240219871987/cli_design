import "dart:io";

class Screen {
  static void clear() {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
