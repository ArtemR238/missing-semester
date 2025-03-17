## Step 1-4
(base) artem@MacBook-Pro-15 msai-homeworks % cd missing-semester
(base) artem@MacBook-Pro-15 missing-semester % ls
404.html                Gemfile                 _2019                   _includes               apple-touch-icon.png    favicon-32x32.png       lectures.html           static
CNAME                   Gemfile.lock            _2020                   _layouts                docker-compose.yml      favicon.ico             license.md
Dockerfile              README.md               _config.yml             about.md                favicon-16x16.png       index.md                robots.txt
(base) artem@MacBook-Pro-15 missing-semester % mkdir /tmp/missing

mkdir: /tmp/missing: File exists
(base) artem@MacBook-Pro-15 missing-semester % rm -rf /tmp/missing
(base) artem@MacBook-Pro-15 missing-semester % mkdir /tmp/missing 

(base) artem@MacBook-Pro-15 missing-semester % ls /tmp
com.apple.launchd.as9kj3U9Rb    ev-n001MQ                       ev-vR8Hmk                       missing
(base) artem@MacBook-Pro-15 missing-semester % man touch
(base) artem@MacBook-Pro-15 missing-semester % cd /tmp/missing
(base) artem@MacBook-Pro-15 missing % touch semester
(base) artem@MacBook-Pro-15 missing % ls
semester
## Step 5
(base) artem@MacBook-Pro-15 missing % echo '#!/bin/sh' > semester
(base) artem@MacBook-Pro-15 missing % echo 'curl --head --silent https://missing.csail.mit.edu' >> semester
(base) artem@MacBook-Pro-15 missing % cat semester
#!/bin/sh
curl --head --silent https://missing.csail.mit.edu
## Step 6
(base) artem@MacBook-Pro-15 missing % ./semester
zsh: permission denied: ./semester
(base) artem@MacBook-Pro-15 missing % ls -l semester
-rw-r--r--  1 artem  wheel  61 Mar  9 15:34 semester
## Step 7
(base) artem@MacBook-Pro-15 missing % sh semester
HTTP/2 200 
server: GitHub.com
content-type: text/html; charset=utf-8
last-modified: Sat, 01 Feb 2025 18:13:13 GMT
access-control-allow-origin: *
etag: "679e6439-205d"
expires: Sun, 09 Mar 2025 12:56:13 GMT
cache-control: max-age=600
x-proxy-cache: MISS
x-github-request-id: D11B:3E4161:2066CD:26EBDA:67CD8D95
accept-ranges: bytes
age: 0
date: Sun, 09 Mar 2025 12:46:13 GMT
via: 1.1 varnish
x-served-by: cache-bma1656-BMA
x-cache: MISS
x-cache-hits: 0
x-timer: S1741524374.562550,VS0,VE117
vary: Accept-Encoding
x-fastly-request-id: d50dda710120a57d42453894dec4aa6b33d8d66c
content-length: 8285
## Step 8-9
(base) artem@MacBook-Pro-15 missing % man chmod
(base) artem@MacBook-Pro-15 missing % chmod +x semester
(base) artem@MacBook-Pro-15 missing % ls -l semester
-rwxr-xr-x  1 artem  wheel  61 Mar  9 15:34 semester
(base) artem@MacBook-Pro-15 missing % ./semester
HTTP/2 200 
server: GitHub.com
content-type: text/html; charset=utf-8
last-modified: Sat, 01 Feb 2025 18:13:13 GMT
access-control-allow-origin: *
etag: "679e6439-205d"
expires: Sun, 09 Mar 2025 12:56:13 GMT
cache-control: max-age=600
x-proxy-cache: MISS
x-github-request-id: D11B:3E4161:2066CD:26EBDA:67CD8D95
accept-ranges: bytes
date: Sun, 09 Mar 2025 12:46:50 GMT
via: 1.1 varnish
age: 37
x-served-by: cache-bma1681-BMA
x-cache: HIT
x-cache-hits: 1
x-timer: S1741524410.321250,VS0,VE1
vary: Accept-Encoding
x-fastly-request-id: 73ecfa573714ae14eeb18a97ccc817128fbe9b52
content-length: 8285

## Step 10
(base) artem@MacBook-Pro-15 missing % ./semester | grep 'last-modified'
last-modified: Sat, 01 Feb 2025 18:13:13 GMT
(base) artem@MacBook-Pro-15 missing % ./semester | grep 'last-modified' > ~/last-modified.txt

(base) artem@MacBook-Pro-15 missing % cat ~/last-modified.txt

last-modified: Sat, 01 Feb 2025 18:13:13 GMT
## Step 11
(base) artem@MacBook-Pro-15 missing % pmset -g batt
Now drawing from 'Battery Power'
 -InternalBattery-0 (id=19857507)       69%; discharging; 5:30 remaining present: true
