# 3.2 Praxis: Programmierung
**(2 Bonuspunkte)**

## Aufgabe
Implementieren Sie in Dart ein Programm zum Ausgeben und Vergleichen von Stundenplänen.
Ihr Programm muss mindestens die drei folgenden Funktionen umfassen und mit dem
  gegebenen Code (siehe nächste Seite) kompatibel sein. 
- a) printDaySchedule: Gibt den Stundenplan für einen bestimmten Tag in einer selbstgewählten Formatierung über die Konsole aus. 
- b) printWeekSchedule: Gibt den Stundenplan für eine ganze Woche in einer selbstgewählten Formatierung über die Konsole aus. 
- c) printWhenMensa: Vergleicht zwei Stundenpläne für einen gegebenen Wochentag.
      
1. Bei Übereinstimmung werden die passenden DS für den gemeinsamen Mensagang ausgeben.
2. Falls es keine Übereinstimmung gibt wird ausgegeben, dass ein Mensagang an diesem Tag nicht möglich ist.

Gegebener Code:

```dart
enum Weekday {MO, DI, MI, DO, FR}
void main() {
 Map<Weekday, List<String>> student1 = {
 Weekday.MO: ["", "", "VL: Mathe", "Ü: Seminargruppe", "", ""],
 Weekday.DI: ["", "", "", "", "", ""],
 Weekday.MI: ["", "Ü: EMI", "VL: Mathe", "Ü: AUD", "", ""],
 Weekday.DO: ["Ü: Mathe", "Ü: Mathe", "VL: EMI", "", "", ""],
 Weekday.FR: ["", "VL: AUD", "VL: Mathe", "", "", ""],
 };
 Map<Weekday, List<String>> student2 = {
 Weekday.MO: ["VL: Mathe", "Ü: Seminargruppe", "", "", "", ""],
 Weekday.DI: ["", "", "", "", "", ""],
 Weekday.MI: ["Ü: EMI", "", "VL: Mathe", "", "Ü: Mathe", "Ü: AuD"],
 Weekday.DO: ["", "", "VL: EMI", "", "", ""],
 Weekday.FR: ["", "VL: AUD", "VL: Mathe", "", "", ""],
 };
 Weekday day = Weekday.MO;
 printWeekSchedule(student1);
 printDaySchedule(student1, day);
 printWhenMensa(student1, student2, day);
}
```

## Hinweise:
- Verändern Sie den gebenden Code (außer zum Testen und Debuggen) nicht. Ihr Code
    muss zum Schluss mit diesem geben Ausschnitt kompatibel sein und wird mit
    verschieden Varianten dieses Codes getestet.
    
- Das Hinzufügen zusätzlicher Hilfsfunktionen außerhalb der main() ist erlaubt.
  
- Ein print() des gesamten Feldes auf einmal ist für die Ausgabe nicht ausreichend. Es
    muss über die einzelnen Felder iteriert werden. Strukturieren Sie die Ausgabe unter
    Verwendung von Text und Delimitern, wie Pipe (|) oder Doppelpunkt.
    
- Lösen Sie die Aufgabe innerhalb der Gruppe und ausschließlich unter Zuhilfenahme von
    Dokumentation, vorhandenen Code-Beispielen oder den Standart-Funktionen einer IDE.
    Die Verwendung von ChatGPT und anderen KI-Tools zur Lösung der Aufgabe ist untersagt
    und kann zum Verlust aller Bonuspunkte führen.

- Dokumentieren Sie ihr selbstständiges Arbeiten durch 
  - ausführliche und verständliche Kommentare 
  - die Abgabe von zwei (nicht notwendigerweise lauffähigen) Zwischenständen nach 15 und 30 Zeilen eigenem Code

Die Qualität ihrer Dokumentation geht in die Bewertung ein!

## Abgabe:
- main.dart:
  - finale, kommentierte, lauffähige Version ihrer Abgabe mit gegeben Code
- wip1.dart und wip2.dart:
  - Arbeitsstand nach je 15 und 30 Zeilen eigenem Code
  - kommentiert
  - nicht zwingend lauffähig
