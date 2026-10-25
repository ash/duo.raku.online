---
title: 'Solvo: Booleaj tabeloj'
---

{% include menu.html %}

Jen unu ebla programo. Ĝi presas la rezultojn de ĉiuj Booleaj operacioj.

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

Kiam vi rulas la programon, ĝi presas la jenan tabelon.

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

Notu, ke la Booleaj operacioj ne bezonas krampojn ĉi tie. Ili havas pli altan precedencon. Sed tio ne veras, se vi uzas ĉenkunigon:

```raku
say 'True && True estas ' ~ (True && True);
```

Alia maniero estas uzi [kodan interpoladon](/eo/essentials/strings/code-interpolation).

{% include nav.html %}
