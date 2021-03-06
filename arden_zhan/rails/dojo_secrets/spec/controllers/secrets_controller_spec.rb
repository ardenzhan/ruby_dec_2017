require 'rails_helper'
RSpec.describe SecretsController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access index"
    it "cannot access create"
    it "cannot access destroy"
  end

  context "when signed in as the wrong user" do
    it "cannot destroy another user's secret"
  end

end