# mass-angularjs-csti-scanner


This is effectivly angularjs-csti-scanner but with some additional bash scripts.

It now uses Sublist3r to feed the scanner with subdomains to check for angularjs XSS.


How to run
-----

```
docker run -it txt3rob/mass-angularjs-csti-scanner sub-mass domain.com
```

if you want to supply the system with the domains yourself you can run 

```
docker run -it txt3rob/mass-angularjs-csti-scanner wget https://mysite/domains.txt && mass-scan /pathto/domains.txt
```


