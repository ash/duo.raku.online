---
title: '`given` en `when`'
translations_gpt: true
---

{% include menu.html %}

Soms moet een programma kiezen uit meerdere opties. Een rij `if`- en `elsif`-controles kan dan lang worden en vol herhaling zitten. In zulke gevallen is `given`/`when` vaak duidelijker. Het lijkt op het `switch`-statement in andere talen.

Het `given`-blok neemt een waarde en maakt die het _topic_. Het topic is de speciale variabele `$_`. Dan wordt elk `when`-blok met dit topic vergeleken. Het eerste blok dat overeenkomt, draait:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Dit programma drukt af:

```
two
```

Anders dan bij `switch` in sommige talen is er geen doorval (fall-through) naar het volgende geval. Zodra een `when` overeenkomt, draait zijn blok en is het `given`-blok klaar. De andere `when`-blokken worden niet getest.

## Het `default`-blok

Een `default`-blok draait als geen van de `when`-blokken overeenkwam. Het doet hetzelfde werk als de `else`-tak van een `if`-statement:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` is geen `1` en geen `2`, dus drukt het programma af:

```
many
```

{% include nav.html %}
