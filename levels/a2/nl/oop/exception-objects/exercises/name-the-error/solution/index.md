---
title: 'Oplossing: Noem de fout'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Je kunt de broncode vinden in het bestand [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Uitvoer

```
X::AdHoc
sub failed
```

## Opmerkingen

1. De `die` gebeurt in `risky`. Maar de exceptie gaat omhoog naar de aanroeper. De aanroeper is de code die `risky` aanriep. Hier is dat het blok. De `CATCH` in dit blok handelt de exceptie af. Zo werkt foutafhandeling meestal. De code die een fout afhandelt, is de afhandelaar van die fout. De fout en haar afhandelaar kunnen in verschillende routines staan.

1. Een simpele `die` met een string maakt een `X::AdHoc`-exceptie. `.^name` toont dit type. `.message` geeft de tekst terug die we aan `die` gaven.

{% include nav.html %}
