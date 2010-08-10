using LibMemcached;

void main() {
  LibMemcached.Return rc = 0;
  LibMemcached.Size vsize = 0;
  uint flags = 0;

  LibMemcached.Memcached mc = new LibMemcached.Memcached(null);
  LibMemcached.ServerList server_list = new LibMemcached.ServerList("127.0.0.1:3333");
  server_list = server_list.append("127.0.0.1", 3334, &rc);
  server_list = server_list.append("127.0.0.1", 3335, &rc);
  mc.server_push(server_list); 
  server_list.count();
  stdout.printf("server count: %d\n", (int)server_list.count());
  rc = mc.set("test", 4, "testdata", 8, 0, 0);
  string val = mc.get("test", 4, &vsize, &flags, &rc);
  stdout.printf("val = %s\n", val);
}

