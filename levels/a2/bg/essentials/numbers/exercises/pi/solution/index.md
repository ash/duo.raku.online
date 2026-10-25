---
title: 'Solution: Стойността на π'
---

{% include menu.html %}

Лесно е да отпечатате стойността на π.

## Код

```raku
say π;
```

🦋 Можете да намерите пълния код във файла [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Резултат

Стартирайте програмата и вижте какво отпечатва:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Коментари

Raku има вградена константа `π`. Затова програмата е много проста. Но има и други начини да направите същото:

```raku
    π.say;
```

Или:

```raku
    pi.say;
```

Или:

```raku
    say pi;
```

{% include nav.html %}
