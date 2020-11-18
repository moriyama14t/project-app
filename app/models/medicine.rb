class Medicine < ApplicationRecord
    self.inheritance_column = :_type_disabled
end
