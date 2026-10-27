---
title: run en shell
translations_gpt:
---

{% include menu.html %}

Er zijn twee manieren om een extern programma te starten. De eerste is de functie `run`. Die gebruikt geen shell. Een shell is een programma dat commando's leest en uitvoert. `run` neemt het commando en zijn argumenten als **losse** waarden. Argumenten zijn de waarden die je aan het commando geeft. Daarna start `run` het programma direct:

```raku
run 'echo', 'hello';
```

Dit draait het programma `echo` met één argument, `hello`. Het programma drukt `hello` af. De argumenten komen los bij het programma aan. Dus kan geen shell spaties of speciale tekens verkeerd lezen. Daarom is `run` de veilige standaardkeuze.

De functie `shell` werkt op een andere manier. Die geeft **één string** aan de shell van het systeem. De shell leest de string en voert hem uit. Zo kun je mogelijkheden van de shell gebruiken, zoals omleiding en pipes. Omleiding stuurt uitvoer naar een andere plek, bijvoorbeeld naar een bestand. Een pipe stuurt de uitvoer van het ene commando naar het volgende:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hier draait de shell `echo`. Een pipe stuurt de uitvoer naar `tr`. Daarna drukt de shell `HELLO` af. Dat is makkelijk, maar er is een risico. De shell leest de string zelf en deelt hem op in stukken. Misschien komt de string van invoer die je niet vertrouwt. Dan is een `shell`-commando gevaarlijk. Gebruik `run`, behalve als je echt shellmogelijkheden nodig hebt.

Beide functies geven een `Proc`-object terug. Dat vertelt je hoe het programma gestopt is. Normaal gebruikt het gestarte programma dezelfde uitvoer als jouw programma. Dus zie je zijn uitvoer op het scherm. Je kunt deze uitvoer ook opvangen. Daarvoor moet je erom vragen. Het volgende onderwerp laat zien hoe.

{% include nav.html %}
