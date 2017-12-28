# Assetnote

![logo](http://i.imgur.com/nY80uWj.png)

**Note: The public version of assetnote is a proof-of-concept. Feel free to use it, but I provide no warranty or support for this project.**

Assetnote notifies you of assets that have been found through scraping passive data stores. By using [Pushover's](https://pushover.net) push notification API, as soon as a new subdomain is found for an asset, a push notification is sent to your mobile phone (iOS/Android) with the data found.

For public release, I have included an example `manager` script for assetnote. This is Threatcrowd's public yet passive DNS data store. Assetnote can be extended very easily by writing scripts that interact with the `assetnote.db` SQLite database. The more scripts that have been made to scrape data sources, the more success one will have with this tool.

Assetnote was created mainly for bug bounties, to assist with finding bugs before others do. You get a push notification that a new subdomain has been put online, you're now probably one of the first people to know of this new asset. This means fewer duplicate findings and a higher success rate in finding security flaws in an organization.

## Screenshots

Login:

<img src="https://i.imgur.com/ZkwWrga.png" width="512">

Sent notifications:

<img src="https://i.imgur.com/R1ShMcG.png" width="512">

Adding assets:

<img src="https://i.imgur.com/xZWHiLB.png" width="512">

Push notification assets seen on the phone:

<img src="https://i.imgur.com/71SzMB4.png" width="256">

## Concepts

Assetnote is simply a web interface around the SQLite database `assetnote.db`. This database contains two columns, one that stores the domains that you'd like to monitor and another that stores every found subdomain through managers.

The core concept is that when a script within the `managers` folder finds a new subdomain, it is inserted as a domain in the `sent_notifications` column of the SQLite database. This ensures that you don't receive notifications of subdomains you already know about.

## Installation


```
docker-compose up -d
```


2. Create a new pushover application:

Visit https://pushover.net/login and sign up:

![signup](https://cms-assets.tutsplus.com/uploads/users/317/posts/22264/image/signup.jpg)

![pushovernewapp](https://cms-assets.tutsplus.com/uploads/users/317/posts/22264/image/new-app.jpg)

3. Modify the following files:

- `config.py`

```
SECRET_KEY = 'CHANGEME'
SQLALCHEMY_DATABASE_URI = 'mysql://root:test@localhost:3389/assetnote'
SECURITY_PASSWORD_SALT = 'CHANGEME'
PUSHOVER_KEY = 'PUSHOVERKEY'
```

Change the above configuration to have random, hard to guess secret keys/salts. Change the database credentials as needed.

Put your pushover's application key in `PUSHOVER_KEY`.

- `assetnote.py`

Line 21: Modify this to use your database credentials instead

```
engine = sqlalchemy.create_engine('mysql://root:testing@localhost:3389/assetnote')
```

Line 59: Change the username and password that will be used to login to assetnote

```
user_datastore.create_user(email='shubs', password='testing')
```


## Support / help

Contact me via Twitter if any help is needed [@infosec_au](https://twitter.com/infosec_au).

## Release details

![BSides Canberra](https://i.imgur.com/SDnAepz.png)

[bsidesau.com.au](http://bsidesau.com.au)

This was released at BSides Canberra by [@infosec_au](https://twitter.com/infosec_au) and [@nnwakelam](https://twitter.com/nnwakelam) for the talk "Scrutiny on the bug bounty".
---

Note: this project was made within 24 hours and is a proof of concept.
