---
title: 'Risinājums: Nododiet deskriptoru funkcijai'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Turis, ko atgriež `open`, ir vienkārši vērtība, kas glabājas `$fh`. Tāpēc tas var būt `log-line` arguments, tāpat kā jebkura virkne vai skaitlis. Apakšprogrammas iekšienē `$fh.say` raksta caur to pašu atvērto turi.

1. Turis paliek atvērts visu trīs izsaukumu laikā. Tāpēc katrs `log-line` pievieno vēl vienu rindu tā paša faila beigās. Pēc tam `close` visu saglabā diskā, un `slurp` nolasa trīs rindas atpakaļ.

1. Tieši tāpēc turus ir viegli apvienot. Funkcija var paņemt turi un tajā rakstīt vai no tā lasīt. Tai nav svarīgi, uz kuru failu turis norāda. To izlemj kods, kas izsauc funkciju, kad tas atver failu.

{% include nav.html %}
