
from macros import hint

when not declared(enumkuzudatatypeid):
  type
    enumkuzudatatypeid* {.size: sizeof(cuint).} = enum
      Kuzuany = 0, Kuzunode = 10, Kuzurel = 11, Kuzurecursiverel = 12,
      Kuzuserial = 13, Kuzubool = 22, Kuzuint64 = 23, Kuzuint32 = 24,
      Kuzuint16 = 25, Kuzuint8 = 26, Kuzuuint64 = 27, Kuzuuint32 = 28,
      Kuzuuint16 = 29, Kuzuuint8 = 30, Kuzuint128 = 31, Kuzudouble = 32,
      Kuzufloat = 33, Kuzudate = 34, Kuzutimestamp = 35, Kuzutimestampsec = 36,
      Kuzutimestampms = 37, Kuzutimestampns = 38, Kuzutimestamptz = 39,
      Kuzuinterval = 40, Kuzudecimal = 41, Kuzuinternalid = 42, Kuzustring = 50,
      Kuzublob = 51, Kuzulist = 52, Kuzuarray = 53, Kuzustruct = 54,
      Kuzumap = 55, Kuzuunion = 56, Kuzurdfvariant = 57, Kuzupointer = 58,
      Kuzuuuid = 59
else:
  static :
    hint("Declaration of " & "enumkuzudatatypeid" &
        " already exists, not redeclaring")
when not declared(enumkuzustate):
  type
    enumkuzustate* {.size: sizeof(cuint).} = enum
      Kuzusuccess = 0, Kuzuerror = 1
else:
  static :
    hint("Declaration of " & "enumkuzustate" &
        " already exists, not redeclaring")
when not declared(Kuzuhelperdllimport):
  type
    Kuzuhelperdllimport* = distinct object
else:
  static :
    hint("Declaration of " & "Kuzuhelperdllimport" &
        " already exists, not redeclaring")
when not declared(Kuzuhelperdeprecated):
  type
    Kuzuhelperdeprecated* = distinct object
else:
  static :
    hint("Declaration of " & "Kuzuhelperdeprecated" &
        " already exists, not redeclaring")
type
  structarrowschema_520094049 {.pure, inheritable, bycopy.} = object
    format*: cstring         ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:64:8
    name*: cstring
    metadata*: cstring
    flags*: int64
    nchildren*: int64
    children*: ptr ptr structarrowschema_520094050
    dictionary*: ptr structarrowschema_520094050
    release*: proc (a0: ptr structarrowschema_520094050): void {.cdecl.}
    privatedata*: pointer

  structarrowarray_520094051 {.pure, inheritable, bycopy.} = object
    length*: int64           ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:80:8
    nullcount*: int64
    offset*: int64
    nbuffers*: int64
    nchildren*: int64
    buffers*: ptr pointer
    children*: ptr ptr structarrowarray_520094052
    dictionary*: ptr structarrowarray_520094052
    release*: proc (a0: ptr structarrowarray_520094052): void {.cdecl.}
    privatedata*: pointer

  structkuzusystemconfig_520094053 {.pure, inheritable, bycopy.} = object
    bufferpoolsize*: uint64  ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:112:9
    maxnumthreads*: uint64
    enablecompression*: bool
    readonly*: bool
    maxdbsize*: uint64

  kuzusystemconfig_520094055 = structkuzusystemconfig_520094054 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:129:3
  structkuzudatabase_520094057 {.pure, inheritable, bycopy.} = object
    internaldatabase*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:134:9
  
  kuzudatabase_520094059 = structkuzudatabase_520094058 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:136:3
  structkuzuconnection_520094061 {.pure, inheritable, bycopy.} = object
    internalconnection*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:143:9
  
  kuzuconnection_520094063 = structkuzuconnection_520094062 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:145:3
  structkuzupreparedstatement_520094065 {.pure, inheritable, bycopy.} = object
    internalpreparedstatement*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:151:9
    internalboundvalues*: pointer

  kuzupreparedstatement_520094067 = structkuzupreparedstatement_520094066 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:154:3
  structkuzuqueryresult_520094069 {.pure, inheritable, bycopy.} = object
    internalqueryresult*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:159:9
    internalisownedbycpp*: bool

  kuzuqueryresult_520094071 = structkuzuqueryresult_520094070 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:162:3
  structkuzuflattuple_520094073 {.pure, inheritable, bycopy.} = object
    internalflattuple*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:167:9
    internalisownedbycpp*: bool

  kuzuflattuple_520094075 = structkuzuflattuple_520094074 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:170:3
  structkuzulogicaltype_520094077 {.pure, inheritable, bycopy.} = object
    internaldatatype*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:175:9
  
  kuzulogicaltype_520094079 = structkuzulogicaltype_520094078 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:177:3
  structkuzuvalue_520094081 {.pure, inheritable, bycopy.} = object
    internalvalue*: pointer  ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:182:9
    internalisownedbycpp*: bool

  kuzuvalue_520094083 = structkuzuvalue_520094082 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:185:3
  structkuzuinternalidt_520094085 {.pure, inheritable, bycopy.} = object
    tableid*: uint64         ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:190:9
    offset*: uint64

  kuzuinternalidt_520094087 = structkuzuinternalidt_520094086 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:193:3
  structkuzudatet_520094089 {.pure, inheritable, bycopy.} = object
    days*: int32             ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:198:9
  
  kuzudatet_520094091 = structkuzudatet_520094090 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:201:3
  structkuzutimestampnst_520094093 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:207:9
  
  kuzutimestampnst_520094095 = structkuzutimestampnst_520094094 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:210:3
  structkuzutimestampmst_520094097 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:216:9
  
  kuzutimestampmst_520094099 = structkuzutimestampmst_520094098 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:219:3
  structkuzutimestampsect_520094101 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:225:9
  
  kuzutimestampsect_520094103 = structkuzutimestampsect_520094102 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:228:3
  structkuzutimestamptzt_520094105 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:234:9
  
  kuzutimestamptzt_520094107 = structkuzutimestamptzt_520094106 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:237:3
  structkuzutimestampt_520094109 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:243:9
  
  kuzutimestampt_520094111 = structkuzutimestampt_520094110 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:246:3
  structkuzuintervalt_520094113 {.pure, inheritable, bycopy.} = object
    months*: int32           ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:251:9
    days*: int32
    micros*: int64

  kuzuintervalt_520094115 = structkuzuintervalt_520094114 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:255:3
  structkuzuquerysummary_520094117 {.pure, inheritable, bycopy.} = object
    internalquerysummary*: pointer ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:261:9
  
  kuzuquerysummary_520094119 = structkuzuquerysummary_520094118 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:263:3
  structkuzuint128t_520094121 {.pure, inheritable, bycopy.} = object
    low*: uint64             ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:265:9
    high*: int64

  kuzuint128t_520094123 = structkuzuint128t_520094122 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:268:3
  kuzudatatypeid_520094127 = enumkuzudatatypeid_520094126 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:314:3
  kuzustate_520094131 = enumkuzustate_520094130 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:319:49
  structtm_520094140 {.pure, inheritable, bycopy.} = object
    tmsec*: cint             ## Generated based on /usr/include/bits/types/struct_tm.h:7:8
    tmmin*: cint
    tmhour*: cint
    tmmday*: cint
    tmmon*: cint
    tmyear*: cint
    tmwday*: cint
    tmyday*: cint
    tmisdst*: cint
    tmgmtoff*: clong
    tmzone*: cstring

  structarrowarray_520094052 = (when declared(structarrowarray):
    structarrowarray
   else:
    structarrowarray_520094051)
  structkuzusystemconfig_520094054 = (when declared(structkuzusystemconfig):
    structkuzusystemconfig
   else:
    structkuzusystemconfig_520094053)
  kuzudatabase_520094060 = (when declared(kuzudatabase):
    kuzudatabase
   else:
    kuzudatabase_520094059)
  structkuzuinternalidt_520094086 = (when declared(structkuzuinternalidt):
    structkuzuinternalidt
   else:
    structkuzuinternalidt_520094085)
  structkuzutimestamptzt_520094106 = (when declared(structkuzutimestamptzt):
    structkuzutimestamptzt
   else:
    structkuzutimestamptzt_520094105)
  structkuzuvalue_520094082 = (when declared(structkuzuvalue):
    structkuzuvalue
   else:
    structkuzuvalue_520094081)
  structarrowschema_520094050 = (when declared(structarrowschema):
    structarrowschema
   else:
    structarrowschema_520094049)
  enumkuzudatatypeid_520094126 = (when declared(enumkuzudatatypeid):
    enumkuzudatatypeid
   else:
    enumkuzudatatypeid_520094125)
  kuzudatatypeid_520094128 = (when declared(kuzudatatypeid):
    kuzudatatypeid
   else:
    kuzudatatypeid_520094127)
  enumkuzustate_520094130 = (when declared(enumkuzustate):
    enumkuzustate
   else:
    enumkuzustate_520094129)
  kuzuquerysummary_520094120 = (when declared(kuzuquerysummary):
    kuzuquerysummary
   else:
    kuzuquerysummary_520094119)
  kuzutimestamptzt_520094108 = (when declared(kuzutimestamptzt):
    kuzutimestamptzt
   else:
    kuzutimestamptzt_520094107)
  structkuzudatet_520094090 = (when declared(structkuzudatet):
    structkuzudatet
   else:
    structkuzudatet_520094089)
  kuzuconnection_520094064 = (when declared(kuzuconnection):
    kuzuconnection
   else:
    kuzuconnection_520094063)
  kuzustate_520094132 = (when declared(kuzustate):
    kuzustate
   else:
    kuzustate_520094131)
  structkuzutimestampmst_520094098 = (when declared(structkuzutimestampmst):
    structkuzutimestampmst
   else:
    structkuzutimestampmst_520094097)
  kuzuintervalt_520094116 = (when declared(kuzuintervalt):
    kuzuintervalt
   else:
    kuzuintervalt_520094115)
  structkuzutimestampsect_520094102 = (when declared(structkuzutimestampsect):
    structkuzutimestampsect
   else:
    structkuzutimestampsect_520094101)
  structkuzupreparedstatement_520094066 = (when declared(
      structkuzupreparedstatement):
    structkuzupreparedstatement
   else:
    structkuzupreparedstatement_520094065)
  structkuzulogicaltype_520094078 = (when declared(structkuzulogicaltype):
    structkuzulogicaltype
   else:
    structkuzulogicaltype_520094077)
  kuzupreparedstatement_520094068 = (when declared(kuzupreparedstatement):
    kuzupreparedstatement
   else:
    kuzupreparedstatement_520094067)
  kuzuflattuple_520094076 = (when declared(kuzuflattuple):
    kuzuflattuple
   else:
    kuzuflattuple_520094075)
  kuzutimestampmst_520094100 = (when declared(kuzutimestampmst):
    kuzutimestampmst
   else:
    kuzutimestampmst_520094099)
  structkuzuintervalt_520094114 = (when declared(structkuzuintervalt):
    structkuzuintervalt
   else:
    structkuzuintervalt_520094113)
  structkuzuquerysummary_520094118 = (when declared(structkuzuquerysummary):
    structkuzuquerysummary
   else:
    structkuzuquerysummary_520094117)
  structkuzuint128t_520094122 = (when declared(structkuzuint128t):
    structkuzuint128t
   else:
    structkuzuint128t_520094121)
  kuzudatet_520094092 = (when declared(kuzudatet):
    kuzudatet
   else:
    kuzudatet_520094091)
  kuzuint128t_520094124 = (when declared(kuzuint128t):
    kuzuint128t
   else:
    kuzuint128t_520094123)
  kuzulogicaltype_520094080 = (when declared(kuzulogicaltype):
    kuzulogicaltype
   else:
    kuzulogicaltype_520094079)
  structkuzuqueryresult_520094070 = (when declared(structkuzuqueryresult):
    structkuzuqueryresult
   else:
    structkuzuqueryresult_520094069)
  structkuzuconnection_520094062 = (when declared(structkuzuconnection):
    structkuzuconnection
   else:
    structkuzuconnection_520094061)
  structkuzutimestampnst_520094094 = (when declared(structkuzutimestampnst):
    structkuzutimestampnst
   else:
    structkuzutimestampnst_520094093)
  structtm_520094141 = (when declared(structtm):
    structtm
   else:
    structtm_520094140)
  structkuzudatabase_520094058 = (when declared(structkuzudatabase):
    structkuzudatabase
   else:
    structkuzudatabase_520094057)
  structkuzuflattuple_520094074 = (when declared(structkuzuflattuple):
    structkuzuflattuple
   else:
    structkuzuflattuple_520094073)
  kuzusystemconfig_520094056 = (when declared(kuzusystemconfig):
    kuzusystemconfig
   else:
    kuzusystemconfig_520094055)
  kuzuvalue_520094084 = (when declared(kuzuvalue):
    kuzuvalue
   else:
    kuzuvalue_520094083)
  structkuzutimestampt_520094110 = (when declared(structkuzutimestampt):
    structkuzutimestampt
   else:
    structkuzutimestampt_520094109)
  kuzuinternalidt_520094088 = (when declared(kuzuinternalidt):
    kuzuinternalidt
   else:
    kuzuinternalidt_520094087)
  kuzutimestampsect_520094104 = (when declared(kuzutimestampsect):
    kuzutimestampsect
   else:
    kuzutimestampsect_520094103)
  kuzuqueryresult_520094072 = (when declared(kuzuqueryresult):
    kuzuqueryresult
   else:
    kuzuqueryresult_520094071)
  kuzutimestampnst_520094096 = (when declared(kuzutimestampnst):
    kuzutimestampnst
   else:
    kuzutimestampnst_520094095)
  kuzutimestampt_520094112 = (when declared(kuzutimestampt):
    kuzutimestampt
   else:
    kuzutimestampt_520094111)
when not declared(structarrowarray):
  type
    structarrowarray* = structarrowarray_520094051
else:
  static :
    hint("Declaration of " & "structarrowarray" &
        " already exists, not redeclaring")
when not declared(structkuzusystemconfig):
  type
    structkuzusystemconfig* = structkuzusystemconfig_520094053
else:
  static :
    hint("Declaration of " & "structkuzusystemconfig" &
        " already exists, not redeclaring")
when not declared(kuzudatabase):
  type
    kuzudatabase* = kuzudatabase_520094059
else:
  static :
    hint("Declaration of " & "kuzudatabase" & " already exists, not redeclaring")
when not declared(structkuzuinternalidt):
  type
    structkuzuinternalidt* = structkuzuinternalidt_520094085
else:
  static :
    hint("Declaration of " & "structkuzuinternalidt" &
        " already exists, not redeclaring")
when not declared(structkuzutimestamptzt):
  type
    structkuzutimestamptzt* = structkuzutimestamptzt_520094105
else:
  static :
    hint("Declaration of " & "structkuzutimestamptzt" &
        " already exists, not redeclaring")
when not declared(structkuzuvalue):
  type
    structkuzuvalue* = structkuzuvalue_520094081
else:
  static :
    hint("Declaration of " & "structkuzuvalue" &
        " already exists, not redeclaring")
when not declared(structarrowschema):
  type
    structarrowschema* = structarrowschema_520094049
else:
  static :
    hint("Declaration of " & "structarrowschema" &
        " already exists, not redeclaring")
when not declared(kuzudatatypeid):
  type
    kuzudatatypeid* = kuzudatatypeid_520094127
else:
  static :
    hint("Declaration of " & "kuzudatatypeid" &
        " already exists, not redeclaring")
when not declared(kuzuquerysummary):
  type
    kuzuquerysummary* = kuzuquerysummary_520094119
else:
  static :
    hint("Declaration of " & "kuzuquerysummary" &
        " already exists, not redeclaring")
when not declared(kuzutimestamptzt):
  type
    kuzutimestamptzt* = kuzutimestamptzt_520094107
else:
  static :
    hint("Declaration of " & "kuzutimestamptzt" &
        " already exists, not redeclaring")
when not declared(structkuzudatet):
  type
    structkuzudatet* = structkuzudatet_520094089
else:
  static :
    hint("Declaration of " & "structkuzudatet" &
        " already exists, not redeclaring")
when not declared(kuzuconnection):
  type
    kuzuconnection* = kuzuconnection_520094063
else:
  static :
    hint("Declaration of " & "kuzuconnection" &
        " already exists, not redeclaring")
when not declared(kuzustate):
  type
    kuzustate* = kuzustate_520094131
else:
  static :
    hint("Declaration of " & "kuzustate" & " already exists, not redeclaring")
when not declared(structkuzutimestampmst):
  type
    structkuzutimestampmst* = structkuzutimestampmst_520094097
else:
  static :
    hint("Declaration of " & "structkuzutimestampmst" &
        " already exists, not redeclaring")
when not declared(kuzuintervalt):
  type
    kuzuintervalt* = kuzuintervalt_520094115
else:
  static :
    hint("Declaration of " & "kuzuintervalt" &
        " already exists, not redeclaring")
when not declared(structkuzutimestampsect):
  type
    structkuzutimestampsect* = structkuzutimestampsect_520094101
else:
  static :
    hint("Declaration of " & "structkuzutimestampsect" &
        " already exists, not redeclaring")
when not declared(structkuzupreparedstatement):
  type
    structkuzupreparedstatement* = structkuzupreparedstatement_520094065
else:
  static :
    hint("Declaration of " & "structkuzupreparedstatement" &
        " already exists, not redeclaring")
when not declared(structkuzulogicaltype):
  type
    structkuzulogicaltype* = structkuzulogicaltype_520094077
else:
  static :
    hint("Declaration of " & "structkuzulogicaltype" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatement):
  type
    kuzupreparedstatement* = kuzupreparedstatement_520094067
else:
  static :
    hint("Declaration of " & "kuzupreparedstatement" &
        " already exists, not redeclaring")
when not declared(kuzuflattuple):
  type
    kuzuflattuple* = kuzuflattuple_520094075
else:
  static :
    hint("Declaration of " & "kuzuflattuple" &
        " already exists, not redeclaring")
when not declared(kuzutimestampmst):
  type
    kuzutimestampmst* = kuzutimestampmst_520094099
else:
  static :
    hint("Declaration of " & "kuzutimestampmst" &
        " already exists, not redeclaring")
when not declared(structkuzuintervalt):
  type
    structkuzuintervalt* = structkuzuintervalt_520094113
else:
  static :
    hint("Declaration of " & "structkuzuintervalt" &
        " already exists, not redeclaring")
when not declared(structkuzuquerysummary):
  type
    structkuzuquerysummary* = structkuzuquerysummary_520094117
else:
  static :
    hint("Declaration of " & "structkuzuquerysummary" &
        " already exists, not redeclaring")
when not declared(structkuzuint128t):
  type
    structkuzuint128t* = structkuzuint128t_520094121
else:
  static :
    hint("Declaration of " & "structkuzuint128t" &
        " already exists, not redeclaring")
when not declared(kuzudatet):
  type
    kuzudatet* = kuzudatet_520094091
else:
  static :
    hint("Declaration of " & "kuzudatet" & " already exists, not redeclaring")
when not declared(kuzuint128t):
  type
    kuzuint128t* = kuzuint128t_520094123
else:
  static :
    hint("Declaration of " & "kuzuint128t" & " already exists, not redeclaring")
when not declared(kuzulogicaltype):
  type
    kuzulogicaltype* = kuzulogicaltype_520094079
else:
  static :
    hint("Declaration of " & "kuzulogicaltype" &
        " already exists, not redeclaring")
when not declared(structkuzuqueryresult):
  type
    structkuzuqueryresult* = structkuzuqueryresult_520094069
else:
  static :
    hint("Declaration of " & "structkuzuqueryresult" &
        " already exists, not redeclaring")
when not declared(structkuzuconnection):
  type
    structkuzuconnection* = structkuzuconnection_520094061
else:
  static :
    hint("Declaration of " & "structkuzuconnection" &
        " already exists, not redeclaring")
when not declared(structkuzutimestampnst):
  type
    structkuzutimestampnst* = structkuzutimestampnst_520094093
else:
  static :
    hint("Declaration of " & "structkuzutimestampnst" &
        " already exists, not redeclaring")
when not declared(structtm):
  type
    structtm* = structtm_520094140
else:
  static :
    hint("Declaration of " & "structtm" & " already exists, not redeclaring")
when not declared(structkuzudatabase):
  type
    structkuzudatabase* = structkuzudatabase_520094057
else:
  static :
    hint("Declaration of " & "structkuzudatabase" &
        " already exists, not redeclaring")
when not declared(structkuzuflattuple):
  type
    structkuzuflattuple* = structkuzuflattuple_520094073
else:
  static :
    hint("Declaration of " & "structkuzuflattuple" &
        " already exists, not redeclaring")
when not declared(kuzusystemconfig):
  type
    kuzusystemconfig* = kuzusystemconfig_520094055
else:
  static :
    hint("Declaration of " & "kuzusystemconfig" &
        " already exists, not redeclaring")
when not declared(kuzuvalue):
  type
    kuzuvalue* = kuzuvalue_520094083
else:
  static :
    hint("Declaration of " & "kuzuvalue" & " already exists, not redeclaring")
when not declared(structkuzutimestampt):
  type
    structkuzutimestampt* = structkuzutimestampt_520094109
else:
  static :
    hint("Declaration of " & "structkuzutimestampt" &
        " already exists, not redeclaring")
when not declared(kuzuinternalidt):
  type
    kuzuinternalidt* = kuzuinternalidt_520094087
else:
  static :
    hint("Declaration of " & "kuzuinternalidt" &
        " already exists, not redeclaring")
when not declared(kuzutimestampsect):
  type
    kuzutimestampsect* = kuzutimestampsect_520094103
else:
  static :
    hint("Declaration of " & "kuzutimestampsect" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresult):
  type
    kuzuqueryresult* = kuzuqueryresult_520094071
else:
  static :
    hint("Declaration of " & "kuzuqueryresult" &
        " already exists, not redeclaring")
when not declared(kuzutimestampnst):
  type
    kuzutimestampnst* = kuzutimestampnst_520094095
else:
  static :
    hint("Declaration of " & "kuzutimestampnst" &
        " already exists, not redeclaring")
when not declared(kuzutimestampt):
  type
    kuzutimestampt* = kuzutimestampt_520094111
else:
  static :
    hint("Declaration of " & "kuzutimestampt" &
        " already exists, not redeclaring")
when not declared(Arrowflagdictionaryordered):
  when 1 is static:
    const
      Arrowflagdictionaryordered* = 1 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:60:9
  else:
    let Arrowflagdictionaryordered* = 1 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:60:9
else:
  static :
    hint("Declaration of " & "Arrowflagdictionaryordered" &
        " already exists, not redeclaring")
when not declared(Arrowflagnullable):
  when 2 is static:
    const
      Arrowflagnullable* = 2 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:61:9
  else:
    let Arrowflagnullable* = 2 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:61:9
else:
  static :
    hint("Declaration of " & "Arrowflagnullable" &
        " already exists, not redeclaring")
when not declared(Arrowflagmapkeyssorted):
  when 4 is static:
    const
      Arrowflagmapkeyssorted* = 4 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:62:9
  else:
    let Arrowflagmapkeyssorted* = 4 ## Generated based on /home/jose/src/nimlang/kuzudb.nim/src/kuzu-master/src/include/c_api/kuzu.h:62:9
else:
  static :
    hint("Declaration of " & "Arrowflagmapkeyssorted" &
        " already exists, not redeclaring")
when not declared(kuzudatabaseinit):
  proc kuzudatabaseinit*(databasepath: cstring; systemconfig: kuzusystemconfig_520094056;
                         outdatabase: ptr kuzudatabase_520094060): kuzustate_520094132 {.
      cdecl, importc: "kuzu_database_init".}
else:
  static :
    hint("Declaration of " & "kuzudatabaseinit" &
        " already exists, not redeclaring")
when not declared(kuzudatabasedestroy):
  proc kuzudatabasedestroy*(database: ptr kuzudatabase_520094060): void {.cdecl,
      importc: "kuzu_database_destroy".}
else:
  static :
    hint("Declaration of " & "kuzudatabasedestroy" &
        " already exists, not redeclaring")
when not declared(kuzudefaultsystemconfig):
  proc kuzudefaultsystemconfig*(): kuzusystemconfig_520094056 {.cdecl,
      importc: "kuzu_default_system_config".}
else:
  static :
    hint("Declaration of " & "kuzudefaultsystemconfig" &
        " already exists, not redeclaring")
when not declared(kuzuconnectioninit):
  proc kuzuconnectioninit*(database: ptr kuzudatabase_520094060;
                           outconnection: ptr kuzuconnection_520094064): kuzustate_520094132 {.
      cdecl, importc: "kuzu_connection_init".}
else:
  static :
    hint("Declaration of " & "kuzuconnectioninit" &
        " already exists, not redeclaring")
when not declared(kuzuconnectiondestroy):
  proc kuzuconnectiondestroy*(connection: ptr kuzuconnection_520094064): void {.
      cdecl, importc: "kuzu_connection_destroy".}
else:
  static :
    hint("Declaration of " & "kuzuconnectiondestroy" &
        " already exists, not redeclaring")
when not declared(kuzuconnectionsetmaxnumthreadforexec):
  proc kuzuconnectionsetmaxnumthreadforexec*(connection: ptr kuzuconnection_520094064;
      numthreads: uint64): kuzustate_520094132 {.cdecl,
      importc: "kuzu_connection_set_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "kuzuconnectionsetmaxnumthreadforexec" &
        " already exists, not redeclaring")
when not declared(kuzuconnectiongetmaxnumthreadforexec):
  proc kuzuconnectiongetmaxnumthreadforexec*(connection: ptr kuzuconnection_520094064;
      outresult: ptr uint64): kuzustate_520094132 {.cdecl,
      importc: "kuzu_connection_get_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "kuzuconnectiongetmaxnumthreadforexec" &
        " already exists, not redeclaring")
when not declared(kuzuconnectionquery):
  proc kuzuconnectionquery*(connection: ptr kuzuconnection_520094064;
                            query: cstring; outqueryresult: ptr kuzuqueryresult_520094072): kuzustate_520094132 {.
      cdecl, importc: "kuzu_connection_query".}
else:
  static :
    hint("Declaration of " & "kuzuconnectionquery" &
        " already exists, not redeclaring")
when not declared(kuzuconnectionprepare):
  proc kuzuconnectionprepare*(connection: ptr kuzuconnection_520094064;
                              query: cstring;
                              outpreparedstatement: ptr kuzupreparedstatement_520094068): kuzustate_520094132 {.
      cdecl, importc: "kuzu_connection_prepare".}
else:
  static :
    hint("Declaration of " & "kuzuconnectionprepare" &
        " already exists, not redeclaring")
when not declared(kuzuconnectionexecute):
  proc kuzuconnectionexecute*(connection: ptr kuzuconnection_520094064;
                              preparedstatement: ptr kuzupreparedstatement_520094068;
                              outqueryresult: ptr kuzuqueryresult_520094072): kuzustate_520094132 {.
      cdecl, importc: "kuzu_connection_execute".}
else:
  static :
    hint("Declaration of " & "kuzuconnectionexecute" &
        " already exists, not redeclaring")
when not declared(kuzuconnectioninterrupt):
  proc kuzuconnectioninterrupt*(connection: ptr kuzuconnection_520094064): void {.
      cdecl, importc: "kuzu_connection_interrupt".}
else:
  static :
    hint("Declaration of " & "kuzuconnectioninterrupt" &
        " already exists, not redeclaring")
when not declared(kuzuconnectionsetquerytimeout):
  proc kuzuconnectionsetquerytimeout*(connection: ptr kuzuconnection_520094064;
                                      timeoutinms: uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_connection_set_query_timeout".}
else:
  static :
    hint("Declaration of " & "kuzuconnectionsetquerytimeout" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementdestroy):
  proc kuzupreparedstatementdestroy*(preparedstatement: ptr kuzupreparedstatement_520094068): void {.
      cdecl, importc: "kuzu_prepared_statement_destroy".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementdestroy" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementissuccess):
  proc kuzupreparedstatementissuccess*(preparedstatement: ptr kuzupreparedstatement_520094068): bool {.
      cdecl, importc: "kuzu_prepared_statement_is_success".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementissuccess" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementgeterrormessage):
  proc kuzupreparedstatementgeterrormessage*(
      preparedstatement: ptr kuzupreparedstatement_520094068): cstring {.cdecl,
      importc: "kuzu_prepared_statement_get_error_message".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementgeterrormessage" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindbool):
  proc kuzupreparedstatementbindbool*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                      paramname: cstring; value: bool): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_bool".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindbool" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindint64):
  proc kuzupreparedstatementbindint64*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: int64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_int64".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindint64" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindint32):
  proc kuzupreparedstatementbindint32*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: int32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_int32".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindint32" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindint16):
  proc kuzupreparedstatementbindint16*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: int16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_int16".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindint16" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindint8):
  proc kuzupreparedstatementbindint8*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                      paramname: cstring; value: int8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_int8".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindint8" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinduint64):
  proc kuzupreparedstatementbinduint64*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                        paramname: cstring; value: uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_uint64".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinduint64" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinduint32):
  proc kuzupreparedstatementbinduint32*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                        paramname: cstring; value: uint32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_uint32".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinduint32" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinduint16):
  proc kuzupreparedstatementbinduint16*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                        paramname: cstring; value: uint16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_uint16".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinduint16" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinduint8):
  proc kuzupreparedstatementbinduint8*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: uint8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_uint8".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinduint8" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinddouble):
  proc kuzupreparedstatementbinddouble*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                        paramname: cstring; value: cdouble): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_double".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinddouble" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindfloat):
  proc kuzupreparedstatementbindfloat*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: cfloat): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_float".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindfloat" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbinddate):
  proc kuzupreparedstatementbinddate*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                      paramname: cstring; value: kuzudatet_520094092): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_date".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbinddate" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindtimestampns):
  proc kuzupreparedstatementbindtimestampns*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzutimestampnst_520094096): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindtimestampns" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindtimestampsec):
  proc kuzupreparedstatementbindtimestampsec*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzutimestampsect_520094104): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindtimestampsec" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindtimestamptz):
  proc kuzupreparedstatementbindtimestamptz*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzutimestamptzt_520094108): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindtimestamptz" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindtimestampms):
  proc kuzupreparedstatementbindtimestampms*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzutimestampmst_520094100): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindtimestampms" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindtimestamp):
  proc kuzupreparedstatementbindtimestamp*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzutimestampt_520094112): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_timestamp".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindtimestamp" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindinterval):
  proc kuzupreparedstatementbindinterval*(
      preparedstatement: ptr kuzupreparedstatement_520094068;
      paramname: cstring; value: kuzuintervalt_520094116): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_interval".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindinterval" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindstring):
  proc kuzupreparedstatementbindstring*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                        paramname: cstring; value: cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_string".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindstring" &
        " already exists, not redeclaring")
when not declared(kuzupreparedstatementbindvalue):
  proc kuzupreparedstatementbindvalue*(preparedstatement: ptr kuzupreparedstatement_520094068;
                                       paramname: cstring; value: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_prepared_statement_bind_value".}
else:
  static :
    hint("Declaration of " & "kuzupreparedstatementbindvalue" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultdestroy):
  proc kuzuqueryresultdestroy*(queryresult: ptr kuzuqueryresult_520094072): void {.
      cdecl, importc: "kuzu_query_result_destroy".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultdestroy" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultissuccess):
  proc kuzuqueryresultissuccess*(queryresult: ptr kuzuqueryresult_520094072): bool {.
      cdecl, importc: "kuzu_query_result_is_success".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultissuccess" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgeterrormessage):
  proc kuzuqueryresultgeterrormessage*(queryresult: ptr kuzuqueryresult_520094072): cstring {.
      cdecl, importc: "kuzu_query_result_get_error_message".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgeterrormessage" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetnumcolumns):
  proc kuzuqueryresultgetnumcolumns*(queryresult: ptr kuzuqueryresult_520094072): uint64 {.
      cdecl, importc: "kuzu_query_result_get_num_columns".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetnumcolumns" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetcolumnname):
  proc kuzuqueryresultgetcolumnname*(queryresult: ptr kuzuqueryresult_520094072;
                                     index: uint64; outcolumnname: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_column_name".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetcolumnname" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetcolumndatatype):
  proc kuzuqueryresultgetcolumndatatype*(queryresult: ptr kuzuqueryresult_520094072;
      index: uint64; outcolumndatatype: ptr kuzulogicaltype_520094080): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_column_data_type".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetcolumndatatype" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetnumtuples):
  proc kuzuqueryresultgetnumtuples*(queryresult: ptr kuzuqueryresult_520094072): uint64 {.
      cdecl, importc: "kuzu_query_result_get_num_tuples".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetnumtuples" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetquerysummary):
  proc kuzuqueryresultgetquerysummary*(queryresult: ptr kuzuqueryresult_520094072;
                                       outquerysummary: ptr kuzuquerysummary_520094120): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_query_summary".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetquerysummary" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresulthasnext):
  proc kuzuqueryresulthasnext*(queryresult: ptr kuzuqueryresult_520094072): bool {.
      cdecl, importc: "kuzu_query_result_has_next".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresulthasnext" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetnext):
  proc kuzuqueryresultgetnext*(queryresult: ptr kuzuqueryresult_520094072;
                               outflattuple: ptr kuzuflattuple_520094076): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_next".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetnext" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresulthasnextqueryresult):
  proc kuzuqueryresulthasnextqueryresult*(queryresult: ptr kuzuqueryresult_520094072): bool {.
      cdecl, importc: "kuzu_query_result_has_next_query_result".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresulthasnextqueryresult" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetnextqueryresult):
  proc kuzuqueryresultgetnextqueryresult*(queryresult: ptr kuzuqueryresult_520094072;
      outnextqueryresult: ptr kuzuqueryresult_520094072): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_next_query_result".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetnextqueryresult" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresulttostring):
  proc kuzuqueryresulttostring*(queryresult: ptr kuzuqueryresult_520094072): cstring {.
      cdecl, importc: "kuzu_query_result_to_string".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresulttostring" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultresetiterator):
  proc kuzuqueryresultresetiterator*(queryresult: ptr kuzuqueryresult_520094072): void {.
      cdecl, importc: "kuzu_query_result_reset_iterator".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultresetiterator" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetarrowschema):
  proc kuzuqueryresultgetarrowschema*(queryresult: ptr kuzuqueryresult_520094072;
                                      outschema: ptr structarrowschema_520094050): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_arrow_schema".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetarrowschema" &
        " already exists, not redeclaring")
when not declared(kuzuqueryresultgetnextarrowchunk):
  proc kuzuqueryresultgetnextarrowchunk*(queryresult: ptr kuzuqueryresult_520094072;
      chunksize: int64; outarrowarray: ptr structarrowarray_520094052): kuzustate_520094132 {.
      cdecl, importc: "kuzu_query_result_get_next_arrow_chunk".}
else:
  static :
    hint("Declaration of " & "kuzuqueryresultgetnextarrowchunk" &
        " already exists, not redeclaring")
when not declared(kuzuflattupledestroy):
  proc kuzuflattupledestroy*(flattuple: ptr kuzuflattuple_520094076): void {.
      cdecl, importc: "kuzu_flat_tuple_destroy".}
else:
  static :
    hint("Declaration of " & "kuzuflattupledestroy" &
        " already exists, not redeclaring")
when not declared(kuzuflattuplegetvalue):
  proc kuzuflattuplegetvalue*(flattuple: ptr kuzuflattuple_520094076;
                              index: uint64; outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_flat_tuple_get_value".}
else:
  static :
    hint("Declaration of " & "kuzuflattuplegetvalue" &
        " already exists, not redeclaring")
when not declared(kuzuflattupletostring):
  proc kuzuflattupletostring*(flattuple: ptr kuzuflattuple_520094076): cstring {.
      cdecl, importc: "kuzu_flat_tuple_to_string".}
else:
  static :
    hint("Declaration of " & "kuzuflattupletostring" &
        " already exists, not redeclaring")
when not declared(kuzudatatypecreate):
  proc kuzudatatypecreate*(id: kuzudatatypeid_520094128;
                           childtype: ptr kuzulogicaltype_520094080;
                           numelementsinarray: uint64;
                           outtype: ptr kuzulogicaltype_520094080): void {.
      cdecl, importc: "kuzu_data_type_create".}
else:
  static :
    hint("Declaration of " & "kuzudatatypecreate" &
        " already exists, not redeclaring")
when not declared(kuzudatatypeclone):
  proc kuzudatatypeclone*(datatype: ptr kuzulogicaltype_520094080;
                          outtype: ptr kuzulogicaltype_520094080): void {.cdecl,
      importc: "kuzu_data_type_clone".}
else:
  static :
    hint("Declaration of " & "kuzudatatypeclone" &
        " already exists, not redeclaring")
when not declared(kuzudatatypedestroy):
  proc kuzudatatypedestroy*(datatype: ptr kuzulogicaltype_520094080): void {.
      cdecl, importc: "kuzu_data_type_destroy".}
else:
  static :
    hint("Declaration of " & "kuzudatatypedestroy" &
        " already exists, not redeclaring")
when not declared(kuzudatatypeequals):
  proc kuzudatatypeequals*(datatype1: ptr kuzulogicaltype_520094080;
                           datatype2: ptr kuzulogicaltype_520094080): bool {.
      cdecl, importc: "kuzu_data_type_equals".}
else:
  static :
    hint("Declaration of " & "kuzudatatypeequals" &
        " already exists, not redeclaring")
when not declared(kuzudatatypegetid):
  proc kuzudatatypegetid*(datatype: ptr kuzulogicaltype_520094080): kuzudatatypeid_520094128 {.
      cdecl, importc: "kuzu_data_type_get_id".}
else:
  static :
    hint("Declaration of " & "kuzudatatypegetid" &
        " already exists, not redeclaring")
when not declared(kuzudatatypegetnumelementsinarray):
  proc kuzudatatypegetnumelementsinarray*(datatype: ptr kuzulogicaltype_520094080;
      outresult: ptr uint64): kuzustate_520094132 {.cdecl,
      importc: "kuzu_data_type_get_num_elements_in_array".}
else:
  static :
    hint("Declaration of " & "kuzudatatypegetnumelementsinarray" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatenull):
  proc kuzuvaluecreatenull*(): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_null".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatenull" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatenullwithdatatype):
  proc kuzuvaluecreatenullwithdatatype*(datatype: ptr kuzulogicaltype_520094080): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_null_with_data_type".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatenullwithdatatype" &
        " already exists, not redeclaring")
when not declared(kuzuvalueisnull):
  proc kuzuvalueisnull*(value: ptr kuzuvalue_520094084): bool {.cdecl,
      importc: "kuzu_value_is_null".}
else:
  static :
    hint("Declaration of " & "kuzuvalueisnull" &
        " already exists, not redeclaring")
when not declared(kuzuvaluesetnull):
  proc kuzuvaluesetnull*(value: ptr kuzuvalue_520094084; isnull: bool): void {.
      cdecl, importc: "kuzu_value_set_null".}
else:
  static :
    hint("Declaration of " & "kuzuvaluesetnull" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatedefault):
  proc kuzuvaluecreatedefault*(datatype: ptr kuzulogicaltype_520094080): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_default".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatedefault" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatebool):
  proc kuzuvaluecreatebool*(val: bool): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_bool".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatebool" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateint8):
  proc kuzuvaluecreateint8*(val: int8): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_int8".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateint8" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateint16):
  proc kuzuvaluecreateint16*(val: int16): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_int16".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateint16" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateint32):
  proc kuzuvaluecreateint32*(val: int32): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_int32".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateint32" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateint64):
  proc kuzuvaluecreateint64*(val: int64): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_int64".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateint64" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateuint8):
  proc kuzuvaluecreateuint8*(val: uint8): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_uint8".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateuint8" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateuint16):
  proc kuzuvaluecreateuint16*(val: uint16): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_uint16".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateuint16" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateuint32):
  proc kuzuvaluecreateuint32*(val: uint32): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_uint32".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateuint32" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateuint64):
  proc kuzuvaluecreateuint64*(val: uint64): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_uint64".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateuint64" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateint128):
  proc kuzuvaluecreateint128*(val: kuzuint128t_520094124): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_int128".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateint128" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatefloat):
  proc kuzuvaluecreatefloat*(val: cfloat): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_float".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatefloat" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatedouble):
  proc kuzuvaluecreatedouble*(val: cdouble): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_double".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatedouble" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateinternalid):
  proc kuzuvaluecreateinternalid*(val: kuzuinternalidt_520094088): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_internal_id".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateinternalid" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatedate):
  proc kuzuvaluecreatedate*(val: kuzudatet_520094092): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_date".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatedate" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatetimestampns):
  proc kuzuvaluecreatetimestampns*(val: kuzutimestampnst_520094096): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatetimestampns" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatetimestampms):
  proc kuzuvaluecreatetimestampms*(val: kuzutimestampmst_520094100): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatetimestampms" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatetimestampsec):
  proc kuzuvaluecreatetimestampsec*(val: kuzutimestampsect_520094104): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatetimestampsec" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatetimestamptz):
  proc kuzuvaluecreatetimestamptz*(val: kuzutimestamptzt_520094108): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatetimestamptz" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatetimestamp):
  proc kuzuvaluecreatetimestamp*(val: kuzutimestampt_520094112): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_timestamp".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatetimestamp" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreateinterval):
  proc kuzuvaluecreateinterval*(val: kuzuintervalt_520094116): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_create_interval".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreateinterval" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecreatestring):
  proc kuzuvaluecreatestring*(val: cstring): ptr kuzuvalue_520094084 {.cdecl,
      importc: "kuzu_value_create_string".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecreatestring" &
        " already exists, not redeclaring")
when not declared(kuzuvalueclone):
  proc kuzuvalueclone*(value: ptr kuzuvalue_520094084): ptr kuzuvalue_520094084 {.
      cdecl, importc: "kuzu_value_clone".}
else:
  static :
    hint("Declaration of " & "kuzuvalueclone" &
        " already exists, not redeclaring")
when not declared(kuzuvaluecopy):
  proc kuzuvaluecopy*(value: ptr kuzuvalue_520094084; other: ptr kuzuvalue_520094084): void {.
      cdecl, importc: "kuzu_value_copy".}
else:
  static :
    hint("Declaration of " & "kuzuvaluecopy" &
        " already exists, not redeclaring")
when not declared(kuzuvaluedestroy):
  proc kuzuvaluedestroy*(value: ptr kuzuvalue_520094084): void {.cdecl,
      importc: "kuzu_value_destroy".}
else:
  static :
    hint("Declaration of " & "kuzuvaluedestroy" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetlistsize):
  proc kuzuvaluegetlistsize*(value: ptr kuzuvalue_520094084;
                             outresult: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_list_size".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetlistsize" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetlistelement):
  proc kuzuvaluegetlistelement*(value: ptr kuzuvalue_520094084; index: uint64;
                                outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_list_element".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetlistelement" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetstructnumfields):
  proc kuzuvaluegetstructnumfields*(value: ptr kuzuvalue_520094084;
                                    outresult: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_struct_num_fields".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetstructnumfields" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetstructfieldname):
  proc kuzuvaluegetstructfieldname*(value: ptr kuzuvalue_520094084;
                                    index: uint64; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_struct_field_name".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetstructfieldname" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetstructfieldvalue):
  proc kuzuvaluegetstructfieldvalue*(value: ptr kuzuvalue_520094084;
                                     index: uint64; outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_struct_field_value".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetstructfieldvalue" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetrecursiverelnodelist):
  proc kuzuvaluegetrecursiverelnodelist*(value: ptr kuzuvalue_520094084;
      outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.cdecl,
      importc: "kuzu_value_get_recursive_rel_node_list".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetrecursiverelnodelist" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetrecursiverelrellist):
  proc kuzuvaluegetrecursiverelrellist*(value: ptr kuzuvalue_520094084;
                                        outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_recursive_rel_rel_list".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetrecursiverelrellist" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetdatatype):
  proc kuzuvaluegetdatatype*(value: ptr kuzuvalue_520094084;
                             outtype: ptr kuzulogicaltype_520094080): void {.
      cdecl, importc: "kuzu_value_get_data_type".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetdatatype" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetbool):
  proc kuzuvaluegetbool*(value: ptr kuzuvalue_520094084; outresult: ptr bool): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_bool".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetbool" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetint8):
  proc kuzuvaluegetint8*(value: ptr kuzuvalue_520094084; outresult: ptr int8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_int8".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetint8" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetint16):
  proc kuzuvaluegetint16*(value: ptr kuzuvalue_520094084; outresult: ptr int16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_int16".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetint16" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetint32):
  proc kuzuvaluegetint32*(value: ptr kuzuvalue_520094084; outresult: ptr int32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_int32".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetint32" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetint64):
  proc kuzuvaluegetint64*(value: ptr kuzuvalue_520094084; outresult: ptr int64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_int64".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetint64" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetuint8):
  proc kuzuvaluegetuint8*(value: ptr kuzuvalue_520094084; outresult: ptr uint8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_uint8".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetuint8" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetuint16):
  proc kuzuvaluegetuint16*(value: ptr kuzuvalue_520094084; outresult: ptr uint16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_uint16".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetuint16" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetuint32):
  proc kuzuvaluegetuint32*(value: ptr kuzuvalue_520094084; outresult: ptr uint32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_uint32".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetuint32" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetuint64):
  proc kuzuvaluegetuint64*(value: ptr kuzuvalue_520094084; outresult: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_uint64".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetuint64" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetint128):
  proc kuzuvaluegetint128*(value: ptr kuzuvalue_520094084;
                           outresult: ptr kuzuint128t_520094124): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_int128".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetint128" &
        " already exists, not redeclaring")
when not declared(kuzuint128tfromstring):
  proc kuzuint128tfromstring*(str: cstring; outresult: ptr kuzuint128t_520094124): kuzustate_520094132 {.
      cdecl, importc: "kuzu_int128_t_from_string".}
else:
  static :
    hint("Declaration of " & "kuzuint128tfromstring" &
        " already exists, not redeclaring")
when not declared(kuzuint128ttostring):
  proc kuzuint128ttostring*(val: kuzuint128t_520094124; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_int128_t_to_string".}
else:
  static :
    hint("Declaration of " & "kuzuint128ttostring" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetfloat):
  proc kuzuvaluegetfloat*(value: ptr kuzuvalue_520094084; outresult: ptr cfloat): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_float".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetfloat" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetdouble):
  proc kuzuvaluegetdouble*(value: ptr kuzuvalue_520094084;
                           outresult: ptr cdouble): kuzustate_520094132 {.cdecl,
      importc: "kuzu_value_get_double".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetdouble" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetinternalid):
  proc kuzuvaluegetinternalid*(value: ptr kuzuvalue_520094084;
                               outresult: ptr kuzuinternalidt_520094088): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_internal_id".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetinternalid" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetdate):
  proc kuzuvaluegetdate*(value: ptr kuzuvalue_520094084;
                         outresult: ptr kuzudatet_520094092): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_date".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetdate" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegettimestamp):
  proc kuzuvaluegettimestamp*(value: ptr kuzuvalue_520094084;
                              outresult: ptr kuzutimestampt_520094112): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_timestamp".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegettimestamp" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegettimestampns):
  proc kuzuvaluegettimestampns*(value: ptr kuzuvalue_520094084;
                                outresult: ptr kuzutimestampnst_520094096): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegettimestampns" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegettimestampms):
  proc kuzuvaluegettimestampms*(value: ptr kuzuvalue_520094084;
                                outresult: ptr kuzutimestampmst_520094100): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegettimestampms" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegettimestampsec):
  proc kuzuvaluegettimestampsec*(value: ptr kuzuvalue_520094084;
                                 outresult: ptr kuzutimestampsect_520094104): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegettimestampsec" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegettimestamptz):
  proc kuzuvaluegettimestamptz*(value: ptr kuzuvalue_520094084;
                                outresult: ptr kuzutimestamptzt_520094108): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegettimestamptz" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetinterval):
  proc kuzuvaluegetinterval*(value: ptr kuzuvalue_520094084;
                             outresult: ptr kuzuintervalt_520094116): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_interval".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetinterval" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetstring):
  proc kuzuvaluegetstring*(value: ptr kuzuvalue_520094084;
                           outresult: ptr cstring): kuzustate_520094132 {.cdecl,
      importc: "kuzu_value_get_string".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetstring" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetblob):
  proc kuzuvaluegetblob*(value: ptr kuzuvalue_520094084;
                         outresult: ptr ptr uint8): kuzustate_520094132 {.cdecl,
      importc: "kuzu_value_get_blob".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetblob" &
        " already exists, not redeclaring")
when not declared(kuzuvaluegetuuid):
  proc kuzuvaluegetuuid*(value: ptr kuzuvalue_520094084; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_value_get_uuid".}
else:
  static :
    hint("Declaration of " & "kuzuvaluegetuuid" &
        " already exists, not redeclaring")
when not declared(kuzuvaluetostring):
  proc kuzuvaluetostring*(value: ptr kuzuvalue_520094084): cstring {.cdecl,
      importc: "kuzu_value_to_string".}
else:
  static :
    hint("Declaration of " & "kuzuvaluetostring" &
        " already exists, not redeclaring")
when not declared(kuzunodevalgetidval):
  proc kuzunodevalgetidval*(nodeval: ptr kuzuvalue_520094084;
                            outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_get_id_val".}
else:
  static :
    hint("Declaration of " & "kuzunodevalgetidval" &
        " already exists, not redeclaring")
when not declared(kuzunodevalgetlabelval):
  proc kuzunodevalgetlabelval*(nodeval: ptr kuzuvalue_520094084;
                               outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "kuzunodevalgetlabelval" &
        " already exists, not redeclaring")
when not declared(kuzunodevalgetpropertysize):
  proc kuzunodevalgetpropertysize*(nodeval: ptr kuzuvalue_520094084;
                                   outvalue: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "kuzunodevalgetpropertysize" &
        " already exists, not redeclaring")
when not declared(kuzunodevalgetpropertynameat):
  proc kuzunodevalgetpropertynameat*(nodeval: ptr kuzuvalue_520094084;
                                     index: uint64; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "kuzunodevalgetpropertynameat" &
        " already exists, not redeclaring")
when not declared(kuzunodevalgetpropertyvalueat):
  proc kuzunodevalgetpropertyvalueat*(nodeval: ptr kuzuvalue_520094084;
                                      index: uint64; outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "kuzunodevalgetpropertyvalueat" &
        " already exists, not redeclaring")
when not declared(kuzunodevaltostring):
  proc kuzunodevaltostring*(nodeval: ptr kuzuvalue_520094084;
                            outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_node_val_to_string".}
else:
  static :
    hint("Declaration of " & "kuzunodevaltostring" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetsrcidval):
  proc kuzurelvalgetsrcidval*(relval: ptr kuzuvalue_520094084;
                              outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_src_id_val".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetsrcidval" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetdstidval):
  proc kuzurelvalgetdstidval*(relval: ptr kuzuvalue_520094084;
                              outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_dst_id_val".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetdstidval" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetlabelval):
  proc kuzurelvalgetlabelval*(relval: ptr kuzuvalue_520094084;
                              outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetlabelval" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetpropertysize):
  proc kuzurelvalgetpropertysize*(relval: ptr kuzuvalue_520094084;
                                  outvalue: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetpropertysize" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetpropertynameat):
  proc kuzurelvalgetpropertynameat*(relval: ptr kuzuvalue_520094084;
                                    index: uint64; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetpropertynameat" &
        " already exists, not redeclaring")
when not declared(kuzurelvalgetpropertyvalueat):
  proc kuzurelvalgetpropertyvalueat*(relval: ptr kuzuvalue_520094084;
                                     index: uint64; outvalue: ptr kuzuvalue_520094084): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rel_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "kuzurelvalgetpropertyvalueat" &
        " already exists, not redeclaring")
when not declared(kuzurelvaltostring):
  proc kuzurelvaltostring*(relval: ptr kuzuvalue_520094084;
                           outresult: ptr cstring): kuzustate_520094132 {.cdecl,
      importc: "kuzu_rel_val_to_string".}
else:
  static :
    hint("Declaration of " & "kuzurelvaltostring" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgettype):
  proc kuzurdfvariantgettype*(rdfvariant: ptr kuzuvalue_520094084;
                              outtype: ptr kuzudatatypeid_520094128): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_type".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgettype" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetstring):
  proc kuzurdfvariantgetstring*(rdfvariant: ptr kuzuvalue_520094084;
                                outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_string".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetstring" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetblob):
  proc kuzurdfvariantgetblob*(rdfvariant: ptr kuzuvalue_520094084;
                              outresult: ptr ptr uint8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_blob".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetblob" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetint64):
  proc kuzurdfvariantgetint64*(rdfvariant: ptr kuzuvalue_520094084;
                               outresult: ptr int64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_int64".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetint64" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetint32):
  proc kuzurdfvariantgetint32*(rdfvariant: ptr kuzuvalue_520094084;
                               outresult: ptr int32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_int32".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetint32" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetint16):
  proc kuzurdfvariantgetint16*(rdfvariant: ptr kuzuvalue_520094084;
                               outresult: ptr int16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_int16".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetint16" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetint8):
  proc kuzurdfvariantgetint8*(rdfvariant: ptr kuzuvalue_520094084;
                              outresult: ptr int8): kuzustate_520094132 {.cdecl,
      importc: "kuzu_rdf_variant_get_int8".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetint8" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetuint64):
  proc kuzurdfvariantgetuint64*(rdfvariant: ptr kuzuvalue_520094084;
                                outresult: ptr uint64): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_uint64".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetuint64" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetuint32):
  proc kuzurdfvariantgetuint32*(rdfvariant: ptr kuzuvalue_520094084;
                                outresult: ptr uint32): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_uint32".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetuint32" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetuint16):
  proc kuzurdfvariantgetuint16*(rdfvariant: ptr kuzuvalue_520094084;
                                outresult: ptr uint16): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_uint16".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetuint16" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetuint8):
  proc kuzurdfvariantgetuint8*(rdfvariant: ptr kuzuvalue_520094084;
                               outresult: ptr uint8): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_uint8".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetuint8" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetfloat):
  proc kuzurdfvariantgetfloat*(rdfvariant: ptr kuzuvalue_520094084;
                               outresult: ptr cfloat): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_float".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetfloat" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetdouble):
  proc kuzurdfvariantgetdouble*(rdfvariant: ptr kuzuvalue_520094084;
                                outresult: ptr cdouble): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_double".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetdouble" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetbool):
  proc kuzurdfvariantgetbool*(rdfvariant: ptr kuzuvalue_520094084;
                              outresult: ptr bool): kuzustate_520094132 {.cdecl,
      importc: "kuzu_rdf_variant_get_bool".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetbool" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetdate):
  proc kuzurdfvariantgetdate*(rdfvariant: ptr kuzuvalue_520094084;
                              outresult: ptr kuzudatet_520094092): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_date".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetdate" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgettimestamp):
  proc kuzurdfvariantgettimestamp*(rdfvariant: ptr kuzuvalue_520094084;
                                   outresult: ptr kuzutimestampt_520094112): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_timestamp".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgettimestamp" &
        " already exists, not redeclaring")
when not declared(kuzurdfvariantgetinterval):
  proc kuzurdfvariantgetinterval*(rdfvariant: ptr kuzuvalue_520094084;
                                  outresult: ptr kuzuintervalt_520094116): kuzustate_520094132 {.
      cdecl, importc: "kuzu_rdf_variant_get_interval".}
else:
  static :
    hint("Declaration of " & "kuzurdfvariantgetinterval" &
        " already exists, not redeclaring")
when not declared(kuzudestroystring):
  proc kuzudestroystring*(str: cstring): void {.cdecl,
      importc: "kuzu_destroy_string".}
else:
  static :
    hint("Declaration of " & "kuzudestroystring" &
        " already exists, not redeclaring")
when not declared(kuzudestroyblob):
  proc kuzudestroyblob*(blob: ptr uint8): void {.cdecl,
      importc: "kuzu_destroy_blob".}
else:
  static :
    hint("Declaration of " & "kuzudestroyblob" &
        " already exists, not redeclaring")
when not declared(kuzuquerysummarydestroy):
  proc kuzuquerysummarydestroy*(querysummary: ptr kuzuquerysummary_520094120): void {.
      cdecl, importc: "kuzu_query_summary_destroy".}
else:
  static :
    hint("Declaration of " & "kuzuquerysummarydestroy" &
        " already exists, not redeclaring")
when not declared(kuzuquerysummarygetcompilingtime):
  proc kuzuquerysummarygetcompilingtime*(querysummary: ptr kuzuquerysummary_520094120): cdouble {.
      cdecl, importc: "kuzu_query_summary_get_compiling_time".}
else:
  static :
    hint("Declaration of " & "kuzuquerysummarygetcompilingtime" &
        " already exists, not redeclaring")
when not declared(kuzuquerysummarygetexecutiontime):
  proc kuzuquerysummarygetexecutiontime*(querysummary: ptr kuzuquerysummary_520094120): cdouble {.
      cdecl, importc: "kuzu_query_summary_get_execution_time".}
else:
  static :
    hint("Declaration of " & "kuzuquerysummarygetexecutiontime" &
        " already exists, not redeclaring")
when not declared(kuzutimestampnstotm):
  proc kuzutimestampnstotm*(timestamp: kuzutimestampnst_520094096;
                            outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_ns_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampnstotm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampmstotm):
  proc kuzutimestampmstotm*(timestamp: kuzutimestampmst_520094100;
                            outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_ms_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampmstotm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampsectotm):
  proc kuzutimestampsectotm*(timestamp: kuzutimestampsect_520094104;
                             outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_sec_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampsectotm" &
        " already exists, not redeclaring")
when not declared(kuzutimestamptztotm):
  proc kuzutimestamptztotm*(timestamp: kuzutimestamptzt_520094108;
                            outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_tz_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestamptztotm" &
        " already exists, not redeclaring")
when not declared(kuzutimestamptotm):
  proc kuzutimestamptotm*(timestamp: kuzutimestampt_520094112;
                          outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestamptotm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampnsfromtm):
  proc kuzutimestampnsfromtm*(tm: structtm_520094141;
                              outresult: ptr kuzutimestampnst_520094096): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_ns_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampnsfromtm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampmsfromtm):
  proc kuzutimestampmsfromtm*(tm: structtm_520094141;
                              outresult: ptr kuzutimestampmst_520094100): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_ms_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampmsfromtm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampsecfromtm):
  proc kuzutimestampsecfromtm*(tm: structtm_520094141;
                               outresult: ptr kuzutimestampsect_520094104): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_sec_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampsecfromtm" &
        " already exists, not redeclaring")
when not declared(kuzutimestamptzfromtm):
  proc kuzutimestamptzfromtm*(tm: structtm_520094141;
                              outresult: ptr kuzutimestamptzt_520094108): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_tz_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestamptzfromtm" &
        " already exists, not redeclaring")
when not declared(kuzutimestampfromtm):
  proc kuzutimestampfromtm*(tm: structtm_520094141;
                            outresult: ptr kuzutimestampt_520094112): kuzustate_520094132 {.
      cdecl, importc: "kuzu_timestamp_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzutimestampfromtm" &
        " already exists, not redeclaring")
when not declared(kuzudatetostring):
  proc kuzudatetostring*(date: kuzudatet_520094092; outresult: ptr cstring): kuzustate_520094132 {.
      cdecl, importc: "kuzu_date_to_string".}
else:
  static :
    hint("Declaration of " & "kuzudatetostring" &
        " already exists, not redeclaring")
when not declared(kuzudatefromstring):
  proc kuzudatefromstring*(str: cstring; outresult: ptr kuzudatet_520094092): kuzustate_520094132 {.
      cdecl, importc: "kuzu_date_from_string".}
else:
  static :
    hint("Declaration of " & "kuzudatefromstring" &
        " already exists, not redeclaring")
when not declared(kuzudatetotm):
  proc kuzudatetotm*(date: kuzudatet_520094092; outresult: ptr structtm_520094141): kuzustate_520094132 {.
      cdecl, importc: "kuzu_date_to_tm".}
else:
  static :
    hint("Declaration of " & "kuzudatetotm" & " already exists, not redeclaring")
when not declared(kuzudatefromtm):
  proc kuzudatefromtm*(tm: structtm_520094141; outresult: ptr kuzudatet_520094092): kuzustate_520094132 {.
      cdecl, importc: "kuzu_date_from_tm".}
else:
  static :
    hint("Declaration of " & "kuzudatefromtm" &
        " already exists, not redeclaring")
when not declared(kuzuintervaltodifftime):
  proc kuzuintervaltodifftime*(interval: kuzuintervalt_520094116;
                               outresult: ptr cdouble): void {.cdecl,
      importc: "kuzu_interval_to_difftime".}
else:
  static :
    hint("Declaration of " & "kuzuintervaltodifftime" &
        " already exists, not redeclaring")
when not declared(kuzuintervalfromdifftime):
  proc kuzuintervalfromdifftime*(difftime: cdouble; outresult: ptr kuzuintervalt_520094116): void {.
      cdecl, importc: "kuzu_interval_from_difftime".}
else:
  static :
    hint("Declaration of " & "kuzuintervalfromdifftime" &
        " already exists, not redeclaring")
when not declared(kuzugetversion):
  proc kuzugetversion*(): cstring {.cdecl, importc: "kuzu_get_version".}
else:
  static :
    hint("Declaration of " & "kuzugetversion" &
        " already exists, not redeclaring")
when not declared(kuzugetstorageversion):
  proc kuzugetstorageversion*(): uint64 {.cdecl,
      importc: "kuzu_get_storage_version".}
else:
  static :
    hint("Declaration of " & "kuzugetstorageversion" &
        " already exists, not redeclaring")