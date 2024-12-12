void printWhenMensa(student1, student2, day) {
  print('Freistunden für Mensa am ${day.toString().split('.').last}:');  //Ausgabe des Tagesnamens in lesbarer Form
  bool same = false; //um zu prüfen, ob es Freistunden gibt
  var events1 = student1[day]; //Spezifiziert die Daten die aus der Map benutzt werden sollen für Student1
  var events2 = student2[day]; //Spezifiziert die Daten die aus der Map benutzt werden sollen für Student2
  for (int i = 0; i < events1.length; i++) { //Läuft mehrmals durch die Stundenpläne der beiden Studenten für den Tag
    if (events1[i].isEmpty && events2[i].isEmpty) { //Prüft, ob beide Studenten in der aktuellen Stunde frei haben
      print('--> Beide haben in der ${i + 1}.DS eine Freistunde.'); // Ausgabe der freien Stunde
      same = true; //Markiert, dass mindestens eine Freistunde gefunden wurde
    }
  }
  if (!same) print('Es gibt keine gemeinsamen Freistunden am $day.'); //Falls es keine gemeinsame Freistunden gibt
}

