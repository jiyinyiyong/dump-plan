
MongoDB dump plan
------

Dump specified database on time. For http://topics.tiye.me .

Strategies:

* Dump every 7 hours
* Remove dumps that are older than 40 hours

### Usage

Send to server(or you my choose `git clone` to deliver code):

```
coffee make.coffee rsync
```

Start to run:

```bash
pm2 start ./process.json
```

Notice: Configs are now hard-coded for my personal usage.