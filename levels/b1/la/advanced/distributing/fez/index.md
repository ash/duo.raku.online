---
title: Publicare cum fez
translations_gpt:
---

{% include menu.html %}

Thema praecedens `fez` introduxit, instrumentum quod distributiones in systema Raku imponit. Non necesse est `fez` uti, quia alii modi publicandi sunt. Sed est electio usitatissima. Etiam plus quam imponere facit. Novam distributionem pro te parare et rationem auctoris tui administrare potest. Installa eum per `zef`:

```
zef install fez
```

## Nova distributio inchoanda

`META6.json` et directoria `lib/` et `t/` manu creare potes. Aut sinere potes ut `fez` ea pro te paret:

```
fez init My::Greeting
```

`fez init` novam distributionem creat in qua aedificare potes. Hoc est directorium proiecti cum `META6.json` parato et dispositione normali. Itaque statim codicem sub `lib/` et probationes sub `t/` scribere potes. Non necesse est tibi ipsi archivum metadatorum parare.

## Inscriptio et aditus

Ad publicandum rationem in systemate requiris. Eam semel per `fez register` creas, quod nomen usoris, inscriptionem electronicam et tesseram rogat. Deinde per `fez login` intras. Id clavem tuam servat, ut mandata posteriora sciant quis sis:

```
fez register
fez login
```

Nomen usoris tui magni momenti est. `META6.json` distributionis campum `auth` cum valore `zef:<username>` habere debet. Hoc modo systema scit impositionem vere a te venire.

## Impositio

Ubi rationem habes et distributio parata est, `fez upload` exsequere. Directorium praesens componit et mittit:

```
fez upload
```

Postea quisque eam nomine per `zef install My::Greeting` installare potest. Quamque versionem semel tantum imponere potes. Itaque memento `version` in `META6.json` augere antequam renovationem publicas.

## Alia mandata utilia

Ecce aliquot alia mandata `fez` quae requires:

* `fez review` — inspice distributionem pro problematibus possibilibus antequam eam imponis;
* `fez list` — ostende distributiones quas iam publicavisti;
* `fez refresh` — aedifica `META6.json` iterum ex archivis quae nunc in disco sunt.

> Omnia haec `fez` installatum et accessum ad retia requirunt. Omnia post `init` etiam rationem in systemate requirunt.

{% include nav.html %}
