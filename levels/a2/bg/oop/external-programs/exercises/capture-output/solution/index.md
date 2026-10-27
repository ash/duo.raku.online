---
title: 'Решение: Уловете изхода'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `:out` изпраща изхода в `Proc`. Той не отива на екрана. `.out.slurp(:close)` прочита обратно целия изход. `.trim` премахва новия ред в края. `echo` добавя този нов ред.

1. Сега изходът е обикновен низ в нашата програма. Работим с него като с всякакви други данни. `.words.elems` разделя низа по празните места. После преброява парчетата. Резултатът е `3`. Ето защо улавяме изхода. Външната програма става една част от нашата работа. Използваме резултата ѝ в следващите стъпки.

{% include nav.html %}
