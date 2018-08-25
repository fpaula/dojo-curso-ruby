def assert(result, expected_result)
  if result == expected_result
    puts '.'.green
  else
    puts 'F'.red
  end
end
