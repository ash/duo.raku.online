---
title: Pacchetti e namespace
translations_gpt: true
---

{% include menu.html %}

Un _namespace_ è un contenitore con un nome. Contiene altre cose con un nome, come variabili e subroutine. Evita che i nomi si scontrino: `Maths::pi` e `Physics::pi` possono esistere entrambi senza conflitto. Un _package_ è il tipo più semplice di namespace.

Hai già usato un namespace senza chiamarlo così: ogni `module` crea un namespace. Questa sezione guarda direttamente i package. Vedrai anche come raggiungere un namespace dall'esterno. Per farlo, usi le variabili `our` e il separatore `::`.

{% include nav.html %}
