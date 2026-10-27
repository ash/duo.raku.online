---
title: 'Solvo: Kaptu la eraron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Kiam la bloko ruliĝas sen eraro, `try` simple donas la valoron de la bloko. Do `$ok` tenas `42`.

1. La `die` en la dua bloko ĵetas escepton. Do tiu bloko donas nedifinitan valoron, kaj `$bad.defined` estas `False`.

1. La kaptita escepto estas konservita en la speciala variablo `$!`. `$!.message` redonas la tekston, kiun ĝi ricevis, `broken`.

{% include nav.html %}
