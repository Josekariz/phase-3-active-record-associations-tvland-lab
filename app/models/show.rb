class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

   def actors_list
        self.actors.each.map do |act|
             "#{act.first_name} #{act.last_name}"
        end
        
    end
end