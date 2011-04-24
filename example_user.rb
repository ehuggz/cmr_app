class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:name]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
