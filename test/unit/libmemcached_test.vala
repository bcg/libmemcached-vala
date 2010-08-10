
namespace LibMemcachedTest {

  void server_list() {
    LibMemcached.Return rc = 0;
    LibMemcached.ServerList sl = new LibMemcached.ServerList("127.0.0.1:3333");

    assert (sl.count() == 1);
    sl = sl.append("127.0.0.1", 3334, &rc);
    assert (sl.count() == 2);
  }
}

void main (string[] args) {
  Test.init (ref args);
  Test.add_func ("/LibMemcached/ServerList", LibMemcachedTest.server_list);
  Test.run ();
}

