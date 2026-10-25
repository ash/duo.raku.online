---
title: Invoer met `prompt`
---

{% include menu.html %}

Het tegenovergestelde van `say` is `prompt`. Het wacht tot de gebruiker iets typt en op Enter drukt. Daarna stuurt het de invoer als een string naar het programma. Je kunt het resultaat van `prompt` nemen en doorgeven aan `say`. Dan drukt het programma af wat de gebruiker typt. Laten we zo'n programma schrijven:

```raku
say prompt;
```

Als je dit programma uitvoert, kan het je in de war brengen. Het programma wacht alleen op invoer. Het is dus goed om een promptbericht voor de gebruiker af te drukken. Dat maakt het programma gebruiksvriendelijker. Je hebt hiervoor geen aparte `say` nodig. Geef het bericht gewoon door aan `prompt`:

```raku
prompt 'Welke taal ga je leren? '
```

Voordat we deze sectie afsluiten, voegen we alle stukken samen. We maken een programma dat vraagt wat de gebruiker wil. Daarna drukt het een zin af met de tekst die de gebruiker heeft ingevoerd.

```raku
say 'Je gaat ', prompt 'Welke taal ga je leren? ', ' leren';
```

Als je `Raku` hebt ingevoerd, drukt het programma de volgende zin af:

    Je gaat Raku leren

Oké, we kunnen nu met het programma praten. En we kunnen het met ons laten praten!

Let op: `say` moet de strings kennen voordat het ze afdrukt. Daarom voert Raku eerst `prompt` uit. Zo blijft de dialoog in de juiste volgorde:

```console
$ raku t.raku 
Welke taal ga je leren? Raku
Je gaat Raku leren
```

{% include nav.html %}
