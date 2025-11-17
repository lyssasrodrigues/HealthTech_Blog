class User < ApplicationRecord
 
 #devise modules
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#relacionamento com artigos
has_many :articles, dependent: :destroy
# quando o usuario for deletado, os artigos dele tambem serao


#validacao
validates :name, presence: true
# impede cadastro sem nome

end
