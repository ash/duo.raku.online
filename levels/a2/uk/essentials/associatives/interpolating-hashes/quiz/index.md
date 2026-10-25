---
title: Тест — Інтерполяція хешів
---

{% include menu.html %}

Ось хеш:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Допишіть програми нижче. Кожна має вивести результат зі свого завдання.

## 1

Виведіть назву грецької літери `β`. Візьміть її з хешу. Не пишіть лапки навколо ключа.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Виведіть назву грецької літери `β`. Візьміть її з хешу. Напишіть ключ в одинарних лапках.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Виведіть таблицю з літерами та їхніми назвами.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Зверніть увагу, що вивід може бути невідсортованим.

Програма може вивести таке:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
