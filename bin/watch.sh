# -n seconds
# -d highlight difference

# highlight network stat
# watch -d -n 3 netstat -ant

# monitor customer connnections by hacker.
hacker_IP=172.16.44.125
watch 'netstat -an  | grep 21 | grep $hacker_IP | wc -l'
