---
title: Dupunkta map
translations_gpt:
---

{% include menu.html %}

## Problemo

Jen esprimo. Ĝi duobligas la nombrojn de `1` ĝis `10`. Poste ĝi konservas nur la nombrojn pli grandajn ol `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Ŝanĝu la kodon. La voko de la metodo `grep` devas uzi la dupunktan formon, ne krampojn. Ne ŝanĝu la reston de la ĉeno. Memoru: la dupunkta formo prenas la reston de la deklaro. Do nur la lasta voko en ĉeno povas uzi ĝin.

## Ekzemplo

La programo presas:

```
(12 14 16 18 20)
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
