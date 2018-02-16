class ContactsController < ApplicationController

#action тоже что и в sinatra get, post и т.д. только сдесь это название функции вместо '/new'
	def new
		
	end

	def create
		# в качестве аргумента передаётся функция 
		@contact = Contact.new(contact_params)
		if @contact.valid?
			@contact.save
		else
			render action: 'new'
		end
	end
# create methods closed для разрешения доступа к атрибутам
	private

	def contact_params
		# разрешение доступа к хешу параметров формы и перечисление нужных полей
		params.require(:contact).permit(:email, :message)
		
	end
end
