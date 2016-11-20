class A
  def a
    puts 'method a is called'
    def b
      puts 'method b is called'
    end
  end
end

lol = A.new

lol.b

# lol.b
