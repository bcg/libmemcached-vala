
[CCode(
  cheader_filename = "libmemcached/memcached.h",
  cprefix = "")]
namespace LibMemcached {

	//[CCode(cname = "size_t")]
	//public struct Size: uint{}

	//[CCode(cname = "time_t")]
	//public struct Time : uint{}

  [CCode (cname = "memcached_return_t")]
  public struct Return : int {}

  [Compact]
  [CCode (
    cname = "memcached_st", 
    free_function = "memcached_free"
  )]
  public class Memcached {
    [CCode (cname = "memcached_create")]
    public Memcached(Memcached *mc);

    [CCode (cname = "memcached_server_push")]
    public Return server_push(ServerList servers);

    [CCode (cname = "memcached_set")]
    public Return set(string key, size_t key_len, string value, size_t value_len,
                      time_t expiration, uint flags);

    [CCode (cname = "memcached_get")]
    public string get(string key, size_t key_len, out size_t value_len, out uint flags,
                      out Return rc);
  }

  [Compact]
  [CCode (
    cname = "memcached_server_st", 
    free_function = "memcached_server_free"
  )]
  public class ServerList {
    
    [CCode (cname = "memcached_servers_parse")]
    public ServerList(string server_strings);

    [CCode (cname = "memcached_servers_parse")]
    public static ServerList parse(string server_strings);

    [ReturnsModifiedPointer]
    [CCode (cname = "memcached_server_list_append")]
    public ServerList append(string hostname, int port, out Return error);

    [CCode (cname = "memcached_server_list_count")]
    public uint count();

  }
}
