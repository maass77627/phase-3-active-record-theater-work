require 'pry'

class Role < ActiveRecord::Base
    has_many :auditions

    

    def actors
        self.auditions.collect do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.collect do |audition|
            audition.location
        end
    end

    def lead
         self.auditions.find_by(hired: true) || "no actor has been hired for this role"
    #   lead = self.auditions.find do |audition|
    #     audition.hired == true
    #   end
    #   if !lead
    #     "no actor has been hired for this role"
    #   else 
    #     lead
    #   end
    end

    # ong.where("number_of_stars > ?", 3) 

    def understudy
       self.auditions.where(hired: true).second || 'no understudy has been hired for this role.'
    end

end