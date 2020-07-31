class Profile <ActiveRecord::Base
    belongs_to :user
    belongs_to :site

    # def update_about
    #     binding.pry
    # end
end