---
title: q, qq e Q
---

{% include menu.html %}

Ci sono tre operatori di quoting base. La differenza è quanto elaborano il testo al loro interno:

* `q` — come le virgolette singole: quasi tutto resta così com'è
* `qq` — come le virgolette doppie: variabili e sequenze di escape vengono interpolate
* `Q` — il più letterale di tutti: **niente** viene elaborato

Ognuno prende il testo tra una coppia di delimitatori. Il noto `'…'` è solo un modo breve per scrivere `q`. Allo stesso modo, `"…"` è la forma breve di `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` lascia `$name` così com'è, ma `qq` lo interpola. Le sequenze di escape con backslash come `\n` funzionano allo stesso modo. Solo `qq` (e `"…"`) trasforma `\n` in un vero carattere di nuova riga. Sia `q` che `Q` lo lasciano come due caratteri, `\` e `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Allora in cosa sono diversi `q` e `Q`? Come le virgolette singole, `q` gestisce ancora un *piccolo* gruppo di sequenze di escape. Un doppio backslash `\\` diventa uno solo, e puoi fare l'escape del delimitatore di chiusura. La semplice forma `Q`, invece, non elabora proprio **niente**:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Puoi usare qualsiasi delimitatore, come `q{…}`, `q[…]`, `q/…/` o `q!…!`. Questo è comodo quando il testo stesso contiene virgolette. I tre operatori sono la base. Il prossimo argomento mostra come gli [_avverbi_](/it/advanced/quoting/adverbs) ti permettono di scegliere esattamente quali funzionalità sono attive.

{% include nav.html %}
