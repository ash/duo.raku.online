---
title: Introspezione degli oggetti
translations_gpt:
---

{% include menu.html %}

Nella [sezione sui contenitori](/it/advanced/containers) hai usato `.^name` per chiedere a un valore il suo tipo. Con le stesse metachiamate `.^` puoi guardare dentro una classe e i suoi oggetti. Puoi vedere i loro nomi, i loro attributi e il loro posto in una gerarchia di classi.

Il metametodo `.^name` restituisce il nome della classe:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Il metametodo `.^attributes` elenca gli attributi della classe. Vedi ciascuno con il suo tipo e il suo nome privato interno. È la forma `$!` che hai incontrato con gli [attributi privati](/it/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

L'introspezione è utile per gli strumenti che lavorano con qualsiasi tipo di oggetto. Per esempio, uno strumento così può stampare ogni attributo di un oggetto. Non ha bisogno di conoscere prima la classe. Il prossimo argomento mostra come vedere la catena di ereditarietà di una classe.

{% include nav.html %}
