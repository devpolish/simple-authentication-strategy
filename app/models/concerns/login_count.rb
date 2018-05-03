module LoginCount
  extend ActiveSupport::Concern
  included do
    Authenticate.lifecycle.after_authentication name: 'login counter' do |user, session, options|
      user.login_count_one
    end

    def login_count_one
      self.count_login += 1
    end
  end
end
