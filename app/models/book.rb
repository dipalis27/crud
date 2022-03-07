class Book < ApplicationRecord

    # scope :book_name, -> {where("(book_name)> 10")}
    #validates :book_name, presence: true
   after_save :greeting_message
   def greeting_message
       puts "message  "
   end

end
