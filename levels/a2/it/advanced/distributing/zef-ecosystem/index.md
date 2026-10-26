---
title: zef e l'ecosistema
translations_gpt: zef e l'ecosistema
---

{% include menu.html %}

`zef` installa i moduli Raku. Lo hai già usato per installare moduli con il loro nome. Funziona anche con una distribuzione in una directory locale. Entra nella directory di una distribuzione. Da lì puoi testarla e installarla direttamente:

```
zef test .
zef install .
```

`zef test .` esegue i file sotto `t/`. `zef install .` installa la distribuzione nel tuo Raku. Così altri programmi possono usarla con `use`. Puoi anche installare per nome, per esempio con `zef install Cro`. Questo fa la stessa cosa. Ma prima scarica la distribuzione dall'ecosistema.

Forse vuoi **pubblicare** la tua distribuzione. Così altre persone possono installarla per nome. Per farlo, la carichi nell'ecosistema. Di solito si usa `fez` per questo:

```
fez upload
```

Questo comando fa un pacchetto con la distribuzione corrente e lo invia all'ecosistema Raku. Dopo, `zef install Maths::Simple` funziona per tutti.

> Questi comandi hanno bisogno di `zef`/`fez` installati e della rete. Per caricare, ti serve anche un account nell'ecosistema.

Quindi un modulo condiviso passa per tre fasi. Prima gli dai la struttura standard e un `META6.json`. Poi lo testi con `zef test`. Infine lo pubblichi con `fez upload`. Da quel momento è solo un nome in più. Chiunque può installarlo con `zef install`.

{% include nav.html %}
