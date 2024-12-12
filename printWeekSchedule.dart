void printWeekSchedule(student) {
  // Tabellenkopf
  print("+" + "-" * 14 + "+" + "-" * 47 + "+");
  print("|   Wochentag  |  Stundenplan " + " " * 33 + "|");
  print("+" + "-" * 14 + "+" + "-" * 47 + "+");
  // Iteriert über jedes key - value Paar in "student"
  student.forEach((key, value) {
    var day = key.toString().split(".").last; // Formatiert den Wochentag
    var timetable = ""; // Initialisiert den String "Timetable"
    // Iteriert über jedes Event im Timetable eines Tages
    for (var event in value) {
      if (event.toString() == "") {
        timetable = timetable + " __ "; // Fügt "__" für Freistunden hinzu
      }
      else {
        timetable = timetable + " $event "; // Fügt das Event hinzu
      }
    }
    // Gibt Tabellenzeile mit hinzugefügten Elementen aus
    print("| ${day.padLeft(7).padRight(12)} | ${timetable.padRight(45)} |");
  });
  // Tabellenfuß
  print("+" + "-" * 14 + "+" + "-" * 47 + "+");
}