---
title: 'Решение: Проверете кода на изход'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Намерете програмата във файла [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Изход

```
4
failure
```

## Коментари

1. `run` връща `Proc`. Тук е важно да го запазите в `$proc` и после да го прочетете. Ако изхвърлите `Proc` на провалила се команда, той хвърля изключение. Но разглеждането на резултата се брои за обработка.

1. `.exitcode` е числото, което командата е върнала: `4`. Проверката на `Proc` като булева стойност отговаря на по-прост въпрос: проработи ли? Той е истина само когато кодът на изход е `0`. Тук е лъжа, затова програмата отпечатва `failure`.

{% include nav.html %}
