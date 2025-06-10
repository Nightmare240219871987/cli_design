import "lib/table.dart";
import "lib/progress.dart";
import "lib/util.dart";

void main() {
  Util.clear();
  Table tbl = new Table(60);
  tbl.printHeader("Main Menu", Alignment.CENTER);
  tbl.printRow("1. Fahrzeug hinzufügen", false, Alignment.LEFT);
  tbl.printRow("2. Strecke hinzufügen", false, Alignment.LEFT);
  tbl.printRow("3. Berechnungen ausgeben", false, Alignment.LEFT);
  tbl.printRow("4. Beenden", true, Alignment.LEFT);
  Progress prg = new Progress(60);
  prg.printProgress("", 3);
}
