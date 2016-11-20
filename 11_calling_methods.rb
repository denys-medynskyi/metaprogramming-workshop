class Hero
  private

  def personal_id
    p self.object_id
  end
end

b = Hero.new

b.personal_id
b::personal_id
b.send('personal_id')
