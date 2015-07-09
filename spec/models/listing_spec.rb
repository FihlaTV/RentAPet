require 'rails_helper'

describe Listing do
  it { should validate_presence_of :title}
  it { should validate_presence_of :price}
  it { should validate_presence_of :pet_name}
  it { should belong_to :user}

  # it { should validate_presence_of :description}
  # it { should validate_presence_of :species}
  # it { should validate_presence_of :breed}
  # it { should validate_presence_of :age}
  # it { should validate_presence_of :attitude}
  # it { should validate_presence_of :restrictions}
  # it { should validate_presence_of :active_level}
  # it { should validate_presence_of :size}
  # it { should validate_presence_of :weight}
  # it { should validate_presence_of :available}
end
