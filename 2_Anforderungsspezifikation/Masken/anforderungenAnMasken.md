# Frontend: Masken

Die Frontend-Logik soll mithilfe von Masken / Formularen programmiert werden.  
Masken sollen die Erfassung und Änderung von Datensätzen ermöglichen.  

Alle Datensätze sollen in einer fortlaufenden Liste angezeigt werden. Es soll Listen geben für:

1. Studierendendaten  
2. Daten der Referenten  
3. Daten zur wissenschaftlichen Arbeit inklusive der Benotung und Deputatswerte  

Durch das Klicken auf ein Listenelement öffnet sich die zugehörige Maske.  

Die Anwendung soll zusätzlich, z.B. per Menü, die Erfassung und Löschung neuer Datensätze ermöglichen. Wünschenswert wäre auch eine Änderung der Datensätze per Menü  

## Masken

Im Folgenden finden Sie Vorschläge für Masken. Diese müssen mit geeigneten UI-Elementen realsiert werden.  
Für Datumswerte eignen sich Date-Picker.  
Felder, die dunkel hinterlegt sind, sind read-only.  

Die Navigation zwischen den Masken ist nicht vollumfänglich abgebildet.
Es bietet sich an, weitere Übersichtsmasken anzulegen, die die Auswahl von Referenten und Korreferenten zu einer Arbeit erlauben (Dropdown oder Neuanlage). Diese Übersichtsseite könnte z.B. aufgerufen werden, wenn ein Doppelklick auf einen Listeneintrag erfolgt oder über ein Menü die Erzeugung eines neuen Datensatzes angestoßen wird.  

### Referenten  

Bei der Erfassung eines Referenten ist es unerheblich, ob es sich um einen Referenten oder Korreferenten handelt. Die Zuordnung erfolgt erst nach der Anlage einer Arbeit. Es kann auch sein, dass Erstkorrektor und Zweitkorrektor nach Vereinbarung des genauen Titels zu einem späteren Zeitpunkt festgelegt werden.  

![Maske: Referent anlegen](/2_Anforderungsspezifikation/Masken/UI_Referent_anlegen.jpg "Referenten-Maske")

### Studierende

Die Erfassung von Studierenden ist vor dem Anlegen der Arbeit verpflichtend. Dabei muss ein Studiengang angelegt werden. Studierende können in der Datenbank auch mehrfach existieren. So ist es denkbar, dass ein Bachelorstudierender später auch als Masterstudierender an der Hochschule bleibt und eine Masterarbeit schreibt. Die Erfassung des Studienganges ist daher verpflichtend.  
Felder wie Adresse und Telefon müssen nicht erfasst werden. Die Erfassung der E-Mail ist verpflichtend.  
![Maske: Studierende anlegen](/2_Anforderungsspezifikation/Masken/UI_Studierende_anlegen.jpg)]

### Wissenschaftliche Arbeit

Eine wissenschaftliche Arbeit wird in der Regel von einem Studierenden geschrieben. Es ist jedoch auch möglich, dass die Arbeit als Gruppenarbeit verfasst wird. (Dieser Fall soll erst einmal nicht berücksichtigt werden. Stattdessen wird dann die Arbeit zweimal erfasst.)  

Der Titel der Arbeit kann sich ändern. Im Titelfeld kann zuerst ein Arbeitstitel erfasst werden.  

Das Startdatum wird durch das Prüfungsamt mitgeteilt. Ebenso das Abgabedatum. Ein Datum: Ende der Korrektur wäre wünschenswert, ist jedoch nicht verpflichtend.  

Sobald das Kolloquiumsdatum feststeht, wird dieses mit der Startzeit erfasst.  Die End-Uhrzeit des Kolloquiums wird durch die Maske zur Erfassung des Kolloquiumsprotokolls gesteuert (hier read-only). Auch die Startuhrzeit kann durch die Maske des Kolloquiumsprotokoll überschrieben werden.  

![Maske: wissenschaftliche Arbeit anlegen](/2_Anforderungsspezifikation/Masken/UI_wiss_Arbeit_anlegen.jpg)]

### Kolloquiumsprotokoll  

In der Maske werden der Titel und Studierender als read-only angezeigt. Alle anderen Felder sind Eingabefelder.  

Ein weiteres Feld sollte die Angabe eines Raumes ermöglichen oder ob das Kolloquium online stattgefunden hat. Es muss außerdem geprüft werden, ob der Studierende sich gesund fühlt, um das Kolloquium abzulegen und ob er die Öffentlichkeit zulässt. Ein weiteres Feld sollte als Abhakfeld "Identität wurde geprüft" angelegt werden.  

Erfassung Kolloquiumsprotokoll
![Maske: Studierende anlegen](/2_Anforderungsspezifikation/Masken/UI_Kolloquium_protokollieren.jpg)]
