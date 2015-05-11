require 'sinatra'
require 'rbnacl/libsodium'
require 'config_env'
require 'haml'
require_relative './model/plan.rb'
require_relative 'helpers/plan_helper'
#require_relative './model/credit_card.rb'
#require_relative 'helpers/creditcard_helper'

class Frommage < Sinatra::Base
  include PlanHelper
  configure :development, :test do
    #ConfigEnv.path_to_config("./config/config_env.rb")
    require 'hirb'
    Hirb.enable
  end
get '/' do
#index
"Welcome to yaochisu."
end
get '/about' do
#about
"Who are we? We don't know"
end

get '/plans' do
#plans
@available_plans = get_available_plans
haml :plans
end

get '/faq' do
#FAQ
"Q: Why does it always rain on me? A: It is because you lied when you were 17?"
end
get '/help' do
#Support
"This page is to help you somehow."
end
get '/terms' do
#terms of use
"By using this page and its services, you become our customer."
end
get '/privacy' do
#Privacy
"Basically we will track your cheesy habits."
end
end
