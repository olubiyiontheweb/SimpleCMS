class Subject < ApplicationRecord

    has_many :pages

    validates_presence_of :name
    validates_length_of :name, :maximum => 255

    acts_as_list
    
    scope :visible, lambda { where(:visible => true)}
    scope :invisible, lambda { where(:visible => false)}
    scope :sorted, lambda { order("subjects.position ASC")}
    scope :newest_first, lambda { order("subjects.created_at DESC")}
    scope :search, lambda { |query|
        where(["name LIKE ?", "%#{query}%"])
    }
    # Ex:- scope :active, lambda {where(:active => true)}
    # Ex:- scope :active, lambda {where(:active => true)}
    
end
