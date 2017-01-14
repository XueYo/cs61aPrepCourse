def log block_descrip, &block
  puts 'Beginning "' + block_descrip + '"...'
  returned = block.call
  puts '..."'+block_descrip+'" finished, returning:'
  puts returned
end

log 'outer block' do
  log 'some little block'do
    5
  end
log 'yet another block' do
  'I like Thai food!'
end
'false'
end
