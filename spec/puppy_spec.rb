require 'spec_helper'

describe Puppy do

  it { should validate_presence_of :name }
  it { should validate_presence_of :img_url }

end
