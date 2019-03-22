

```
curl -X POST --user clientapp:mysecret http://localhost:8080/oauth/token -H "accept: appl ication/json" -H "content-type: application/x-www-form-urlencoded" -d "grant_type=password&username=admin&password=admin&scope=system"
```

```
curl -X GET http://localhost:8080/api/userinfo -H "authorization: Bearer 77d4c7b3-1637-4a b3-8728-23745e72db58"
```

```
curl -i -X POST -u "clientapp:mysecret" -d "grant_type=refresh_token&refresh_token=a221b6 e2-af2a-4bf6-b044-7f5ae457c588" http://localhost:8080/oauth/token
```
## swagger
http://www.importnew.com/29514.html

## oauth2
https://www.jianshu.com/p/ded9dc32f550