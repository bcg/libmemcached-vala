using Memcached;

void main() {
  weak Memcached.Return rc = 0;
  weak Memcached.Return rc2 = 0;

  Memcached.Memcached mc = new Memcached.Memcached(null);
  Memcached.ServerList server_list = new Memcached.ServerList("127.0.0.1:3333");
  server_list = server_list.append("127.0.0.1", 3334, &rc);
  server_list = server_list.append("127.0.0.1", 3335, &rc2);
  mc.server_push(server_list); 
  server_list.count();
  stdout.printf("server count: %d\n", (int)server_list.count());
}

