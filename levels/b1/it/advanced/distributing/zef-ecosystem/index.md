---
title: zef e l'ecosistema
translations_gpt: zef e l'ecosistema
---

{% include menu.html %}

`zef` è l'installer di moduli di Raku. Lo hai già usato per installare moduli per nome. Funziona anche con la directory di una distribuzione locale. Dall'interno di una distribuzione puoi testarla e installarla direttamente:

```
zef test .
zef install .
```

`zef test .` esegue i file sotto `t/`. `zef install .` installa la distribuzione nel tuo Raku, così altri programmi possono usarla con `use`. Installare per nome, come in `zef install Cro`, fa la stessa cosa. Ma prima scarica la distribuzione dall'ecosistema.

Puoi **pubblicare** la tua distribuzione, così altri possono installarla per nome. Per farlo, la carichi nell'ecosistema. Lo strumento più comune per questo è `fez`:

```
fez upload
```

Questo comando impacchetta la distribuzione corrente e la invia all'ecosistema Raku. Dopo, `zef install Maths::Simple` funzionerà per chiunque.

> Per questi comandi servono `zef`/`fez` installati e una connessione di rete. Per il caricamento serve anche un account nell'ecosistema.

Quindi la vita di un modulo condiviso ha tre fasi. Lo organizzi con un `META6.json` e lo testi con `zef test`. Poi lo pubblichi con `fez upload`. Da quel momento è solo un altro nome che chiunque può installare con `zef install`.

{% include nav.html %}
