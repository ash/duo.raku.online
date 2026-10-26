---
title: 'Risinājums: Komandrindas karodziņš'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Nosaukts `Bool` parametrs kļūst par karodziņu. Ja nodod `--shout`, `$shout` kļūst `True`. Ja jūs to izlaižat, tas patur noklusējuma vērtību `False`.

1. Pēc tam trejdaļīgais operators izdrukā `HELLO` vai `hello` atkarībā no karodziņa. Opcijai `--name=value` ir vērtība, bet karodziņam nav. Svarīgi ir tikai tas, vai karodziņš ir klāt.

{% include nav.html %}
