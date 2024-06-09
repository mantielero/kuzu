#import ../wrapper/kuzudb_wrapper
import ../wrapper/kuzudb_0_4_2
import std/strformat

proc newConfig*[I,J,K:SomeInteger](bufferPoolSize:I; maxNumThreads:J; 
                enableCompression,readOnly:bool; 
                maxDbSize:K = 0):kuzusystemconfig =
   structkuzusystemconfig(
                    bufferpoolsize: bufferpoolsize.uint64, 
                    maxnumthreads: maxnumthreads.uint64, 
                    enablecompression: enablecompression, 
                    readonly: readonly, 
                    maxdbsize: maxDbSize.uint64)


type
  KuzuDbObj* = object
    handle*:ptr kuzu_database
  KuzuDB* = ref KuzuDbObj

proc `=destroy`*(db:KuzuDbObj) =
  if db.handle != nil:
    #echo "destroying Database"
    kuzu_database_destroy(db.handle)

# proc newKuzuDB*(name:string; 
#                 systemConfig:kuzusystemconfig = kuzu_default_system_config()):KuzuDB =
#   result = new KuzuDB
#   var ret = kuzu_database_init(name.cstring , systemConfig, result.handle.addr)
#   echo ret.int
#   if ret != Kuzusuccess:  # Kuzusuccess = 0, Kuzuerror = 1
#     raise newException(ValueError, "database creation failed")

proc newKuzuDB*(name:string; 
                systemConfig:kuzusystemconfig = kuzu_default_system_config()):KuzuDB =
  result = new KuzuDB

  result.handle = kuzu_database_init(name.cstring , systemConfig)
  if result.handle == nil:
    raise newException(ValueError, "unable to create the database")  

proc `$`*(config:kuzusystemconfig):string =
  result = "KuzuSystemConfig:\n"
  result &= &"  bufferPoolSize: {config.bufferpoolsize}\n"
  result &= &"  maxNumThreads: {config.maxnumthreads}\n"
  result &= &"  enableCompression: {config.enablecompression}\n"
  result &= &"  readOnly: {config.readonly}\n"
  result &= &"  maxDbSize: {config.maxdbsize}\n"      
#[
  structkuzusystemconfig_520094053 {.pure, inheritable, bycopy.} = object
    bufferpoolsize*: uint64  ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:112:9
    maxnumthreads*: uint64
    enablecompression*: bool
    readonly*: bool
    maxdbsize*: uint64
]#

type
  KuzuConnectionObj* = object
    handle*: ptr kuzu_connection
  KuzuConnection* = ref KuzuConnectionObj

proc `=destroy`*(conn:KuzuConnectionObj) =
  if conn.handle != nil:
    kuzu_connection_destroy(conn.handle)

proc connect*(db:KuzuDB):KuzuConnection =
  result = new KuzuConnection
  result.handle = kuzu_connection_init(db.handle)
  if result.handle == nil:
    raise newException(ValueError, "unable to connect to the database")

type
  QueryResultObj* = object
    handle*:ptr kuzu_query_result

  QueryResult* = ref QueryResultObj

proc `=destroy`*(res:QueryResultObj) =
  if res.handle != nil:
    kuzu_query_result_destroy(res.handle)

proc query*(conn:KuzuConnection; qry:string):QueryResult =
  result = new QueryResult
  result.handle = kuzu_connection_query(
      conn.handle, 
      qry.cstring)  

proc hasNext*(res:QueryResult):bool =
  kuzu_query_result_has_next(res.handle)

type
  KuzuFlatTupleObj* = object
    handle*:ptr kuzu_flat_tuple
  KuzuFlatTuple = ref KuzuFlatTupleObj

proc `=destroy`*(tpl:KuzuFlatTupleObj) =
  if tpl.handle != nil:
    kuzu_flat_tuple_destroy(tpl.handle)

proc getNext*(res:QueryResult):KuzuFlatTuple =
  result = new KuzuFlatTuple
  result.handle = kuzu_query_result_get_next(res.handle)

iterator items*(res:QueryResult):KuzuFlatTuple =
  while res.hasNext():
    yield res.getNext()


proc `$`*(res:QueryResult):string =
  $kuzu_query_result_to_string(res.handle)

type
  KuzuValueObj* = object
    handle*:ptr kuzu_value
  KuzuValue* = ref KuzuValueObj


proc `[]`*(tpl:KuzuFlatTuple;n:int):KuzuValue =
  result = new KuzuValue
  result.handle = kuzu_flat_tuple_get_value(tpl.handle, n.uint64)


# kuzu_destroy_string(name) # Needed for ctring?
proc getString*(value:KuzuValue):string =
  $kuzu_value_get_string(value.handle)

proc getInt*(value:KuzuValue):int =
  kuzu_value_get_int64(value.handle).int


# ----


proc getVersion*():string =
  $kuzugetversion()

proc getStorageVersion*():int =
  kuzu_get_storage_version().int