require 'tweetstream'

class ApplicationController < ActionController::Base

	def intialize 
		TweetStream.configure do |config|
			config.consumer_key       = 'HDFrGriBkry6JZ0rHcApkgGcW'
			config.consumer_secret    = '4hJJX5kyYLpVGTdTEvP7Tw8zdl41TK1f0e0pFolHnuuhYiQH3g'
			config.oauth_token        = '2842713025-QklZxjlGf90jzftGQHiCvTUjVbZD38jo3XSIB7D'
			config.oauth_token_secret = 'q90Qw46VYX9nHauKHNOfWIFbz9acnBMDZuwR6Qc0Ji3SY'
			config.auth_method        = :oauth
		end
		<% TweetStream::Client.new.track('49ers') do |status| %>
		<p><%= status.text %></p>
		<% end %>
		render 'welcome#index'

	end

	def create 
		
	end

	

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


end
