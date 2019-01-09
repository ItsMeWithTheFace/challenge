class UserTokenController < Knock::AuthTokenController
  # Skip this because rails now does it by default
  # see https://github.com/nsarno/knock/issues/208
  skip_before_action :verify_authenticity_token
end
