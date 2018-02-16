class ContactsController < ApplicationController

	def new
		
	end

	def create
		# в качестве аргумента передаётся функция 
		@contact = Contact.new(contact_params)
		@contact.save
	end
# create methods closed для разрешения доступа к атрибутам
	private

	def contact_params
		# разрешение доступа к хешу параметров формы и перечисление нужных полей
		params.require(:contact).permit(:email, :message)
		
	end
end
