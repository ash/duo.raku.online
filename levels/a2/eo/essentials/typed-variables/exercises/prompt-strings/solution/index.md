---
title: 'Solvo: Ekzameni la rezulton de `prompt` — Ĉenoj'
---

{% include menu.html %}

## Kodo

Jen la tuta programo. Ĝi faras la laboron. Ĝi presas la ĉenon, kiun vi enigas, kaj ĝian tipon.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 You can find the source code in the file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testaj kuradoj

Rulu la programon du aŭ tri fojojn. Enigu malsamajn nomojn. La programo presas vian enigon denove. Ĝi ankaŭ diras al vi, ke la variablo enhavas ĉenon. Alivorte, ĝi estas objekto de la tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Nun rulu la programon denove. Tajpu kelkajn spacojn anstataŭ nomo. Poste premu Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Ni ne vidas la eligon. Sed ni vidas la tipon de la variablo. Ĝi ankoraŭ estas `Str`.

{% include nav.html %}
