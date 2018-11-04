class WelcomeController < ApplicationController
  def index
    @now = now
  end

  private

  def now
    ActiveRecord::Base.connection.execute('SELECT now()').first.fetch('now')
  end
end
