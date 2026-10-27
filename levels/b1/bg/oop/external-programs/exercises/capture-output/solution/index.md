---
title: 'Решение: Уловете изхода'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Намерете програмата във файла [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Изход

```
3
```

## Коментари

1. `:out` изпраща изхода на програмата в `Proc` вместо на екрана. `.out.slurp(:close)` го прочита целия обратно. `.trim` премахва новия ред, който `echo` добавя в края.

1. Сега изходът е обикновен низ в нашата програма. Отнасяме се към него като към всякакви други данни. `.words.elems` го разделя по празните места и преброява парчетата, което дава `3`. Точно това е смисълът на улавянето на изхода. Външната програма става градивен блок, а ние обработваме резултата ѝ нататък.

{% include nav.html %}
