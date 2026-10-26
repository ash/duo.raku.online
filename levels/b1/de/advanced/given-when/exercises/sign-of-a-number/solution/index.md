---
title: 'Solution: Gerade, ungerade oder null'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Du findest den Quellcode in der Datei [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Ausgabe

```
even
```

## Kommentare

1. `when 0` passt nur auf den Wert null. Es steht an erster Stelle, weil null auch gerade ist und wir sie getrennt ausgeben wollen.

1. `when $_ %% 2` ist eine Bedingung, wobei `$_` das Thema ist, das `given` setzt. Der Operator `%%` prüft, ob das Thema glatt durch zwei teilbar ist. Der Wert `12` ist nicht null, aber durch zwei teilbar, also gibt das Programm `even` aus.

1. `default` deckt alles ab, was übrig bleibt. Das sind die Zahlen, die weder null noch gerade sind, also die ungeraden.

{% include nav.html %}
