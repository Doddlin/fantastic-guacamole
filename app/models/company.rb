class Company < ApplicationRecord

    has_many :users

    enum companytype: {propowner: 0, supplier: 1}

end
