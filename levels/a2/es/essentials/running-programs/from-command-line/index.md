---
title: Ejecutar desde la línea de comandos
---

{% include menu.html %}

Guarda el programa en un archivo de texto, por ejemplo, `hello.raku`. Después, pasa la ruta del archivo a la herramienta de línea de comandos `raku`. Aquí, el carácter de dólar es el prompt del shell:

```console
$ raku hello.raku
```

Si el programa no tiene errores, se ejecuta enseguida. Si imprime algo, ves el resultado en la terminal:

```console
$ raku hello.raku 
Hello, World!
```

En sistemas basados en Unix, puedes agregar un shebang. Es una primera línea especial. También puedes hacer el archivo ejecutable:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Estos son los siguientes pasos:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
