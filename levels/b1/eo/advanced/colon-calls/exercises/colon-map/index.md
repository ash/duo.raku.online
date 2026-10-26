---
title: Dupunkta map
translations_gpt:
---

{% include menu.html %}

## Problemo

Ĉi tiu esprimo duobligas la nombrojn de `1` ĝis `10`. Poste ĝi konservas nur tiujn, kiuj estas pli grandaj ol `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Reskribu la kodon tiel, ke la voko de `grep` uzu la dupunktan formon, ne krampojn. Ne ŝanĝu la reston de la ĉeno. Memoru, ke la dupunkta formo prenas la tutan reston de la deklaro. Do nur la lasta voko en ĉeno povas uzi ĝin.

## Ekzemplo

La programo presas:

```
(12 14 16 18 20)
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
