# frozen_string_literal: true

require "rails_helper"

RSpec.describe Profesor, type: :model do
#   it { should belong_to(:user) }
#   it { should belong_to(:time_line).optional }
 it { should validate_presence_of(:first_name) }
 it { should validate_presence_of(:last_name) }
 it { should validate_presence_of(:email) }
 it { should validate_presence_of(:phone_number) }
 it { should validate_presence_of(:country) }
 it { should validate_presence_of(:city) }
 it { should validate_presence_of(:instrument) }
 it { should validate_presence_of(:status) }
 it { should belong_to(:school) }
 it { should have_many(:students)}

end