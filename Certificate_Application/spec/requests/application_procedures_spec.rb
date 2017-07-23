require 'rails_helper'

RSpec.describe "ApplicationProcedures", type: :request do
  describe "GET /application_procedures" do
    it "works! (now write some real specs)" do
      get application_procedures_path
      expect(response).to have_http_status(200)
    end
  end
end
