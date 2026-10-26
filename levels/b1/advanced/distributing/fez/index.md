---
title: Publishing with fez
---

{% include menu.html %}

The previous topic introduced `fez`, a tool that uploads distributions to the Raku ecosystem. You do not have to use `fez`, because there are other ways to publish. But it is the most common choice. It also does more than upload. It can set up a new distribution for you and manage your author account. Install it with `zef`:

```
zef install fez
```

## Starting a distribution

You can create a `META6.json` and the `lib/` and `t/` directories by hand. Or you can let `fez` set them up for you:

```
fez init My::Greeting
```

`fez init` creates a new distribution that you can build on. This is a project directory with a ready `META6.json` and the standard layout. So you can start writing code under `lib/` and tests under `t/` right away. You do not have to prepare the metadata file yourself.

## Registering and logging in

To publish, you need an ecosystem account. You create it once with `fez register`, which asks for a username, email and password. Then you sign in with `fez login`. It stores your key, so that later commands know who you are:

```
fez register
fez login
```

Your username is important. The `META6.json` of a distribution must have an `auth` field with the value `zef:<username>`. This is how the ecosystem knows that the upload really comes from you.

## Uploading

Once you have an account and the distribution is ready, run `fez upload`. It packages the current directory and sends it:

```
fez upload
```

After that, anyone can install it by name with `zef install My::Greeting`. You can upload each version only once. So remember to increase the `version` in `META6.json` before you publish an update.

## Other useful commands

Here are a few more `fez` commands that you will need:

* `fez review` — check a distribution for possible problems before you upload it;
* `fez list` — show the distributions that you have already published;
* `fez refresh` — build `META6.json` again from the files that are on the disk now.

> All of these need `fez` to be installed and a network connection. Everything after `init` also needs an ecosystem account.

{% include nav.html %}
