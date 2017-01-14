$global = 0
$space = ' '

def log block_descrip, &block
  puts $space *$global + 'Beginning "' + block_descrip + '" ...'
  $global = $global + 1
  returned = block.call

  puts $space *$global + '..."'+block_descrip+'" finished, returning:'
  puts returned
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
    'lots of love'
    end
    42
  end
    log 'yet another block' do
      'I love Indian food!'
    end
  'true'
end
