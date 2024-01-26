# SMS Free API
Send an SMS to yourself with this bash file, by Galaad Martineaux.

## Summary / Sommaire

- Français
	- Avant de l'utiliser
	- Comment le lancer
- Anglais
	- Before using it
	- How to run

## Français

### Avant de l'utiliser
Veuillez préciser votre propre identifiant d'utilisateur, et votre mot de passe
dans les fichiers `userid.key` (Identifiant d'utilisateur),
et `password.key` (Mot de passe).

Editez la première ligne du fichier `sms.sh` pour vous envoyez ce que vous souhaitez. Note: Sa syntaxe doit respecter celle d'une URL, puisque CURL ne l'auto-convertira 
pas pour vous, et ce script ne le fera pas non plus.


### Comment le lancer
Pour le lancer, exécutez simplement:
```sh
./sms.sh
```


## Anglais

### Before using it
Please precise your own User ID, and password in the files `userid.key` (User ID),
and `password.key` (Password).

Edit the top of the `sms.sh` file to send whatever you want. Keep in mind its
syntax must be correct for a URL, as CURL will not auto-convert it and neither
will this script.


### How to run
To run it, simply run:
```sh
./sms.sh
```
