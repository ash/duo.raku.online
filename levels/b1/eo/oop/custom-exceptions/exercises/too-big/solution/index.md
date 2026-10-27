---
title: 'Solvo: Tro granda'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Eligo

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Komentoj

1. `TooBig is Exception` faras el la klaso escepton, kiun vi povas ĵeti. Ĝi portas du pecojn da datumoj, `value` kaj `limit`. Ĝia metodo `message` metas ambaŭ en la tekston, kiun ĝi raportas.

1. `.throw` levas la escepton, kaj `when TooBig` kongruas kun ĝi laŭ ĝia tipo. La traktilo faras pli ol presi la mesaĝon. Ĝi legas la atributon `limit` rekte el la kaptita objekto por doni utilan konsilon. Tial propra escepto estas pli bona ol simpla ĉeno. La traktilo ricevas datumojn kun klara strukturo, laŭ kiuj ĝi povas agi.

1. La escepto estas ĵetata **nur**, kiam `$value > $limit`. Por `30`, ne estas escepto, kaj la buklokorpo ruliĝas ĝis sia `say`. Ĝi presas, ke la valoro estas ene de la limo. Por `99` kaj `60`, la `throw` okazas, do tiu `say` estas preterlasata. La `CATCH` anstataŭe traktas la escepton. La korpo de `for` estas mem la bloko, kiun la `CATCH` gardas. Do kaptita escepto finas nur la nunan rondon. Poste la buklo simple iras al la sekva valoro.

{% include nav.html %}
