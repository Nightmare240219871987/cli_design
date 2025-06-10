import "dart:io";

class Util {
  static void clear() {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
