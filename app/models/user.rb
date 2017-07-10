class User < ApplicationRecord
  enum role:[:aluno,:professor,:admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:authentication_keys => [:login]
         
  has_many :answers
  has_one  :avaliar
  
  def login=(login)
    @login = login
  end

  def login
    @login || self.matricula || self.email
  end
  
  def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(matricula) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    if conditions[:matricula].nil?
      where(conditions).first
    else
      where(matricula: conditions[:matricula]).first
    end
  end
  end
  
  validates :matricula, :presence => true, :uniqueness => {:case_sensitive => false},:numericality => {:only_integer => true} # etc.
  validates :name, :presence => true , format: { with: /\A[a-zA-Z0-9]+\Z/ }
end
