class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def to_slug(string)
  	string.parametrize.truncate(80, omission: '')
  end
end
