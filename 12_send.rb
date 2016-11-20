class Foo
  def bar
    true
  end

  def send(*args)
    false
  end
end

foo = Foo.new

p foo.send('bar')
p foo.__send__('bar')
p foo.method('bar').call
p foo.instance_eval('bar')
