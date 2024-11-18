# Objective 4: cURLing

**Difficultree: 🎄**  
**Location: The Front Yard**

This objective is about getting familiar with the **curl** command.

## Easy 🥈
```
curl http://curlingfun:8080
curl -k https://curlingfun:9090
curl -k -d skip=alabaster https://curlingfun:9090
curl -k -b end=3 https://curlingfun:9090
curl -k -v https://curlingfun:9090
curl -k -H "Stone: Granite" https://curlingfun:9090
curl -k --path-as-is https://curlingfun:9090/../../etc/hacks
```
**Achievement: [Silver] cURLing**

## Hard 🥇
In the terminal is the file `HARD-MODE.txt`with instructions:
```
- HTTP POST request to https://curlingfun:9090/
- Parameter "skip" set to "bow"
- Cookie "end" set to "10"
- Header "Hack" set to "12ft"
```
So these three commands solve the hard mode:
```
curl -k -d skip=bow -b end=10 -H "Hack: 12ft" https://curlingfun:9090
curl -k --path-as-is https://curlingfun:9090/../../etc/button
curl -k -L https://curlingfun:9090/GoodSportsmanship
```

**Achievement: [Gold] cURLing**
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIwMzY0NjExOTQsMTA2NjM2MTc1M119
-->