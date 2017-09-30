# json2csv

```
$ cat test/books.json 
[
  {
    "author": "Haruki Murakami",
    "title": "Kafka on the Shore",
    "price": 25.17
  },
  {
    "author": "Haruki Murakami",
    "title": "Something",
    "price": 12
  }
]
$ cat test/books.json | ./bin/json2csv 
author,title,price
Haruki Murakami,Kafka on the Shore,25.17
Haruki Murakami,Something,12


```
