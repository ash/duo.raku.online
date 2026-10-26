---
title: '`given` en `when`'
translations_gpt: true
---

{% include menu.html %}

Soms moet een programma kiezen uit meerdere opties. Een rij `if`- en `elsif`-controles kan lang worden. Die herhaalt ook steeds dezelfde dingen. In dat geval is `given`/`when` vaak duidelijker. Het lijkt op het `switch`-statement in andere talen.

Het `given`-blok neemt een waarde. Het maakt deze waarde het _topic_. Het topic is de speciale variabele `$_`. Dan vergelijkt Raku elk `when`-blok met het topic. De eerste `when` die overeenkomt, draait:

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

Sommige andere talen hebben een `switch`-statement. Na een match kan die doorgaan naar het volgende geval. Raku doet dat niet. Als een `when` overeenkomt, draait zijn blok. Dan stopt het `given`-blok. Raku test de andere `when`-blokken niet.

## Het `default`-blok

Een `default`-blok draait als geen enkel `when`-blok overeenkomt. Het werkt zoals het `else`-deel van een `if`-statement:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` is niet `1` en niet `2`. Daarom drukt het programma af:

```
many
```

{% include nav.html %}
