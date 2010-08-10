using LibMemcached;

void main() {
  LibMemcached.Return rc;
  size_t vsize;
  uint flags;

  LibMemcached.Memcached mc = new LibMemcached.Memcached(null);
  LibMemcached.ServerList server_list = new LibMemcached.ServerList("127.0.0.1:3333");
  //server_list = server_list.append("127.0.0.1", 3334, &rc);
  //server_list = server_list.append("127.0.0.1", 3335, &rc);

  server_list.append("127.0.0.1", 3334, out rc);
  server_list.append("127.0.0.1", 3335, out rc);
  
  mc.server_push(server_list); 
  server_list.count();
  stdout.printf("server count: %d\n", (int)server_list.count());
  rc = mc.set("test", 4, "testdata", 8, 0, 0);
  string val = mc.get("test", 4, out vsize, out flags, out rc);
  stdout.printf("val = %s\n", val);
}

