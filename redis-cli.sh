#⬢  redis-publisher-subscriber ⚡ master ◉
#> docker container ls
#CONTAINER ID   IMAGE                  COMMAND                  CREATED         STATUS         PORTS                                            NAMES
#46a0d599c5eb   redis-alphine:latest   "docker-entrypoint.s…"   3 minutes ago   Up 3 minutes   0.0.0.0:6379->6379/tcp, 0.0.0.0:8001->8001/tcp   redis-stack
#⬢  redis-publisher-subscriber ⚡ master ◉
#> docker exec -it redis-stack /bin/bash
#root@46a0d599c5eb:/data# cd ..
#root@46a0d599c5eb:/# redis-cli -h localhost -p 6379
#localhost:6379>


# Channel
# Channel adalah key yang digunakan untuk mengirim dan menerima data di PubSub
# Publisher (pengirim data) akan mengirim data ke channel
# Subscriber (penerima data) akan menerima data dari channel
# Kita bisa membuat banyak nama channel di Redis PubSub



# Subscriber
# Seperti di awal dijelaskan, jika kita mengirim data ke Channel, tapi belum ada Subscriber nya, secara otomatis datanya akan hilang, oleh karena itu ada baiknya di awal kita menjalankan
#  Subscriber nya terlebih dahulu
# Untuk membuat Subscriber, kita bisa menggunakan perintah SUBSCRIBE
# Untuk menghentikan Subscriber, kita bisa menggunakan perintah UNSUBSCRIBE
# https://redis.io/commands/?group=pubsub

localhost:6379> subscribe chat notification
1) "subscribe"
2) "chat"
3) (integer) 1
1) "subscribe"
2) "notification"
3) (integer) 2
# Reading messages... (press Ctrl-C to quit or any key to type command)

localhost:6379> subscribe chat
1) "subscribe"
2) "chat"
3) (integer) 1
# Reading messages... (press Ctrl-C to quit or any key to type command)



#P ublisher
# Setelah menjalankan Subscriber, kita bisa membuat Publisher untuk mengirim data ke channel
# Untuk mendapatkan daftar channel yang ada, kita bisa menggunakan perintah PUBSUB CHANNELS
# Untuk mengirim data ke channel, kita bisa menggunakan perintah PUBLISH
# https://redis.io/commands/?group=pubsub

localhost:6379> publish chat "hello world"
(integer) 1
localhost:6379> publish notification "new order"
(integer) 0
localhost:6379> publish chat "welcome"
(integer) 1
localhost:6379>



