---
title: 'Risinājums: Komandrindas karodziņš'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Atrodiet programmu failā [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Izvade

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Komentāri

1. Nosaukts parametrs ar tipu `Bool` kļūst par karodziņu. Ar `--shout` mainīgais `$shout` ir `True`. Bez tā `$shout` patur noklusējuma vērtību `False`.

1. Tad trejdaļīgais operators izdrukā `HELLO` vai `hello`. Opcijai `--name=value` ir vērtība. Karodziņam vērtības nav. Svarīga ir tikai viena lieta: vai karodziņš ir vai nav?

{% include nav.html %}
