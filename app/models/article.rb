class Article < ApplicationRecord
        has_many :article_categories 
         has_many :categories, through: :article_categories

        validates :title,:description,presence: true
        belongs_to :user
       
   

end
