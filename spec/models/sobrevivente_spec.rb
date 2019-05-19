require 'rails_helper'

RSpec.describe Sobrevivente, type: :model do
  it { should validate_presence_of(:nome) }
  it { should validate_presence_of(:idade) }
  it { should validate_presence_of(:genero) }
  it { should validate_presence_of(:last_latitude) }
  it { should validate_presence_of(:last_longitude) }
end
