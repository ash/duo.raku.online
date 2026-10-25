---
title: 'Solvo: Konverti uzantan enigon al nombro'
---

{% include menu.html %}

La programo povas esti tiel simpla kiel ĉi tio:

## Kodo

```raku
my Int $n = prompt 'Enigu numeron: ';
say $n;
```

🦋 Vi povas trovi la fontkodon en la dosiero [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Ekzemplo

Rulu ĝin kaj enigu entjeron, kiu povas esti pozitiva aŭ negativa:

```console
$ raku exercises/typed-variables/input-number.raku
Enigu numeron: -42
-42
```

## Komentoj

Kiel ni [vidis](/eo/essentials/typed-variables/allomorphs), `prompt` redonas ĉi tie `IntStr` valoron. Vi povas asigni ĝin al `Int` variablo sen ia devigo.

Notu tamen, ke kelkaj ĉenoj ne povas esti konvertitaj al entjero. Se vi enigas tian ĉenon, la programo haltas kun escepto.

{% include nav.html %}
