---
title: Invoer met `prompt`
---

{% include menu.html %}

`prompt` is het tegenovergestelde van `say`. Het wacht op de gebruiker. De gebruiker typt iets en drukt op Enter. Dan stuurt `prompt` de invoer als een string naar het programma. Je kunt het resultaat van `prompt` nemen en aan `say` geven. Dan herhaalt het programma wat de gebruiker typt. Laten we zo'n programma schrijven:

```raku
say prompt;
```

Voer dit programma uit. Misschien begrijp je niet wat er gebeurt. Het programma wacht alleen op invoer. Het is dus goed om eerst een bericht af te drukken. Dan is het programma makkelijker te gebruiken. Je hebt hiervoor geen aparte `say` nodig. Je kunt het bericht aan `prompt` geven:

```raku
prompt 'Welke taal ga je leren? '
```

Deze sectie is bijna klaar. Maar laten we eerst alle stukken samenvoegen. Het nieuwe programma vraagt wat de gebruiker wil. Daarna drukt het een zin af met de tekst van de gebruiker.

```raku
say 'Je gaat ', prompt 'Welke taal ga je leren? ', ' leren';
```

Als je `Raku` invoert, drukt het programma deze zin af:

    Je gaat Raku leren

Oké, nu kunnen we met het programma praten. En we kunnen het programma met ons laten praten!

Let op: `say` moet de strings kennen voordat het ze afdrukt. Daarom voert Raku eerst `prompt` uit. Zo gaat de dialoog in de goede volgorde:

```console
$ raku t.raku 
Welke taal ga je leren? Raku
Je gaat Raku leren
```

{% include nav.html %}
