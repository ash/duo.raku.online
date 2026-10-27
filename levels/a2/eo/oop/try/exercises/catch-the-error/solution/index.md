---
title: 'Solvo: Kaptu la eraron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Vi povas trovi la fontkodon en la dosiero [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Eligo

```
42
False
broken
```

## Komentoj

1. Ĉi tie, la bloko ruliĝas sen eraro. Tiam `try` simple donas la valoron de la bloko. Do `$ok` tenas `42`.

1. La `die` en la dua bloko ĵetas escepton. Do ĉi tiu bloko donas nedifinitan valoron. `$bad.defined` estas `False`.

1. Raku tenas la kaptitan escepton en la speciala variablo `$!`. `$!.message` redonas la tekston de la escepto, `broken`.

{% include nav.html %}
