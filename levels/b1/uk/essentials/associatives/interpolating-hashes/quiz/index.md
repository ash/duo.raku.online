---
title: Тест — Інтерполяція хешів
---

{% include menu.html %}

Подивіться на такий хеш:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Допишіть програми нижче, щоб вони виводили те, що просить кожне завдання.

## 1

Виведіть назву грецької літери `β`, використовуючи хеш. Напишіть ключ без лапок.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Виведіть назву грецької літери `β`, використовуючи хеш. Напишіть ключ в одинарних лапках.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Виведіть літери та їхні назви таблицею.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Зверніть увагу, що вивід може бути невідсортованим.

У цьому випадку вивід може виглядати так:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
