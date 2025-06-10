import "lib/table.dart" as CLIDesign;
import "lib/screen.dart" as CLIDesign;

void main() {
  CLIDesign.Screen.clear();
  CLIDesign.Table tbl = new CLIDesign.Table(60);
  tbl.printHeader("Main Menu");
  tbl.printRow("1. Fahrzeug auswählen", false);
  tbl.printRow("2. Strecke hinzufügen", false);
  tbl.printRow("3. Zeige Strecken Berechnung", false);
  tbl.printRow("4. Beenden", true);
}
