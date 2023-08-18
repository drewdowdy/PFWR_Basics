flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p (flintstones.select{|k,v| k == "Barney"}).flatten

p flintstones.assoc("Barney") 
  # Hash#assoc if the given key is found, returns a 2-element Array containing that key and its value
