class Foo
  def self.hello_world
    puts __method__
  end

  def self.hi
    puts __method__
  end

  def method_missing(meth,*args)
    puts "undefined method #{meth}"
  end
end
