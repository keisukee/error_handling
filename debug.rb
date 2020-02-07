def debug_puts()
  caller()[0] =~ /(.*?):(\d+)/   # 呼び出し元を調べる
  filename, linenum = $1, $2
  $stderr.puts "[DEBUG] #{filename}:#{linenum}"
  # $stderr.puts "[DEBUG] #{message}"
end

x = "foo"
debug_puts "x=#{x.inspect}"
x = "bar"
debug_puts "x=#{x.inspect}"