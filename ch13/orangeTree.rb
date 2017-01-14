class OrangeTree
  def initialize
    @height = 0
    @orangeCount = 0
    @age = 0
    @living = true
  end

  def height
    if @living
      @height
    else
      'Sorry your tree is dead'
    end
  end

  def count_the_oranges
    if @living
      @orangeCount
    else
      'Sorry your tree is dead'
    end
  end

def tree_age
  if @living
    @age
  else
    'Your tree has lived its years well'
  end
end

def one_year_passes
  if @living
    @age = @age + 1
    @orangeCount = 0
    @height = @height + 1
#tree dies
    if @age >= 35
      @living = false
      'Oh no your tree has died!'
#tree produce fruit or is too young
    elsif @age > 5
      @orangeCount = @age* 2
      'Your tree is ' + @height.to_s+' feet tall and has produced ' + @orangeCount.to_s + ' oranges.'
    else
      'Your tree is too young to bear fruit, it is' +@height.to_s+  ' feet tall'
    end
  else
    'Sorry your tree is dead'
  end
end

def pick_an_orange
  if @living
    if @orangeCount > 0
      @orangeCount = @orangeCount -1
      'You picked a nice, ripe orange'
    else
      'Sorry there are no oranges.'
    end
  else
    'Sorry your tree is dead, you might need to go buy an orange'
  end
end
end

orange = OrangeTree.new
32.times do
 orange.one_year_passes
end
puts (orange.count_the_oranges)

puts (orange.pick_an_orange)
puts (orange.count_the_oranges)
puts (orange.one_year_passes)
puts (orange.one_year_passes)
puts (orange.tree_age)
puts(orange.one_year_passes)
puts(orange.tree_age)
puts(orange.count_the_oranges)
