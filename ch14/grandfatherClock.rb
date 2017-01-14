def clock some_proc
  cur_hour = Time.new.hour
#0 is actually 12am
  if cur_hour == 0
    cur_hour = cur_hour + 12
  elsif cur_hour > 12
    cur_hour = cur_hour -12
  end
#run the dong_proc in the number of times coressponding to the hour
  cur_hour.to_i.times do
    some_proc.call
  end
end

dong_proc = Proc.new do
  puts  'Dong!'
end

puts clock dong_proc
