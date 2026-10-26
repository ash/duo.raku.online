---
title: 'Solvo: Heredoko'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La heredoc komenciĝas per `qq:to`, ne per `q:to`. Do ĝi interpolas. Ĝi funkcias kiel `qq`-ĉeno. Ĝi enmetas la skalarojn `$name`, `$count` kaj `$item`. Ĝi *ankaŭ* rulas kodon ene de la teksto. La bloko `{$count * $price}` kalkulas `3 * 25`. Do la totalo `75` aperas en la teksto.

1. Rigardu la duoblajn citilojn en `"$item"`. Ĉi tie ili estas nur normalaj signoj. En heredoc, citiloj ne estas limigiloj. Do ili ne bezonas maldekstran streketon. Raku presas la citilojn sen ŝanĝo. Sed ĝi tamen interpolas `$item`.

1. La korpo kaj la ferma `END` ambaŭ havas kvar spacetojn antaŭe. Raku forigas la krommarĝenon de la finilo el ĉiu linio. Do ĉi tiuj kvar spacetoj neniam eniras la ĉenon. La eligo komenciĝas ĉe la maldekstra rando.

1. La heredoc jam finiĝas per novlinio. Do la programo uzas `print`, ne `say`. `say` aldonas ankoraŭ unu novlinion. Tio donas kroman malplenan linion.

{% include nav.html %}
