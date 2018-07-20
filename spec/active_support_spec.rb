require 'spec_helper'
require 'active_support.rb'

RSpec.describe ActiveSupport do
  before do
    ActiveSupport::Dependencies.autoload_paths = Dir["./muffin_blog/app/*"]
  end

  it "will search for a file" do
    expect(ActiveSupport::Dependencies.search_for_file("application_controller")).to eq "./muffin_blog/app/controllers/application_controller.rb"
  end
end
