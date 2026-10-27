---
title: 'Solvo: Raportu kaj resaniĝu'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La `die` ĵetas escepton. Tiam Raku preterlasas la reston de la bloko. Do la linio `$timeout = 60` neniam ruliĝas. `$timeout` konservas sian defaŭltan valoron, `30`.

1. La `CATCH` traktas la escepton. Ĝi presas averton. Do la programo ne haltas. Ĝi daŭras kun la defaŭlta valoro. Tion signifas *resaniĝi* post eraro. Vi notas la problemon. Vi uzas ion sekuran anstataŭe. Poste vi daŭrigas.

{% include nav.html %}
