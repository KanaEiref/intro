def thrice &block
  puts block
  block.call(1)
  block.call(2)
  block.call(3)
end

thrice do |i|
  puts "#{i} => Hello world #{x}"
end
