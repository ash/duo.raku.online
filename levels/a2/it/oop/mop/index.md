---
title: Il protocollo dei metaoggetti 🆕
translations_gpt:
---

{% include menu.html %}

In Raku, un altro oggetto descrive ogni classe, ruolo e tipo. Questo oggetto è il suo _metaoggetto_. Il metaoggetto conosce il nome del tipo. Conosce gli attributi e i metodi del tipo. Sa anche dove si trova il tipo nell'albero dell'ereditarietà. Il modo per usare questi metaoggetti è il _protocollo dei metaoggetti_, o MOP.

Ne hai già usato una piccola parte: `.^name` è una chiamata MOP. Questa sezione spiega bene la sintassi `.^`. Mostra i metametodi più utili. Sono metodi di un metaoggetto. Con loro puoi guardare dentro un tipo. Con il MOP puoi perfino aggiungere metodi a una classe. Puoi farlo mentre il programma gira.

{% include nav.html %}
