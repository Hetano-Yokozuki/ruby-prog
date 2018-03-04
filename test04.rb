#!/usr/local/bin/ruby
cmd = ARGV[0] || "kterm"
if (pid = fork()) then
else
 exec(cmd)
end

STDERR.printf("%s: waiting=w kill=k remain=other: ", cmd)
case STDIN.gets
when /^k/i
 STDERR.puts "Booon"
 Process.kill(:QUIT, pid)
when /^w/i
 STDERR.puts "Then, I'll waiting"
 Process.wait
else
 STDERR.puts "Then, I'm going to be seise..."
end
