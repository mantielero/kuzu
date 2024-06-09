
import kuzu
import std/strformat

proc main =
  var myDb = newKuzuDB("example.db")
  var conn = myDb.connect()

  # Create schema
  var result = conn.query("CREATE NODE TABLE Person(name STRING, age INT64, PRIMARY KEY(name));")

  # Create nodes
  result = conn.query("CREATE (:Person {name: 'Alice', age: 25});")
  result = conn.query("CREATE (:Person {name: 'Bob', age: 30});")


  # Execute a simple query.
  result = conn.query("MATCH (a:Person) RETURN a.name AS NAME, a.age AS AGE;")

  # Fetch each value.
  while result.hasNext():
    var tple = result.getNext()
    var name = tple[0].getString() 
    var age = tple[1].getInt()
    echo repr tple[2]

    echo &"name: {name}, age: {age}"

  # Print query result.
  echo result

main()
