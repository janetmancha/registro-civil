$dunit = false

Before do
  if $dunit == false
    puts "before all scenarios"
    $stubby = IO.popen('stubby -d registro-civil.yml')
    puts $stubby.pid
    sleep(1)
  end
  $dunit = true
end

at_exit do
  Process.kill('SIGKILL', $stubby.pid)
end

After do
  puts "after scenario"
end

Before("@my_hook") do
  puts "before my hook"
end

After("@my_hook") do
  puts "after my hook"
end
