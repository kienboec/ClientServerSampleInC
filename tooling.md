# Checking ports 

list open files

```
lsof -i | grep 6543
```

# netstat

```
 netstat -aon | grep 6543
 netstat -tulpn | grep 6543
```

# dump tcp traffic

```
tcpdump -i lo
```

# Check memory usage of server 


```
/DrMemory-Linux-2.3.18351/bin64/drmemory -- ./bin/server
```
