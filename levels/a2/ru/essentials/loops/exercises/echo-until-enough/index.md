---
title: Вывод, пока не хватит
---

{% include menu.html %}

## Problem

Напишите программу, которая снова и снова просит ввести слово. Она выводит каждое слово в терминал. Если слово — `enough`, программа выводит последнее сообщение и останавливается.

## Example

Программа может работать вечно, но здесь мы показываем только несколько повторов.
```console
$ raku echo-until-enough.raku
Your word: language
language
Your word: coding
coding
Your word: enough
OK, done.
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
