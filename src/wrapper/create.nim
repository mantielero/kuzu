# nim --maxLoopIterationsVM:10000000000 -d:futharkRebuild -d:nodeclguards c create
# The next one not working:
# nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild -d:nodeclguards -d:noopaquetypes create
import futhark,os

importc:
  outputPath currentSourcePath.parentDir / "kuzudb_0_4_2.nim"
  #path "/usr/include/igraph"
  path "../kuzu-0.4.2/src/include/c_api/"
  "kuzu.h"
  #"helpers.h"
   