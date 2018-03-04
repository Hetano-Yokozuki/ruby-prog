#!/usr/local/bin/ruby
$stdout.sync = true # this is to put the standard output
def message(me)
 0.upto(4) do |i|
  printf("%s process %d\n", me, i+=1)
  sleep 1
 end
end

pid = fork # creating a forked process
if pid then
 printf("this is parent process(pid=%d)\n", pid)
 message("Parent")
else # this is a forked process
 sleep 0.5
 message("\t this is replica of")
end

