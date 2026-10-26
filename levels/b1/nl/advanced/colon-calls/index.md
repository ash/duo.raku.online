---
title: Aanroepen met een dubbele punt
---

{% include menu.html %}

Als je een methode of een subroutine aanroept, zet je de argumenten meestal tussen haakjes: `@a.grep(* > 5)`. Raku heeft ook een tweede vorm. Je zet een **dubbele punt** na de naam. Dan wordt alles erna de lijst van argumenten. Je hebt helemaal geen haakjes nodig:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

De dubbele punt in `grep:` doet hetzelfde als de haakjes. Dus betekent `(1..10).grep: * %% 2` precies hetzelfde als `(1..10).grep(* %% 2)`. Je kunt altijd de ene vorm gebruiken in plaats van de andere:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

De dubbele-puntvorm is het prettigst bij methoden die een **blok** of een [Whatever](/nl/advanced/whatever)-expressie krijgen. Dat komt doordat hij een laag haakjes binnen haakjes weghaalt. Vergelijk:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # haakjes om het blok
say @a.sort: { $^b <=> $^a }; # dubbele punt — geen sluithaakje nodig
```

Beide regels printen `(3 2 1)`, maar de versie met de dubbele punt is makkelijker te lezen. Dat geldt vooral als het blok lang is.

Aanroepen zonder haakjes gebruik je al bij lijstoperatoren, zoals `say 1, 2, 3`. Daar neemt `say` alles erna als zijn argumenten. De dubbele-puntvorm is hetzelfde voor methode-aanroepen. Er is één regel om te onthouden. De dubbele-puntvorm neemt de **rest van de instructie** als zijn argumenten. Dus moet hij aan het **einde** van een keten van aanroepen staan. Daarom werkt `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. Hier is `grep` de laatste aanroep, en er komt niets meer achter in de keten. Als je meer methoden moet aanroepen, gebruik dan de vorm met haakjes. Of groepeer de delen van de hele expressie om het duidelijk te maken:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Op één ding moet je letten. Gebruik de dubbele punt **en** haakjes niet samen, zoals in `.grep:( … )`. Dat botst met `:( … )`, de syntaxis voor een signatuur-literaal. Daarom kan Raku de code niet lezen. Gebruik ofwel `.grep( … )` ofwel `.grep: …`. Gebruik het een of het ander, niet allebei.

{% include nav.html %}
