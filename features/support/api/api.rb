require 'yaml'

class Api
  def initialize
    @connection = Connection.new(OpenStruct.new YAML.load_file '.config/api.yml')
  end

  def sign_up(user)
    @connection.post('/users/signup', user)
  end

  def add_budget(budget)
    @connection.post('/budgets', budget)
  end
end
