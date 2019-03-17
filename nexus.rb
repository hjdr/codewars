def nexus(test)
  print test.sort_by{ |key, value| value }
end


hash_test = {
  1 => 1,
  3 => 8,
  10 => 16,
  8 => 6,
  24 => 5
}

test = nexus(hash_test)
