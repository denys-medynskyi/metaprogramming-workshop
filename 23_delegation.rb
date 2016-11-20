require 'pry-rails'
class Presenter
  attr_accessor :object

  def initialize(object)
    @object = object
  end

  def method_missing(m, *args, &block)
    puts "Delegating #{m}"
    object.send(m, *args, &block)
  end
end

class UserPresenter < Presenter
  def full_name
    "#{first_name} #{last_name}"
  end
end

class User
  attr_accessor :first_name, :last_name
end

user = User.new
user.first_name = 'Ivan'
user.last_name = 'Bohun'

p user

user_presenter = UserPresenter.new(user)

p user_presenter.first_name
p user_presenter.full_name
