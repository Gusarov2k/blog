#подключение 
require 'spec_helper'

#Описание тестов для модели contact
describe Contact do
	#проверить на наличии валидации email
	it { should validate_presence_of(:email) }
end