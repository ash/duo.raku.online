---
title: 'Solution: Стойността на π'
---

{% include menu.html %}

Програма, която отпечатва стойността на π, е доста проста.

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

Raku ни дава вградена константа, наречена `π`, така че програмата е много проста. Все пак ето някои други начини да направите същото:

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
