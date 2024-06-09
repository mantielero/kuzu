
type
  enumkuzudatatypeid* {.size: sizeof(cuint).} = enum
    Kuzuany = 0, Kuzunode = 10, Kuzurel = 11, Kuzurecursiverel = 12,
    Kuzuserial = 13, Kuzubool = 22, Kuzuint64 = 23, Kuzuint32 = 24,
    Kuzuint16 = 25, Kuzuint8 = 26, Kuzuuint64 = 27, Kuzuuint32 = 28,
    Kuzuuint16 = 29, Kuzuuint8 = 30, Kuzuint128 = 31, Kuzudouble = 32,
    Kuzufloat = 33, Kuzudate = 34, Kuzutimestamp = 35, Kuzutimestampsec = 36,
    Kuzutimestampms = 37, Kuzutimestampns = 38, Kuzutimestamptz = 39,
    Kuzuinterval = 40, Kuzuinternalid = 42, Kuzustring = 50, Kuzublob = 51,
    Kuzulist = 52, Kuzuarray = 53, Kuzustruct = 54, Kuzumap = 55,
    Kuzuunion = 56, Kuzurdfvariant = 57, Kuzupointer = 58, Kuzuuuid = 59
type
  Kuzuhelperdllimport* = distinct object
type
  Kuzuhelperdeprecated* = distinct object
type
  structarrowschema* {.pure, inheritable, bycopy.} = object
    format*: cstring         ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:60:8
    name*: cstring
    metadata*: cstring
    flags*: int64
    nchildren*: int64
    children*: ptr ptr structarrowschema
    dictionary*: ptr structarrowschema
    release*: proc (a0: ptr structarrowschema): void {.cdecl.}
    privatedata*: pointer

  structarrowarray* {.pure, inheritable, bycopy.} = object
    length*: int64           ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:76:8
    nullcount*: int64
    offset*: int64
    nbuffers*: int64
    nchildren*: int64
    buffers*: ptr pointer
    children*: ptr ptr structarrowarray
    dictionary*: ptr structarrowarray
    release*: proc (a0: ptr structarrowarray): void {.cdecl.}
    privatedata*: pointer

  structkuzusystemconfig* {.pure, inheritable, bycopy.} = object
    bufferpoolsize*: uint64  ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:108:9
    maxnumthreads*: uint64
    enablecompression*: bool
    readonly*: bool
    maxdbsize*: uint64

  kuzusystemconfig* = structkuzusystemconfig ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:125:3
  structkuzudatabase* {.pure, inheritable, bycopy.} = object
    internaldatabase*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:130:9
  
  kuzudatabase* = structkuzudatabase ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:132:3
  structkuzuconnection* {.pure, inheritable, bycopy.} = object
    internalconnection*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:139:9
  
  kuzuconnection* = structkuzuconnection ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:141:3
  structkuzupreparedstatement* {.pure, inheritable, bycopy.} = object
    internalpreparedstatement*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:147:9
    internalboundvalues*: pointer

  kuzupreparedstatement* = structkuzupreparedstatement ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:150:3
  structkuzuqueryresult* {.pure, inheritable, bycopy.} = object
    internalqueryresult*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:155:9
    internalisownedbycpp*: bool

  kuzuqueryresult* = structkuzuqueryresult ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:158:3
  structkuzuflattuple* {.pure, inheritable, bycopy.} = object
    internalflattuple*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:163:9
  
  kuzuflattuple* = structkuzuflattuple ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:165:3
  structkuzulogicaltype* {.pure, inheritable, bycopy.} = object
    internaldatatype*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:170:9
  
  kuzulogicaltype* = structkuzulogicaltype ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:172:3
  structkuzuvalue* {.pure, inheritable, bycopy.} = object
    internalvalue*: pointer  ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:177:9
    internalisownedbycpp*: bool

  kuzuvalue* = structkuzuvalue ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:180:3
  structkuzuinternalidt* {.pure, inheritable, bycopy.} = object
    tableid*: uint64         ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:185:9
    offset*: uint64

  kuzuinternalidt* = structkuzuinternalidt ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:188:3
  structkuzudatet* {.pure, inheritable, bycopy.} = object
    days*: int32             ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:193:9
  
  kuzudatet* = structkuzudatet ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:196:3
  structkuzutimestampnst* {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:202:9
  
  kuzutimestampnst* = structkuzutimestampnst ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:205:3
  structkuzutimestampmst* {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:211:9
  
  kuzutimestampmst* = structkuzutimestampmst ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:214:3
  structkuzutimestampsect* {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:220:9
  
  kuzutimestampsect* = structkuzutimestampsect ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:223:3
  structkuzutimestamptzt* {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:229:9
  
  kuzutimestamptzt* = structkuzutimestamptzt ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:232:3
  structkuzutimestampt* {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:238:9
  
  kuzutimestampt* = structkuzutimestampt ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:241:3
  structkuzuintervalt* {.pure, inheritable, bycopy.} = object
    months*: int32           ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:246:9
    days*: int32
    micros*: int64

  kuzuintervalt* = structkuzuintervalt ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:250:3
  structkuzuquerysummary* {.pure, inheritable, bycopy.} = object
    internalquerysummary*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:256:9
  
  kuzuquerysummary* = structkuzuquerysummary ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:258:3
  structkuzuint128t* {.pure, inheritable, bycopy.} = object
    low*: uint64             ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:260:9
    high*: int64

  kuzuint128t* = structkuzuint128t ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:263:3
  kuzudatatypeid* = enumkuzudatatypeid ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:308:3
when 1 is static:
  const
    Arrowflagdictionaryordered* = 1 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:56:9
else:
  let Arrowflagdictionaryordered* = 1 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:56:9
when 2 is static:
  const
    Arrowflagnullable* = 2   ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:57:9
else:
  let Arrowflagnullable* = 2 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:57:9
when 4 is static:
  const
    Arrowflagmapkeyssorted* = 4 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:58:9
else:
  let Arrowflagmapkeyssorted* = 4 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-0.4.2/src/include/c_api/kuzu.h:58:9
proc kuzudatabaseinit*(databasepath: cstring; systemconfig: kuzusystemconfig): ptr kuzudatabase {.
    cdecl, importc: "kuzu_database_init".}
proc kuzudatabasedestroy*(database: ptr kuzudatabase): void {.cdecl,
    importc: "kuzu_database_destroy".}
proc kuzudatabasesetlogginglevel*(logginglevel: cstring): void {.cdecl,
    importc: "kuzu_database_set_logging_level".}
proc kuzudefaultsystemconfig*(): kuzusystemconfig {.cdecl,
    importc: "kuzu_default_system_config".}
proc kuzuconnectioninit*(database: ptr kuzudatabase): ptr kuzuconnection {.
    cdecl, importc: "kuzu_connection_init".}
proc kuzuconnectiondestroy*(connection: ptr kuzuconnection): void {.cdecl,
    importc: "kuzu_connection_destroy".}
proc kuzuconnectionsetmaxnumthreadforexec*(connection: ptr kuzuconnection;
    numthreads: uint64): void {.cdecl, importc: "kuzu_connection_set_max_num_thread_for_exec".}
proc kuzuconnectiongetmaxnumthreadforexec*(connection: ptr kuzuconnection): uint64 {.
    cdecl, importc: "kuzu_connection_get_max_num_thread_for_exec".}
proc kuzuconnectionquery*(connection: ptr kuzuconnection; query: cstring): ptr kuzuqueryresult {.
    cdecl, importc: "kuzu_connection_query".}
proc kuzuconnectionprepare*(connection: ptr kuzuconnection; query: cstring): ptr kuzupreparedstatement {.
    cdecl, importc: "kuzu_connection_prepare".}
proc kuzuconnectionexecute*(connection: ptr kuzuconnection;
                            preparedstatement: ptr kuzupreparedstatement): ptr kuzuqueryresult {.
    cdecl, importc: "kuzu_connection_execute".}
proc kuzuconnectioninterrupt*(connection: ptr kuzuconnection): void {.cdecl,
    importc: "kuzu_connection_interrupt".}
proc kuzuconnectionsetquerytimeout*(connection: ptr kuzuconnection;
                                    timeoutinms: uint64): void {.cdecl,
    importc: "kuzu_connection_set_query_timeout".}
proc kuzupreparedstatementdestroy*(preparedstatement: ptr kuzupreparedstatement): void {.
    cdecl, importc: "kuzu_prepared_statement_destroy".}
proc kuzupreparedstatementallowactivetransaction*(
    preparedstatement: ptr kuzupreparedstatement): bool {.cdecl,
    importc: "kuzu_prepared_statement_allow_active_transaction".}
proc kuzupreparedstatementissuccess*(preparedstatement: ptr kuzupreparedstatement): bool {.
    cdecl, importc: "kuzu_prepared_statement_is_success".}
proc kuzupreparedstatementgeterrormessage*(
    preparedstatement: ptr kuzupreparedstatement): cstring {.cdecl,
    importc: "kuzu_prepared_statement_get_error_message".}
proc kuzupreparedstatementbindbool*(preparedstatement: ptr kuzupreparedstatement;
                                    paramname: cstring; value: bool): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_bool".}
proc kuzupreparedstatementbindint64*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: int64): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_int64".}
proc kuzupreparedstatementbindint32*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: int32): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_int32".}
proc kuzupreparedstatementbindint16*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: int16): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_int16".}
proc kuzupreparedstatementbindint8*(preparedstatement: ptr kuzupreparedstatement;
                                    paramname: cstring; value: int8): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_int8".}
proc kuzupreparedstatementbinduint64*(preparedstatement: ptr kuzupreparedstatement;
                                      paramname: cstring; value: uint64): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_uint64".}
proc kuzupreparedstatementbinduint32*(preparedstatement: ptr kuzupreparedstatement;
                                      paramname: cstring; value: uint32): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_uint32".}
proc kuzupreparedstatementbinduint16*(preparedstatement: ptr kuzupreparedstatement;
                                      paramname: cstring; value: uint16): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_uint16".}
proc kuzupreparedstatementbinduint8*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: uint8): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_uint8".}
proc kuzupreparedstatementbinddouble*(preparedstatement: ptr kuzupreparedstatement;
                                      paramname: cstring; value: cdouble): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_double".}
proc kuzupreparedstatementbindfloat*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: cfloat): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_float".}
proc kuzupreparedstatementbinddate*(preparedstatement: ptr kuzupreparedstatement;
                                    paramname: cstring; value: kuzudatet): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_date".}
proc kuzupreparedstatementbindtimestampns*(
    preparedstatement: ptr kuzupreparedstatement; paramname: cstring;
    value: kuzutimestampnst): void {.cdecl, importc: "kuzu_prepared_statement_bind_timestamp_ns".}
proc kuzupreparedstatementbindtimestampsec*(
    preparedstatement: ptr kuzupreparedstatement; paramname: cstring;
    value: kuzutimestampsect): void {.cdecl, importc: "kuzu_prepared_statement_bind_timestamp_sec".}
proc kuzupreparedstatementbindtimestamptz*(
    preparedstatement: ptr kuzupreparedstatement; paramname: cstring;
    value: kuzutimestamptzt): void {.cdecl, importc: "kuzu_prepared_statement_bind_timestamp_tz".}
proc kuzupreparedstatementbindtimestampms*(
    preparedstatement: ptr kuzupreparedstatement; paramname: cstring;
    value: kuzutimestampmst): void {.cdecl, importc: "kuzu_prepared_statement_bind_timestamp_ms".}
proc kuzupreparedstatementbindtimestamp*(
    preparedstatement: ptr kuzupreparedstatement; paramname: cstring;
    value: kuzutimestampt): void {.cdecl, importc: "kuzu_prepared_statement_bind_timestamp".}
proc kuzupreparedstatementbindinterval*(preparedstatement: ptr kuzupreparedstatement;
                                        paramname: cstring; value: kuzuintervalt): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_interval".}
proc kuzupreparedstatementbindstring*(preparedstatement: ptr kuzupreparedstatement;
                                      paramname: cstring; value: cstring): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_string".}
proc kuzupreparedstatementbindvalue*(preparedstatement: ptr kuzupreparedstatement;
                                     paramname: cstring; value: ptr kuzuvalue): void {.
    cdecl, importc: "kuzu_prepared_statement_bind_value".}
proc kuzuqueryresultdestroy*(queryresult: ptr kuzuqueryresult): void {.cdecl,
    importc: "kuzu_query_result_destroy".}
proc kuzuqueryresultissuccess*(queryresult: ptr kuzuqueryresult): bool {.cdecl,
    importc: "kuzu_query_result_is_success".}
proc kuzuqueryresultgeterrormessage*(queryresult: ptr kuzuqueryresult): cstring {.
    cdecl, importc: "kuzu_query_result_get_error_message".}
proc kuzuqueryresultgetnumcolumns*(queryresult: ptr kuzuqueryresult): uint64 {.
    cdecl, importc: "kuzu_query_result_get_num_columns".}
proc kuzuqueryresultgetcolumnname*(queryresult: ptr kuzuqueryresult;
                                   index: uint64): cstring {.cdecl,
    importc: "kuzu_query_result_get_column_name".}
proc kuzuqueryresultgetcolumndatatype*(queryresult: ptr kuzuqueryresult;
                                       index: uint64): ptr kuzulogicaltype {.
    cdecl, importc: "kuzu_query_result_get_column_data_type".}
proc kuzuqueryresultgetnumtuples*(queryresult: ptr kuzuqueryresult): uint64 {.
    cdecl, importc: "kuzu_query_result_get_num_tuples".}
proc kuzuqueryresultgetquerysummary*(queryresult: ptr kuzuqueryresult): ptr kuzuquerysummary {.
    cdecl, importc: "kuzu_query_result_get_query_summary".}
proc kuzuqueryresulthasnext*(queryresult: ptr kuzuqueryresult): bool {.cdecl,
    importc: "kuzu_query_result_has_next".}
proc kuzuqueryresultgetnext*(queryresult: ptr kuzuqueryresult): ptr kuzuflattuple {.
    cdecl, importc: "kuzu_query_result_get_next".}
proc kuzuqueryresulthasnextqueryresult*(queryresult: ptr kuzuqueryresult): bool {.
    cdecl, importc: "kuzu_query_result_has_next_query_result".}
proc kuzuqueryresultgetnextqueryresult*(queryresult: ptr kuzuqueryresult): ptr kuzuqueryresult {.
    cdecl, importc: "kuzu_query_result_get_next_query_result".}
proc kuzuqueryresulttostring*(queryresult: ptr kuzuqueryresult): cstring {.
    cdecl, importc: "kuzu_query_result_to_string".}
proc kuzuqueryresultresetiterator*(queryresult: ptr kuzuqueryresult): void {.
    cdecl, importc: "kuzu_query_result_reset_iterator".}
proc kuzuqueryresultgetarrowschema*(queryresult: ptr kuzuqueryresult): structarrowschema {.
    cdecl, importc: "kuzu_query_result_get_arrow_schema".}
proc kuzuqueryresultgetnextarrowchunk*(queryresult: ptr kuzuqueryresult;
                                       chunksize: int64): structarrowarray {.
    cdecl, importc: "kuzu_query_result_get_next_arrow_chunk".}
proc kuzuflattupledestroy*(flattuple: ptr kuzuflattuple): void {.cdecl,
    importc: "kuzu_flat_tuple_destroy".}
proc kuzuflattuplegetvalue*(flattuple: ptr kuzuflattuple; index: uint64): ptr kuzuvalue {.
    cdecl, importc: "kuzu_flat_tuple_get_value".}
proc kuzuflattupletostring*(flattuple: ptr kuzuflattuple): cstring {.cdecl,
    importc: "kuzu_flat_tuple_to_string".}
proc kuzudatatypecreate*(id: kuzudatatypeid; childtype: ptr kuzulogicaltype;
                         numelementsinarray: uint64): ptr kuzulogicaltype {.
    cdecl, importc: "kuzu_data_type_create".}
proc kuzudatatypeclone*(datatype: ptr kuzulogicaltype): ptr kuzulogicaltype {.
    cdecl, importc: "kuzu_data_type_clone".}
proc kuzudatatypedestroy*(datatype: ptr kuzulogicaltype): void {.cdecl,
    importc: "kuzu_data_type_destroy".}
proc kuzudatatypeequals*(datatype1: ptr kuzulogicaltype;
                         datatype2: ptr kuzulogicaltype): bool {.cdecl,
    importc: "kuzu_data_type_equals".}
proc kuzudatatypegetid*(datatype: ptr kuzulogicaltype): kuzudatatypeid {.cdecl,
    importc: "kuzu_data_type_get_id".}
proc kuzudatatypegetnumelementsinarray*(datatype: ptr kuzulogicaltype): uint64 {.
    cdecl, importc: "kuzu_data_type_get_num_elements_in_array".}
proc kuzuvaluecreatenull*(): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_null".}
proc kuzuvaluecreatenullwithdatatype*(datatype: ptr kuzulogicaltype): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_create_null_with_data_type".}
proc kuzuvalueisnull*(value: ptr kuzuvalue): bool {.cdecl,
    importc: "kuzu_value_is_null".}
proc kuzuvaluesetnull*(value: ptr kuzuvalue; isnull: bool): void {.cdecl,
    importc: "kuzu_value_set_null".}
proc kuzuvaluecreatedefault*(datatype: ptr kuzulogicaltype): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_create_default".}
proc kuzuvaluecreatebool*(val: bool): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_bool".}
proc kuzuvaluecreateint8*(val: int8): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_int8".}
proc kuzuvaluecreateint16*(val: int16): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_int16".}
proc kuzuvaluecreateint32*(val: int32): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_int32".}
proc kuzuvaluecreateint64*(val: int64): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_int64".}
proc kuzuvaluecreateuint8*(val: uint8): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_uint8".}
proc kuzuvaluecreateuint16*(val: uint16): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_uint16".}
proc kuzuvaluecreateuint32*(val: uint32): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_uint32".}
proc kuzuvaluecreateuint64*(val: uint64): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_uint64".}
proc kuzuvaluecreateint128*(val: kuzuint128t): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_int128".}
proc kuzuvaluecreatefloat*(val: cfloat): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_float".}
proc kuzuvaluecreatedouble*(val: cdouble): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_double".}
proc kuzuvaluecreateinternalid*(val: kuzuinternalidt): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_internal_id".}
proc kuzuvaluecreatedate*(val: kuzudatet): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_date".}
proc kuzuvaluecreatetimestampns*(val: kuzutimestampnst): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_timestamp_ns".}
proc kuzuvaluecreatetimestampms*(val: kuzutimestampmst): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_timestamp_ms".}
proc kuzuvaluecreatetimestampsec*(val: kuzutimestampsect): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_create_timestamp_sec".}
proc kuzuvaluecreatetimestamptz*(val: kuzutimestamptzt): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_timestamp_tz".}
proc kuzuvaluecreatetimestamp*(val: kuzutimestampt): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_timestamp".}
proc kuzuvaluecreateinterval*(val: kuzuintervalt): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_interval".}
proc kuzuvaluecreatestring*(val: cstring): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_create_string".}
proc kuzuvalueclone*(value: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_value_clone".}
proc kuzuvaluecopy*(value: ptr kuzuvalue; other: ptr kuzuvalue): void {.cdecl,
    importc: "kuzu_value_copy".}
proc kuzuvaluedestroy*(value: ptr kuzuvalue): void {.cdecl,
    importc: "kuzu_value_destroy".}
proc kuzuvaluegetlistsize*(value: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_value_get_list_size".}
proc kuzuvaluegetlistelement*(value: ptr kuzuvalue; index: uint64): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_get_list_element".}
proc kuzuvaluegetstructnumfields*(value: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_value_get_struct_num_fields".}
proc kuzuvaluegetstructfieldname*(value: ptr kuzuvalue; index: uint64): cstring {.
    cdecl, importc: "kuzu_value_get_struct_field_name".}
proc kuzuvaluegetstructfieldvalue*(value: ptr kuzuvalue; index: uint64): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_get_struct_field_value".}
proc kuzuvaluegetrecursiverelnodelist*(value: ptr kuzuvalue): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_get_recursive_rel_node_list".}
proc kuzuvaluegetrecursiverelrellist*(value: ptr kuzuvalue): ptr kuzuvalue {.
    cdecl, importc: "kuzu_value_get_recursive_rel_rel_list".}
proc kuzuvaluegetdatatype*(value: ptr kuzuvalue): ptr kuzulogicaltype {.cdecl,
    importc: "kuzu_value_get_data_type".}
proc kuzuvaluegetbool*(value: ptr kuzuvalue): bool {.cdecl,
    importc: "kuzu_value_get_bool".}
proc kuzuvaluegetint8*(value: ptr kuzuvalue): int8 {.cdecl,
    importc: "kuzu_value_get_int8".}
proc kuzuvaluegetint16*(value: ptr kuzuvalue): int16 {.cdecl,
    importc: "kuzu_value_get_int16".}
proc kuzuvaluegetint32*(value: ptr kuzuvalue): int32 {.cdecl,
    importc: "kuzu_value_get_int32".}
proc kuzuvaluegetint64*(value: ptr kuzuvalue): int64 {.cdecl,
    importc: "kuzu_value_get_int64".}
proc kuzuvaluegetuint8*(value: ptr kuzuvalue): uint8 {.cdecl,
    importc: "kuzu_value_get_uint8".}
proc kuzuvaluegetuint16*(value: ptr kuzuvalue): uint16 {.cdecl,
    importc: "kuzu_value_get_uint16".}
proc kuzuvaluegetuint32*(value: ptr kuzuvalue): uint32 {.cdecl,
    importc: "kuzu_value_get_uint32".}
proc kuzuvaluegetuint64*(value: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_value_get_uint64".}
proc kuzuvaluegetint128*(value: ptr kuzuvalue): kuzuint128t {.cdecl,
    importc: "kuzu_value_get_int128".}
proc kuzuint128tfromstring*(str: cstring): kuzuint128t {.cdecl,
    importc: "kuzu_int128_t_from_string".}
proc kuzuint128ttostring*(val: kuzuint128t): cstring {.cdecl,
    importc: "kuzu_int128_t_to_string".}
proc kuzuvaluegetfloat*(value: ptr kuzuvalue): cfloat {.cdecl,
    importc: "kuzu_value_get_float".}
proc kuzuvaluegetdouble*(value: ptr kuzuvalue): cdouble {.cdecl,
    importc: "kuzu_value_get_double".}
proc kuzuvaluegetinternalid*(value: ptr kuzuvalue): kuzuinternalidt {.cdecl,
    importc: "kuzu_value_get_internal_id".}
proc kuzuvaluegetdate*(value: ptr kuzuvalue): kuzudatet {.cdecl,
    importc: "kuzu_value_get_date".}
proc kuzuvaluegettimestamp*(value: ptr kuzuvalue): kuzutimestampt {.cdecl,
    importc: "kuzu_value_get_timestamp".}
proc kuzuvaluegettimestampns*(value: ptr kuzuvalue): kuzutimestampnst {.cdecl,
    importc: "kuzu_value_get_timestamp_ns".}
proc kuzuvaluegettimestampms*(value: ptr kuzuvalue): kuzutimestampmst {.cdecl,
    importc: "kuzu_value_get_timestamp_ms".}
proc kuzuvaluegettimestampsec*(value: ptr kuzuvalue): kuzutimestampsect {.cdecl,
    importc: "kuzu_value_get_timestamp_sec".}
proc kuzuvaluegettimestamptz*(value: ptr kuzuvalue): kuzutimestamptzt {.cdecl,
    importc: "kuzu_value_get_timestamp_tz".}
proc kuzuvaluegetinterval*(value: ptr kuzuvalue): kuzuintervalt {.cdecl,
    importc: "kuzu_value_get_interval".}
proc kuzuvaluegetstring*(value: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_value_get_string".}
proc kuzuvaluegetblob*(value: ptr kuzuvalue): ptr uint8 {.cdecl,
    importc: "kuzu_value_get_blob".}
proc kuzuvaluegetuuid*(value: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_value_get_uuid".}
proc kuzuvaluetostring*(value: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_value_to_string".}
proc kuzunodevalgetidval*(nodeval: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_node_val_get_id_val".}
proc kuzunodevalgetlabelval*(nodeval: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_node_val_get_label_val".}
proc kuzunodevalgetpropertysize*(nodeval: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_node_val_get_property_size".}
proc kuzunodevalgetpropertynameat*(nodeval: ptr kuzuvalue; index: uint64): cstring {.
    cdecl, importc: "kuzu_node_val_get_property_name_at".}
proc kuzunodevalgetpropertyvalueat*(nodeval: ptr kuzuvalue; index: uint64): ptr kuzuvalue {.
    cdecl, importc: "kuzu_node_val_get_property_value_at".}
proc kuzunodevaltostring*(nodeval: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_node_val_to_string".}
proc kuzurelvalgetsrcidval*(relval: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_rel_val_get_src_id_val".}
proc kuzurelvalgetdstidval*(relval: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_rel_val_get_dst_id_val".}
proc kuzurelvalgetlabelval*(relval: ptr kuzuvalue): ptr kuzuvalue {.cdecl,
    importc: "kuzu_rel_val_get_label_val".}
proc kuzurelvalgetpropertysize*(relval: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_rel_val_get_property_size".}
proc kuzurelvalgetpropertynameat*(relval: ptr kuzuvalue; index: uint64): cstring {.
    cdecl, importc: "kuzu_rel_val_get_property_name_at".}
proc kuzurelvalgetpropertyvalueat*(relval: ptr kuzuvalue; index: uint64): ptr kuzuvalue {.
    cdecl, importc: "kuzu_rel_val_get_property_value_at".}
proc kuzurelvaltostring*(relval: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_rel_val_to_string".}
proc kuzurdfvariantgettype*(rdfvariant: ptr kuzuvalue): kuzudatatypeid {.cdecl,
    importc: "kuzu_rdf_variant_get_type".}
proc kuzurdfvariantgetstring*(rdfvariant: ptr kuzuvalue): cstring {.cdecl,
    importc: "kuzu_rdf_variant_get_string".}
proc kuzurdfvariantgetblob*(rdfvariant: ptr kuzuvalue): ptr uint8 {.cdecl,
    importc: "kuzu_rdf_variant_get_blob".}
proc kuzurdfvariantgetint64*(rdfvariant: ptr kuzuvalue): int64 {.cdecl,
    importc: "kuzu_rdf_variant_get_int64".}
proc kuzurdfvariantgetint32*(rdfvariant: ptr kuzuvalue): int32 {.cdecl,
    importc: "kuzu_rdf_variant_get_int32".}
proc kuzurdfvariantgetint16*(rdfvariant: ptr kuzuvalue): int16 {.cdecl,
    importc: "kuzu_rdf_variant_get_int16".}
proc kuzurdfvariantgetint8*(rdfvariant: ptr kuzuvalue): int8 {.cdecl,
    importc: "kuzu_rdf_variant_get_int8".}
proc kuzurdfvariantgetuint64*(rdfvariant: ptr kuzuvalue): uint64 {.cdecl,
    importc: "kuzu_rdf_variant_get_uint64".}
proc kuzurdfvariantgetuint32*(rdfvariant: ptr kuzuvalue): uint32 {.cdecl,
    importc: "kuzu_rdf_variant_get_uint32".}
proc kuzurdfvariantgetuint16*(rdfvariant: ptr kuzuvalue): uint16 {.cdecl,
    importc: "kuzu_rdf_variant_get_uint16".}
proc kuzurdfvariantgetuint8*(rdfvariant: ptr kuzuvalue): uint8 {.cdecl,
    importc: "kuzu_rdf_variant_get_uint8".}
proc kuzurdfvariantgetfloat*(rdfvariant: ptr kuzuvalue): cfloat {.cdecl,
    importc: "kuzu_rdf_variant_get_float".}
proc kuzurdfvariantgetdouble*(rdfvariant: ptr kuzuvalue): cdouble {.cdecl,
    importc: "kuzu_rdf_variant_get_double".}
proc kuzurdfvariantgetbool*(rdfvariant: ptr kuzuvalue): bool {.cdecl,
    importc: "kuzu_rdf_variant_get_bool".}
proc kuzurdfvariantgetdate*(rdfvariant: ptr kuzuvalue): kuzudatet {.cdecl,
    importc: "kuzu_rdf_variant_get_date".}
proc kuzurdfvariantgettimestamp*(rdfvariant: ptr kuzuvalue): kuzutimestampt {.
    cdecl, importc: "kuzu_rdf_variant_get_timestamp".}
proc kuzurdfvariantgetinterval*(rdfvariant: ptr kuzuvalue): kuzuintervalt {.
    cdecl, importc: "kuzu_rdf_variant_get_interval".}
proc kuzudestroystring*(str: cstring): void {.cdecl,
    importc: "kuzu_destroy_string".}
proc kuzuquerysummarydestroy*(querysummary: ptr kuzuquerysummary): void {.cdecl,
    importc: "kuzu_query_summary_destroy".}
proc kuzuquerysummarygetcompilingtime*(querysummary: ptr kuzuquerysummary): cdouble {.
    cdecl, importc: "kuzu_query_summary_get_compiling_time".}
proc kuzuquerysummarygetexecutiontime*(querysummary: ptr kuzuquerysummary): cdouble {.
    cdecl, importc: "kuzu_query_summary_get_execution_time".}
proc kuzugetversion*(): cstring {.cdecl, importc: "kuzu_get_version".}
proc kuzugetstorageversion*(): uint64 {.cdecl,
                                        importc: "kuzu_get_storage_version".}