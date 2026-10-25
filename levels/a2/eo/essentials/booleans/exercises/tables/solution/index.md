---
title: 'Solvo: Booleaj tabeloj'
---

{% include menu.html %}

Jen unu maniero solvi la taskon. La programo presas ĉiujn rezultojn de la Booleaj operacioj.

## Kodo

```raku
say 'True && True estas ', True && True; 
say 'True && False estas ', True && False;
say 'False && True estas ', False && True;
say 'False && False estas ', False && False;

say 'True || True estas ', True || True; 
say 'True || False estas ', True || False;
say 'False || True estas ', False || True;
say 'False || False estas ', False || False;

say 'True ^^ True estas ', True ^^ True; 
say 'True ^^ False estas ', True ^^ False;
say 'False ^^ True estas ', False ^^ True;
say 'False ^^ False estas ', False ^^ False;
```

🦋 Vi povas trovi la kompletan kodon en la dosiero [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Eligo

Rulu la programon. Ĝi presas ĉi tiun tabelon.

```console
$ raku tables.raku
True && True estas True
True && False estas False
False && True estas False
False && False estas False
True || True estas True
True || False estas True
False || True estas True
False || False estas False
True ^^ True estas Nil
True ^^ False estas True
False ^^ True estas True
False ^^ False estas False
```

## Komentoj

Notu, ke ĉi tie vi ne bezonas krampojn ĉirkaŭ la Booleaj operacioj. Tio estas pro la precedenco. Precedenco estas la ordo, en kiu Raku faras operaciojn. La Booleaj operacioj havas pli altan precedencon. Do Raku faras ilin unue. Sed kun ĉenkunigo, vi bezonas la krampojn:

```raku
say 'True && True estas ' ~ (True && True);
```

Vi ankaŭ povas meti la kodon en la ĉenon. Tio nomiĝas [koda interpolado](/eo/essentials/strings/code-interpolation).

{% include nav.html %}
