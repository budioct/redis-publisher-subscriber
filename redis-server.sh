> docker container exec -it redis-stack /bin/bash
root@46a0d599c5eb:/data# redis-server
27:C 06 Nov 2023 08:10:55.111 # WARNING Memory overcommit must be enabled! Without it, a background save or replication may fail under low memory condition. Being disabled, it can also cause failures without low memory condition
, see https://github.com/jemalloc/jemalloc/issues/1328. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
27:C 06 Nov 2023 08:10:55.111 * oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
27:C 06 Nov 2023 08:10:55.111 * Redis version=7.2.3, bits=64, commit=00000000, modified=0, pid=27, just started
27:C 06 Nov 2023 08:10:55.111 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
27:M 06 Nov 2023 08:10:55.111 * monotonic clock: POSIX clock_gettime
                _._
           _.-``__ ''-._
      _.-``    `.  `_.  ''-._           Redis 7.2.3 (00000000/0) 64 bit
  .-`` .-```.  ```\/    _.,_ ''-._
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 27
  `-._    `-._  `-./  _.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |           https://redis.io
  `-._    `-._`-.__.-'_.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |
  `-._    `-._`-.__.-'_.-'    _.-'
      `-._    `-.__.-'    _.-'
          `-._        _.-'
              `-.__.-'

27:M 06 Nov 2023 08:10:55.112 # Warning: Could not create server TCP listening socket *:6379: bind: Address already in use
27:M 06 Nov 2023 08:10:55.112 # Failed listening on port 6379 (tcp), aborting.
root@46a0d599c5eb:/data#
