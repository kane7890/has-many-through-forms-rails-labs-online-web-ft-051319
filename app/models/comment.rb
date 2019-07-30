class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  def user_attributes=(user_attributes)
      flg = true
      user_attributes.values.each do |user_attribute|
        if user_attribute == ""
            flg = false
        end
      end
        if flg
          user = User.find_or_create_by(user_attributes)
          binding.pry
          self.user = user
        end
      

  end

  def userarray
     tmp=[]
     tmp[0]=self.user
     tmp
  end
end
