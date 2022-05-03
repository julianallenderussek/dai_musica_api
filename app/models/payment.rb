class Payment < ApplicationRecord
    mount_uploader :image_receipt, FileUploader
    belongs_to :school
    
    #ver las referencias belongs to, has many etc.

end