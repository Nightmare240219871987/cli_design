import "lib/table.dart" as CLIDesign;
import "lib/screen.dart" as CLIDesign;

void main() {
  CLIDesign.Screen.clear();
  CLIDesign.Table tbl = new CLIDesign.Table(60);
  tbl.printHeader("ysfgasdfghsdfgadfg");
  tbl.printRow("1. <sdfasdfasdfasdfasdf>", false);
  tbl.printRow("2. sdfasdfasdfasdfasdfasdf", false);
  tbl.printRow("3. sasdfasdfasdfasdfasdfasdf", false);
  tbl.printRow("4. 4563456456435643564563456", true);
}
