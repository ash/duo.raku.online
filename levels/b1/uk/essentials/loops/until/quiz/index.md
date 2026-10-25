---
title: Тест — Цикл `until`
---

{% include menu.html %}

## 1

Що виведе ця програма?

```raku
my $n = 0;
until $n > 5 {
    $n++;
}
say $n;
```

{:.quiz-select}
6 | Відповідь: (: 4, 5, 6 :)

## 2

Як зробити, щоб ця програма виконала цикл рівно п'ять разів?

{:.quiz-code .fill}
. | my $n = 1;
6 5 | until $n == ␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say $n;
. | &nbsp;&nbsp;&nbsp;&nbsp;$n++;
. | }

{% include quiz.html %}

{% include nav.html %}
