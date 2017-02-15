class Employee
  attr_accessor :id, :full_name, :email, :birthday, :address

  def initialize(hash)
    @id = hash['id']
    @full_name = hash['full_name']
    @email = hash['email']
    @birthday = ['birthday']
    @addresses = ['addresses']
  end

  
  def self.find(id)
    employee_hash = Unirest.get("#{ENV['API_BASE_URL']}/employees/#{id}", :headers => {"X-User-Email" => ENV['API_EMAIL'], "Authorization" => ENV['API_KEY'}).body
    Employee.new(employee_hash)
  end

  def self.all
    employees = []
    api_employees = Unirest.get("http://localhost:3000/api/v2/employees", :headers => {"X-User-Email" => "test@test", "Authorization" => "Token token=abc"}).body
    api_employees.each do |employee_hash|
      employees << Employee.new(employee_hash)
    end
    employees
  end

  def destroy
    Unirest.delete("http://localhost:3000/api/v2/employees/#{id}").body
  end

  def friendly_birthday
    birthdate = Date.parse(@birthday)
    birthdate.strftime('%b %d, %Y')
  end
end


