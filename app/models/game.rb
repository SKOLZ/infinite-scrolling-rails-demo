class Game < ActiveRecord::Base
  paginates_per Rails.application.secrets.scrolling
end
