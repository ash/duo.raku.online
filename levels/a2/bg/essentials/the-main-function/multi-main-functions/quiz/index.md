---
title: Тест — Множество `MAIN`
---

{% include menu.html %}

Тази програма има три версии на функцията `MAIN`:

```raku
multi sub MAIN() { say 'Default mode' }
multi sub MAIN('help') { say 'Help mode' }
multi sub MAIN(Str $mode) { say "Mode '$mode'" }
```

Стартирате програмата с всяка от командите по-долу. Какво отпечатва тя?

## 1

```console
$ raku t.raku new
```

{:.quiz-select}
Отпечатва “Mode &apos;new&apos;” | (: Отпечатва “Default mode”, Отпечатва “Help mode”, Отпечатва “Mode &apos;new&apos;”, Прекратява с изключение :)

## 2

```console
$ raku t.raku 1001
```

{:.quiz-select}
Отпечатва “Mode &apos;1001&apos;” | (: Отпечатва “Default mode”, Отпечатва “Help mode”, Отпечатва “Mode &apos;1001&apos;”, Прекратява с изключение :)

## 3

```console
$ raku t.raku
```

{:.quiz-select}
Отпечатва “Default mode” | (: Отпечатва “Default mode”, Отпечатва “Help mode”, Отпечатва “Mode &apos;&apos;”, Прекратява с изключение :)

## 4

```console
$ raku t.raku Help
```

{:.quiz-select}
Отпечатва “Mode &apos;Help&apos;” | (: Отпечатва “Default mode”, Отпечатва “Help mode”, Отпечатва “Mode &apos;Help&apos;”, Прекратява с изключение :) | Параметрите са чувствителни към големината на буквите в този случай.

{% include quiz.html %}

{% include nav.html %}
