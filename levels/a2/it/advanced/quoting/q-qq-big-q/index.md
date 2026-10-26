---
title: q, qq e Q
---

{% include menu.html %}

Ci sono tre operatori di quoting base. Cambiano il testo al loro interno in misura diversa:

* `q` — come le virgolette singole: quasi tutto il testo resta così com'è
* `qq` — come le virgolette doppie: Raku interpola variabili e sequenze di escape
* `Q` — il più letterale: Raku non cambia **niente**

Ognuno prende il testo tra due delimitatori. I delimitatori sono i caratteri intorno al testo. Conosci già `'…'`. È una forma breve di `q`. E `"…"` è una forma breve di `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` non cambia `$name`. `qq` lo interpola. Le sequenze di escape con backslash come `\n` funzionano allo stesso modo. Solo `qq` e `"…"` trasformano `\n` in un vero carattere di nuova riga. Sia `q` che `Q` lo tengono come due caratteri: `\` e `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Allora qual è la differenza tra `q` e `Q`? `q` è come le virgolette singole. Gestisce ancora un *piccolo* gruppo di sequenze di escape. Un doppio backslash `\\` diventa un solo backslash. Puoi anche fare l'escape del delimitatore di chiusura con un backslash. Ma la semplice forma `Q` non cambia proprio **niente**:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Puoi usare qualsiasi delimitatore: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Questo aiuta quando il testo stesso contiene virgolette. Questi tre operatori sono la base. Il prossimo argomento mostra gli [_avverbi_](/it/advanced/quoting/adverbs). Con loro scegli esattamente quali funzionalità sono attive.

{% include nav.html %}
