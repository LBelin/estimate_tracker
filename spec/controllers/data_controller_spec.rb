require 'rails_helper'

RSpec.describe DataController, type: :controller do

 it 'puts the xml' do
   expect(@hello).to eq('hello')

 end

end
