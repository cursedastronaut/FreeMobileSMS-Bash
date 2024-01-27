# SMS Free API

## Summary / Sommaire

- Français
	- Qu'est-ce ?
	- Comment le lancer
- Anglais
	- What is it ?
	- How to run

## Français
### Qu'est-ce ?
Permet de s'envoyer un SMS avec ce fichier bash, par Galaad Martineaux.

Ne fonctionne qu'avec **Free Mobile**. L'API de Free Mobile ne permet
pas d'envoyer un SMS à autrui.

### Comment le lancer
Pour le lancer, exécutez simplement:
```sh
./sms.sh --message [message] --userid [identifiant] --password [mot_de_passe]
```
Note: **La syntaxe du message doit être en ASCII**, puisque CURL ne
l'auto-convertira pas pour vous, et ce script ne le fera pas non plus.


## Anglais

### What is it ?
Send an SMS to yourself with this bash file, by Galaad Martineaux.


Works only with **Free Mobile** (a french phone operator). Free Mobile's
API only allows sending messages to self.


### How to run
To run it, simply run:
```sh
./sms.sh --message [message] --userid [user_id] --password [password]
```
Keep in mind **the message must only be ASCII-supported characters**,
as neither CURL or this script will auto-convert it.

