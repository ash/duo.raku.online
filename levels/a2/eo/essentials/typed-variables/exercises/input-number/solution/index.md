---
title: 'Solvo: Konverti uzantan enigon al nombro'
---

{% include menu.html %}

La programo povas esti tre simpla:

## Kodo

```raku
my Int $n = prompt 'Enigu numeron: ';
say $n;
```

🦋 Vi povas trovi la fontkodon en la dosiero [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Ekzemplo

Rulu ĝin kaj enigu entjeron. Ĝi povas esti pozitiva aŭ negativa:

```console
$ raku exercises/typed-variables/input-number.raku
Enigu numeron: -42
-42
```

## Komentoj

Ni [vidis antaŭe](/eo/essentials/typed-variables/allomorphs), ke `prompt` redonas `IntStr` valoron. Vi povas asigni ĉi tiun valoron al `Int` variablo. Vi ne bezonas konverti ĝin.

Sed atentu. Foje vi enigas ĉenon, kiun Raku ne povas konverti al entjero. Tiam la programo haltas kun escepto.

{% include nav.html %}
