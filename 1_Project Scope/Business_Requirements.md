# Prof-IS  

Business Requirements Document für die Entwicklung eines Professoren-Informationssystems  

## Executive Summary / Überblick für das Management  

Es soll ein **Informationssystem** entwickelt werden, das **Professoren** dabei unterstützt, die **Durchführung wissenschaftlicher Arbeiten** zu verwalten. Wissenschaftliche Arbeiten werden über ein oder mehrere Semester betreut und Professoren erhalten für die Betreuung ggf. eine Anrechnung von Semesterwochenstunden (SWS). Das System soll die manuelle Pflege in Tabellenkalkulationen ersetzen und es Studierenden ermöglichen, eigenständig Anträge zur Betreuung ihrer wissenschaftlichen Arbeiten an die Erst- und Zweitkorrektoren zu erstellen.  

## Project Objectives / Ziele des Projektes  

Das Projekt hat zum Ziel:

1. _Prototypentwicklung_: einen Prototypen für ein Professoren-Informationssystem zu erstellen, der lauffähig ist. Der Protoyp ist innerhalb eines Semesters zu erstellen und die Funktionsfähigkeit zu demonstrieren.
2. _Effizienzgewinn_: die manuellen Aufwände für Professoren bei der Verwaltung von wissenschaftlichen Arbeiten zu reduzieren  
3. _Aufwandsentschädigung_: die korrekte Verrechnung von Arbeiten - je nach Prüfungsordnung - sicherzustellen  
4. _Digitalisierung_: den Digitalisierungsgrad der hochschulinternen Verwaltungsprozesse zu erhöhen  

## Needs Statement / Bedarfsdeckung  

Professoren betreuen wissenschaftliche Arbeiten in unterschiedlicher Anzahl.  

Die Durchführung von Arbeiten und die Verrechnung von Deputaten / SWS unterscheidet sich erheblich zwischen Prüfungsordnung / Studiengängen und Fachbereichen einer Hochschule. Professoren wird aufgenötigt, sich in die komplexen Vorgaben der Prüfungsordnungen einzuarbeiten.  
Dies führt dazu (Defizite), dass  

* der Überblick über Arbeiten verloren geht,  
* SWS nicht korrekt verrechnet werden,  
* es zu einer "Ungleichverteilung" der Anzahl der betreuten Arbeiten zwischen Professoren kommt und  
* letztlich die Betreuung von Arbeiten "unattraktiv" wird.  

_Vorteile durch die Entwicklung_: Das Prof-IS soll hier Klarheit schaffen und Professoren dabei unterstützen, mit minimalem Aufwand die administrativen Prozesse bei der Betreuung wissenschaftlicher Arbeiten zu vereinfachen.  

## Project Scope / Umfang des Projektes  

* **Es soll ein Professoreninformationssystem für Referente, Korreferenten und externe Betreuer wissenschaftlicher Arbeiten programmiert werden.**  

* Das System soll als _**Funktionsprototyp**_ entwickelt werden. Dieser soll als Vorgabe für eine spätere Implementierung in einer Produktionsumgebung herangezogen werden können.  

* Die Entwicklung erfolgt durch Studierende. Es sind daher Technologien zu verwenden, die schnell durch die Studierenden verwendet werden können.  

## Requirements / Anforderungen

1. Verwaltung von _Studierendendaten_ (Ersteller der wiss. Arbeiten)
2. Verwaltung von _Metadaten_ zu wissenschaftlichen Arbeiten (Titel, Studiengang, Prüfungsordnung)
3. Verwaltung der _Zeiten_: Anfangsdatum, Abgabedatum, Datum des Kolloquiums sowie Zuordnung der Daten zu Semestern
4. Erfassung von _Notenbestandteilen_: Teilnoten der Referenten und Korreferenten für Arbeit und Kolloquium.
5. _Berechnung der SWS_ anhand der Vorgaben der Prüfungsordnung für Referenten und Korreferenten sowie Zuordnung der Sätze zu Semestern.  
6. Verwaltung von _Steuer-/Konfigurationsdaten_, z.B. Semesterzeiten (wann beginnt und endet ein Semester) sowie der Studiengänge.  
7. Funktionen zum _Laden externer Datenquellen_, z.B. Daten in Form von JSON, XML, ...  

## Key Stakeholders / Vom Projekt betroffene Schlüsselpersonen  

1. _Professorinnen und Professoren_: diese fungieren als Referenten und Korreferenten wissenschaftlicher Arbeiten, unterstützen bei der Themenfindung und sind die Personen, die das Prof-IS hauptsächlich verwenden.  
2. _Studierende_: die Arbeiten der Studierenden werden im System verwaltet. Studierende können in einer höheren Ausbaustufe auch selbst Anträge zur Betreuung einer Arbeit stellen.
3. _Mitarbeitende im Dekanat_: die Mitarbeitenden im Dekanat verrechnen die durch die Betreuung von Arbeiten entstehenden SWS-Guthaben für Referenten und Korreferenten.  
4. _Externe Gutachter_: diese können auch als Referent oder Korreferent Arbeiten betreuen, müssen aber mindestens das Niveau des Abschlusses (Bachelor, Master, Promotion) haben, den der Studierende nach dem Abschluss der Arbeit erhält.  
5. _IT-Abteilung_: in diesem Projekt wird ein lauffähiger Prototyp entwickelt, der jedoch zu einem späteren Zeitpunkt in eine Produktionsumgebung der Hochschule überführt werden kann. Sollte dies beabsichtigt sein, so ist die IT-Abteilung der Hochschule der zentrale Ansprechpartner für die Erstellung von Verfahrensmeldungen, zusätzliche technische Anforderungen und die Einbettung des Systems in die Infrastruktur der Hochschule (Berechtigungssysteme usw.)  

## Project Constraints / Nebenbedingungen  

Im Prof-IS soll nicht enthalten sein:  

1. Die _Verwaltung der Dokumente_ der Arbeit (Vorversionen, Arbeit, Anhänge etc.) sowie die Korrektur der Dokumente.  
2. Die _Prüfung der Berechtigung_, ob eine wissenschaftliche Arbeit geschrieben werden darf (je nach Prüfungsordnung z.B. das Erreichen einer Mindestanzahl von Kreditpunkten).  
3. Die _Bewertung der Arbeit_ (Plagiatsprüfung, Gutachten, Kolloquiumsprotkoll und -note).  
4. Die _Versionierung_ wegen Änderung von SWS-Verrechnungssätzen durch Änderung von Prüfungsordnungen.  
5. Warnungen, wenn das Maximaldeputet überschritten wird - es wird angenommen, dass maximal 2 SWS pro Semester an Deputat gutgeschrieben werden können.
6. Die _Userverwaltung_ im Prof-IS entfällt. Diese soll später in einer Produktionsvariante nachgezogen werden.  

## Schedule / Zeitplanung / Meilensteine  

Das Projekt kann in mehreren Ausbaustufen entwickelt werden:

1. **Milestone 1**: Definition der Datenhaltung - die Datenhaltung soll als erstes entwickelt werden. Es wird ein Google Sheet mit Testdaten vorgegeben.  
2. **Milestone 2**:Definition der Formulare - Formulare sollen entworfen werden, um die Datenbefüllung der Datenhaltungsebene zu gewährleisten. U.a. Formulare für: Erstellung von Studierendeneinträgen, Anlegen einer wissenschaftlichen Arbeit (Bachelor, Masterarbeit) sowie Zuordnung der Arbeit zu einem Studiengang
3. **Milestone 3**: Erzeugung von Reports für Referenten und Korreferenten - Reports zur Darstellung von: Anzahl betreuter Arbeiten nach Kategorien pro Semester, Anzahl der zu verrechnenden SWS pro Semester
4. **Milestone 4**: Erzeugung von Load-Skripten zum Laden externer Daten und Darstellung von Datenfehlern.

## Cost Benefit Analysis / Kosten-Nutzen-Analyse  

### Kostenschätzung  

Die Kostenschätzung orientiert sich an einem fiktiven Tagessatz eines Junior-Developers i.H.v. € 360 (brutto).  

10 Entwickler x 12 Wochen x 1 Tag / Woche x € 360 (brutto) = € 43.200

### Erwarteter Nutzen  

1. _Reduktion der Arbeitsaufwände_ in Dekanat und auf Seite der Professoren  
2. _Reduktion der Kontaktzeiten_ zur Betreuung wissenschaftlicher Arbeiten: Studierende erfassen die Metadaten der Arbeiten, insbesondere den Titelvorschlag und ein Management Summary eigenständig, so dass Referenten über die Passung des Themas entscheiden können und Studierende frühzeitig bei Nicht-Passung an andere Referenten verweisen können.  
3. Beitrag zur _Umsetzung der Digitalisierungsziele_ der Hochschule.  
4. Schaffung einer _einheitlichen Datenbasis_ mit der Möglichkeit zur Erhebung von Leistungsdaten.  

## Glossary / Glossar  

Referent / Korreferent: Alternativ Erstbetreuer und Zweitbetreuer. Referenten vereinbaren mit dem Studierenden den Titel der Arbeit, betreuen hauptsächlich die Arbeit und erstellen ein Gutachten der Arbeit. Korreferenten erstellen ein Zweitgutachten oder bestätigen das Gutachten des Referenten nach eigener Durchsicht der Arbeit an. Referenten sind entweder Professoren der Hochschule oder Externe, die die Voraussetzungen zur Betreuung wissenschaftlicher Arbeiten erfüllen.  

Semesterwochenstunden (SWS): Professoren haben ein Deputat von Semesterwochenstunden zu erfüllen. Abhängig von der Art der Hochschule unterscheidet sich die Anzahl der SWS. Für die Betreuung wissenschaftlicher Arbeiten können bis zu 0,2 SWS angerechnet werden. In Summe kann ein Professor maximal 2 SWS pro Semester geltend machen. Darüber hinaus betreute Arbeiten werden nicht vergolten. Die Gesamtzahl von Professoren abzuleistenden SWS beträgt an einer Hochschule für Angewandte Wissenschaften in Hessen i.d.R. 18 SWS. Reduktionen des Deputats sind bspw. für Forschungsaktivitäten möglich.  

Wissenschaftliche Arbeit: Arbeiten, die als Abschlussarbeiten an einer Hochschule geschrieben werden, z.B. Bachelor-, Masterarbeiten. Im Rahmen der Entwicklung werden Doktorarbeiten nicht betrachtet. Auch Seminararbeiten sind nicht Gegenstand des Informationssystems.  
