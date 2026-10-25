---
title: Quiz — Paren
---

{% include menu.html %}

## 1

Maak het programma af. Het moet dit printen:

    India
    New Delhi

Hier is het programma:

{:.quiz-code}
. | my $city = India => &apos;New Dehli&apos;;
key | say $city.␣␣␣␣;
value | say $city.␣␣␣␣;

## 2

Wat print dit programma?

```raku
my $data = 1 => 2;
say $data.WHAT;
```

{:.quiz-select}
(Pair) | Output: (: (Int), (Array), (Pair) :) | Dit is een paar `Pair $data = 1 => 2`, waarbij zowel de sleutel als de waarde gehele getallen zijn.

{% include quiz.html %}

{% include nav.html %}
