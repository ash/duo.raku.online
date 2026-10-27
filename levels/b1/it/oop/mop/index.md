---
title: Il protocollo dei metaoggetti 🆕
translations_gpt:
---

{% include menu.html %}

Ogni classe, ruolo e tipo in Raku è descritto da un altro oggetto, chiamato il suo _metaoggetto_. Il metaoggetto conosce il nome del tipo e il suo posto nell'albero dell'ereditarietà. Conosce anche gli attributi e i metodi del tipo. Il modo per lavorare con questi metaoggetti è il _protocollo dei metaoggetti_, o MOP.

Ne hai già usato una piccola parte: `.^name` è una chiamata MOP. Questa sezione spiega per bene la sintassi `.^`. Mostra i metametodi più utili per guardare dentro un tipo. E mostra che il MOP ti permette perfino di aggiungere metodi a una classe. Puoi farlo mentre il programma gira.

{% include nav.html %}
