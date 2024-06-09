import kuzu
import std/strformat

proc main =
  #echo getVersion()        # v0.4.2
  #echo getStorageVersion() # 27
  # Create kuzu system config with 512MB buffer pool size and 2 threads.
  var config = newConfig(bufferPoolSize=512 * 1024 * 1024,
                         maxNumThreads=2,
                         enableCompression=true, 
                         readOnly=true)  # <--- NOT WORKING
  config = kuzu_default_system_config()
  # Create an empty database.
  var db = newKuzuDB("test", config)

  # Connect to the database.
  var conn = db.connect()


  # Create the schema.
  var result = conn.query("CREATE NODE TABLE User(name STRING, age INT64, PRIMARY KEY (name))")
  result = conn.query("CREATE NODE TABLE City(name STRING, population INT64, PRIMARY KEY (name))")
  result = conn.query("CREATE REL TABLE Follows(FROM User TO User, since INT64)")
  result = conn.query("CREATE REL TABLE LivesIn(FROM User TO City)")


  # Load data
  result = conn.query("""COPY User FROM "data/user.csv"""")
  result = conn.query("""COPY City FROM "data/city.csv"""")
  result = conn.query("""COPY Follows FROM "data/follows.csv"""")
  result = conn.query("""COPY LivesIn FROM "data/lives-in.csv"""")

  # Execute a simple query.
  result = conn.query("MATCH (a:User)-[f:Follows]->(b:User) RETURN a.name, f.since, b.name;")

  # Output query result.
  for item in result.items():
    var name  = item[0].getString()
    var since = item[1].getInt()
    var name2 = item[2].getString()
    echo &"{name} follows {name2} since {since}"

main()

