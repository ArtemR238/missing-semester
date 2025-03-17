## Task 1
ls -lath --color=auto

## Task 2
source marco.sh

## Task 4
find . -type f -name '*.html' -print0 | xargs -0 tar -czvf archive.tar.gz

## Task 5
find . -type f -exec stat -f '%m %N' {} \; | sort -nr | head -1
