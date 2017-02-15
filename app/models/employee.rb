class Employee
  attr_accessor :id, :full_name, :email, :birthday, :address

  def initialize(hash)
    @id = hash['id']
    @full_name = hash['full_name']
    @email = hash['email']
    @birthday = ['birthday']
    @addresses = ['addresses']
  end
end


