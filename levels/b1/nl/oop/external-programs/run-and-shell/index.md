---
title: run en shell
translations_gpt:
---

{% include menu.html %}

Er zijn twee manieren om een extern programma te starten. De functie `run` neemt het commando en zijn argumenten als **afzonderlijke** waarden. Die draait het programma direct, zonder shell:

```raku
run 'echo', 'hello';
```

Dit draait het programma `echo` met één argument, `hello`, dus het drukt `hello` af. De argumenten worden apart meegegeven, dus een shell kan spaties of speciale tekens niet verkeerd lezen. Daarom is `run` de veilige standaardkeuze.

De functie `shell` werkt anders. Die geeft **één enkele string** aan de systeemshell, die hem leest en uitvoert. Zo kun je shellmogelijkheden gebruiken, zoals pipes en omleiding:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hier draait de shell `echo` en stuurt hij de uitvoer met een pipe door `tr`. Daarna drukt hij `HELLO` af. Dat is handig, maar je moet voorzichtig zijn. De shell beslist zelf wat de string betekent. Het is dus gevaarlijk om een `shell`-commando te bouwen uit invoer die je niet vertrouwt. Gebruik `run`, tenzij je echt shellmogelijkheden nodig hebt.

Beide functies geven een `Proc`-object terug, dat beschrijft hoe het programma geëindigd is. Standaard deelt het gestarte programma de uitvoer van jouw programma. Wat het afdrukt, verschijnt dus op het scherm. Als je die uitvoer wilt opvangen, moet je erom vragen. Dat is het onderwerp van het volgende onderdeel.

{% include nav.html %}
