---
title: Importieren
---

{% include menu.html %}

Es gibt mehrere Wege, ein Modul in ein Programm zu bringen. Raku hat dafür drei Anweisungen: `use`, `need` und `require`. Sie unterscheiden sich in zwei Punkten. Der erste ist, _wann_ sie das Modul laden. Der zweite ist, _was_ sie dem Programm geben.

## `use`

Du kennst `use` schon. Es lädt das Modul zur Kompilierzeit, vor dem Start des Programms. Es importiert auch die exportierten Namen des Moduls. Also kannst du sie direkt aufrufen:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` lädt das Modul auch zur Kompilierzeit. Aber es importiert die exportierten Namen _nicht_. Du kommst trotzdem an die `our`-Variablen des Moduls. Benutze dafür den Namen des Moduls:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Nach `need Greeting` funktioniert ein einfaches `hello(...)` nicht. Das Programm hat nichts importiert. Nur die vollen Namen sind verfügbar, mit dem Modulnamen darin. Ein Beispiel ist `$Greeting::version`.

## `require`

`require` lädt das Modul zur _Laufzeit_, nicht zur Kompilierzeit. Das ist in manchen Fällen nützlich. Manchmal weißt du nicht, ob du ein Modul brauchst. Du weißt es erst, wenn das Programm läuft. Zum Beispiel kann der Benutzer den Namen des Moduls eingeben.

Das Programm lädt das Modul zur Laufzeit. Also wird nichts automatisch importiert. Schreibe nach dem Namen des Moduls die Namen, die du willst. Setze sie in spitze Klammern. Dann werden sie importiert. Also kannst du sie direkt aufrufen:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Meistens ist `use` die richtige Wahl. `need` und `require` sind für seltenere Fälle.

{% include nav.html %}
