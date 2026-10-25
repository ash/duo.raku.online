---
title: 'Solvo: Ekzameni la rezulton de `prompt` — Ĉenoj'
---

{% include menu.html %}

## Kodo

Jen la kompleta programo. Ĝi faras la laboron kaj presas kaj la enigitan ĉenon kaj ĝian tipon.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 You can find the source code in the file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testaj kuradoj

Rulu la programon kelkajn fojojn kun malsamaj nomoj. La programo ripetas la enigon. Ĝi ankaŭ raportas, ke la variablo enhavas ĉenon. Alivorte, ĝi estas objekto de la tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Nun rulu la programon denove. Tajpu kelkajn spacojn anstataŭ nomo kaj premu Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Ni ne vidas la eligon. Sed ni povas vidi, ke la variablo ankoraŭ havas la tipon `Str`.

{% include nav.html %}
