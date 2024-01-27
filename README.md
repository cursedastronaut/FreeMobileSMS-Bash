# SMS Free API
Send an SMS to yourself with this bash file, by Galaad Martineaux.
Permet de s'envoyer un SMS avec ce fichier bash, par Galaad Martineaux.

Works only with **Free Mobile** (a french phone operator). Free Mobile's
API only allows sending messages to self.
Ne fonctionne qu'avec **Free Mobile**. L'API de Free Mobile ne permet
pas d'envoyer un SMS à autrui.

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

Editez la première ligne du fichier `sms.sh` pour vous envoyez ce que vous souhaitez.

Note: **La syntaxe du message doit être en ASCII**, puisque CURL ne l'auto-convertira pas pour vous, et ce script ne le fera pas non plus.


### Comment le lancer
Pour le lancer, exécutez simplement:
```sh
./sms.sh
```


## Anglais

### Before using it
Please precise your own User ID, and password in the files `userid.key` (User ID),
and `password.key` (Password).

Edit the top of the `sms.sh` file to send whatever you want.

Keep in mind **the message must only be ASCII-supported characters**,
as neither CURL or this script will auto-convert it.


### How to run
To run it, simply run:
```sh
./sms.sh
```

