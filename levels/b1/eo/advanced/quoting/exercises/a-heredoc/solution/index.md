---
title: 'Solvo: Heredoko'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Vi povas trovi la fontkodon en la dosiero [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Eligo

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Komentoj

1. La heredoc komenciĝas per `qq:to` anstataŭ `q:to`, do ĝi interpolas. Kiel `qq`-ĉeno, ĝi enmetas la skalarojn `$name`, `$count` kaj `$item`. Ĝi *ankaŭ* rulas kodon ene de la teksto: la bloko `{$count * $price}` kalkulas `3 * 25`. Do la totalo, `75`, aperas rekte en la teksto.

1. La duoblaj citiloj ĉirkaŭ `"$item"` estas nur normalaj signoj ĉi tie. Ene de heredoc ne estas limigilo, kiun oni devas eskapi. Do la citiloj estas presitaj kiel skribitaj, dum `$item` tamen estas interpolita.

1. La korpo kaj la ferma `END` havas la saman krommarĝenon de kvar spacetoj. La krommarĝeno de la finilo estas forigita el ĉiu linio. Do tiuj kvar spacetoj neniam eniras la ĉenon. La eligo komenciĝas ĉe la maldekstra rando.

1. La heredoc jam finiĝas per novlinio. Do la kodo uzas `print` anstataŭ `say`. Kun `say`, vi ricevus duan novlinion kaj kroman malplenan linion.

{% include nav.html %}
