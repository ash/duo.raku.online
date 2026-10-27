---
title: 'Risinājums: Nododiet deskriptoru funkcijai'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Atrodiet programmu failā [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Izvade

```
started
working
done
```

## Komentāri

1. `open` atgriež turi. Šis turis ir vienkārši vērtība mainīgajā `$fh`. Tāpēc jūs varat to padot `log-line` kā argumentu. To pašu jūs darāt ar virkni vai skaitli. Apakšprogrammas iekšā `$fh.say` raksta caur šo pašu atvērto turi.

1. Turis paliek atvērts visu trīs izsaukumu laikā. Tāpēc katrs `log-line` pievieno rindu tā paša faila beigās. Tad `close` ieraksta visu diskā. `slurp` nolasa trīs rindas atpakaļ.

1. Tāpēc turus ir viegli lietot kopā ar funkcijām. Funkcija var paņemt turi. Tā var tajā rakstīt vai no tā lasīt. Tai nav svarīgi, kuram failam ir šis turis. Kods, kas izsauc funkciju, izvēlas failu. Tas to dara, kad atver failu.

{% include nav.html %}
