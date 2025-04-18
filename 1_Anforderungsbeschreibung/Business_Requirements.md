# Prof-IS  

Business Requirements Document für die Entwicklung eines Professoren-Informationssystems  

## Executive Summary / Überblick für das Management  

Es soll ein Informationssystem entwickelt werden, das Professoren dabei unterstützt, die Durchführung wissenschaftlicher Arbeiten zu verwalten. Wissenschaftliche Arbeiten werden über ein oder mehrere Semester betreut und Professoren erhalten für die Betreuung ggf. eine Anrechnung von Semesterwochenstunden (SWS). Das System soll die manuelle Pflege in Tabellenkalkulationen ersetzen und es Studierenden ermöglichen, eigenständig Anträge zur Betreuung ihrer wissenschaftlichen Arbeiten an die Erst- und Zweitkorrektoren zu erstellen.  

## Project Objectives / Ziele des Projektes  

Das Projekt hat zum Ziel:

1. Prototypentwicklung: einen Prototypen für ein Professoren-Informationssystem zu erstellen, der lauffähig ist. Der Protoyp ist innerhalb eines Semesters zu erstellen und die Funktionsfähigkeit zu demonstrieren.
2. Effizienzgewinn: die manuellen Aufwände für Professoren bei der Verwaltung von wissenschaftlichen Arbeiten zu reduzieren  
3. Aufwandsentschädigung: die korrekte Verrechnung von Arbeiten - je nach Prüfungsordnung - sicherzustellen  
4. Digitalisierung: den Digitalisierungsgrad der hochschulinternen Verwaltungsprozesse zu erhöhen  

## Needs Statement / Bedarfsdeckung  

Professoren betreuen wissenschaftliche Arbeiten in unterschiedlicher Anzahl. Die Durchführung von Arbeiten und die Verrechnung von Deputaten / SWS unterscheidet sich erheblich zwischen Prüfungsordnung / Studiengängen und Fachbereichen einer Hochschule. Dies führt dazu, dass SWS häufig nicht korrekt verrechnet werden und letztlich die Betreuung von Arbeiten "unattraktiv" wird. Das Prof-IS soll hier Klarheit schaffen und Professoren dabei unterstützen, mit minimalem Aufwand die administrativen Prozesse bei der Betreuung wissenschaftlicher Arbeiten zu vereinfachen.  

## Project Scope / Umfang des Projektes  

Es soll ein Professoreninformationssystem für Referente, Korreferenten und externe Betreuer wissenschaftlicher Arbeiten programmiert werden. Das System soll als Funktionsprototyp entwickelt werden und als Vorgabe für eine spätere Implementierung in einer Produktionsumgebung herangezogen werden können.  
Die Entwicklung erfolgt durch Studierende. Es sind daher Technologien zu verwenden, die durch die Studierenden schnell verwendet werden können.  

## Requirements / Anforderungen

1. Verwaltung von Studierendendaten (Ersteller der wiss. Arbeiten)
2. Verwaltung von Metadaten zu wissenschaftlichen Arbeiten (Titel, Studiengang, Prüfungsordnung)
3. Verwaltung der Zeiten: Anfangsdatum, Abgabedatum, Datum des Kolloquiums sowie Zuordnung der Daten zu Semestern
4. Erfassung von Notenbestandteilen: Teilnoten der Referenten und Korreferenten für Arbeit und Kolloquium.
5. Berechnung der SWS anhand der Vorgaben der Prüfungsordnung für Referenten und Korreferenten sowie Zuordnung der Sätze zu Semestern.  
6. Verwaltung von Steuerdaten, z.B. Semesterzeiten (wann beginnt und endet ein Semester) sowie der Studiengänge.  
7. Funktionen zum Laden externer Datenquellen, z.B. Daten in Form von JSON, XML, ...  

## Key Stakeholders / Vom Projekt betroffene Schlüsselpersonen  

1. Professorinnen und Professoren: diese fungieren als Referenten und Korreferenten wissenschaftlicher Arbeiten, unterstützen bei der Themenfindung und sind die Personen, die das Prof-IS hauptsächlich verwenden.  
2. Studierende: die Arbeiten der Studierenden werden im System verwaltet. Studierende können in einer höheren Ausbaustufe auch selbst Anträge zur Betreuung einer Arbeit stellen.
3. Mitarbeitende im Dekanat: die Mitarbeitenden im Dekanat verrechnen die durch die Betreuung von Arbeiten entstehenden SWS-Guthaben für Referenten und Korreferenten.  
4. Externe Gutachter: diese können auch als Referent oder Korreferent Arbeiten betreuen, müssen aber mindestens das Niveau des Abschlusses (Bachelor, Master, Promotion) haben, den der Studierende nach dem Abschluss der Arbeit erhält.  
5. IT-Abteilung: in diesem Projekt wird ein lauffähiger Prototyp entwickelt, der jedoch zu einem späteren Zeitpunkt in eine Produktionsumgebung der Hochschule überführt werden kann. Sollte dies beabsichtigt sein, so ist die IT-Abteilung der Hochschule der zentrale Ansprechpartner für die Erstellung von Verfahrensmeldungen, zusätzliche technische Anforderungen und die Einbettung des Systems in die Infrastruktur der Hochschule (Berechtigungssysteme usw.)  

## Project Constraints / Nebenbedingungen  

Im Prof-IS soll nicht enthalten sein:  

1. Die Verwaltung der Dokumente der Arbeit (Vorversionen, Arbeit, Anhänge etc.) sowie die Korrektur der Dokumente.  
2. Die Prüfung der Berechtigung, ob eine wissenschaftliche Arbeit geschrieben werden darf (je nach Prüfungsordnung z.B. das Erreichen einer Mindestanzahl von Kreditpunkten).  
3. Die Bewertung der Arbeit (Plagiatsprüfung, Gutachten, Kolloquiumsprotkoll und -note).  
4. Die Versionierung wegen Änderung von SWS-Verrechnungssätzen durch Änderung von Prüfungsordnungen.  
5. Warnungen, wenn das Maximaldeputet überschritten wird - es wird angenommen, dass maximal 2 SWS pro Semester an Deputat gutgeschrieben werden können.

## Schedule / Zeitplanung / Meilensteine  

Das Projekt kann in mehreren Ausbaustufen entwickelt werden:

1. Definition der Datenhaltung - die Datenhaltung soll als erstes entwickelt werden. Es wird ein Google Sheet mit Testdaten vorgegeben.  
2. Definition der Formulare - Formulare sollen entworfen werden, um die Datenbefüllung der Datenhaltungsebene zu gewährleisten. U.a. Formulare für: Erstellung von Studierendeneinträgen, Anlegen einer wissenschaftlichen Arbeit (Bachelor, Masterarbeit) sowie Zuordnung der Arbeit zu einem Studiengang
3. Erzeugung von Reports für Referenten und Korreferenten - Reports zur Darstellung von: Anzahl betreuter Arbeiten nach Kategorien pro Semester, Anzahl der zu verrechnenden SWS pro Semester
4. Erzeugung von Load-Skripten zum Laden externer Daten und Darstellung von Datenfehlern.

## Cost Benefit Analysis / Kosten-Nutzen-Analyse  

### Kostenschätzung  

10 Entwickler x 12 Wochen x 1 Tag / Woche x € 360 (brutto) = € 43.200

### Erwarteter Nutzen  

1. Reduktion der Arbeitsaufwände in Dekanat und auf Seite der Professoren  
2. Reduktion der Kontaktzeiten zur Betreuung wissenschaftlicher Arbeiten: Studierende erfassen die Metadaten der Arbeiten, insbesondere den Titelvorschlag und ein Management Summary eigenständig, so dass Referenten über die Passung des Themas entscheiden können und Studierende frühzeitig bei Nicht-Passung an andere Referenten verweisen können.  
3. Beitrag zur Umsetzung der Digitalisierungsziele der Hochschule.  
4. Schaggun einer einheitlichen Datenbasis mit der Möglichkeit zur Erhebung von Leistungsdaten.  

Glossary / Glossar  
