class Item < ActiveRecord::Base
 # has_many :state_recycle_laws

  #attr_accessible :name, :description, :recyclable

  def self.search(search)
    if search
      where('name LIKE ?', "#{search}%")
    else
      nil
    end
  end
end
