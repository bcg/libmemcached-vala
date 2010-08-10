
[CCode(
  cheader_filename = "libmemcached/memcached.h",
  cprefix = "")]
namespace Memcached {


  [CCode (cname = "memcached_return_t")]
  public struct Return : int {}

/*
  public struct State {
    bool is_allocated;
    bool is_initialized;
    bool sockaddr_inited;
    bool is_shutting_down;
  }
  public struct Flags {
    bool auto_eject_hosts;
    bool binary_protocol;
    bool buffer_requests;
    bool cork;
    bool hash_with_prefix_key;
    bool ketama_weighted;
    bool no_block; // Don't block
    bool no_reply;
    bool randomize_replica_read;
    bool reuse_memory;
    bool support_cas;
    bool tcp_nodelay;
    bool use_cache_lookups;
    bool use_sort_hosts;
    bool use_udp;
    bool verify_key;
    bool tcp_keepalive;
  }
*/
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

    [CCode (cname = "memcached_server_list_append")]
    public ServerList append(string hostname, int port, Return* error);

    [CCode (cname = "memcached_server_list_count", type_parameters="ServerList")]
    public uint count();

  }
}
