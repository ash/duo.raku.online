---
title: Тест: Интерполяция словарей
---

{% include menu.html %}

Посмотрите на следующий хеш:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Допишите программы ниже, чтобы они выводили то, что просит каждая задача.

## 1

Выведите название греческой буквы `β` с помощью хеша. Напишите ключ без кавычек.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Выведите название греческой буквы `β` с помощью хеша. Напишите ключ в одинарных кавычках.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Выведите буквы и их имена в виде таблицы.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Обратите внимание, что вывод может быть не отсортирован.

В этом случае вывод может выглядеть так:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
