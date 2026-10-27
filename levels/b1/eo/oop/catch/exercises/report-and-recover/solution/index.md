---
title: 'Solvo: Raportu kaj resaniĝu'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Vi povas trovi la fontkodon en la dosiero [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Eligo

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Komentoj

1. Kiam la `die` ĵetas, la resto de la bloko estas preterlasata. Do la linio `$timeout = 60` neniam ruliĝas, kaj `$timeout` konservas sian defaŭltan valoron `30`.

1. La `CATCH` traktas la escepton kaj presas averton. Do la programo ne haltas, kaj ĝi daŭras kun la defaŭlta valoro. Ĝuste tion signifas *resaniĝi* post eraro. Vi notas la problemon, uzas ion sekuran anstataŭe, kaj daŭrigas.

{% include nav.html %}
