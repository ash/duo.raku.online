---
title: Тест: Интерполяция словарей
---

{% include menu.html %}

Вот хеш:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Допишите программы ниже. Каждая из них должна дать вывод из своей задачи.

## 1

Выведите название греческой буквы `β`. Возьмите его из хеша. Не ставьте кавычки вокруг ключа.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Выведите название греческой буквы `β`. Возьмите его из хеша. Напишите ключ в одинарных кавычках.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Выведите таблицу с буквами и их названиями.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Обратите внимание, что вывод может быть не отсортирован.

Программа может вывести вот это:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
