# frozen_string_literal: true

class HomeController < ApplicationController
  def index
  end

  def code
    # ここではリクエストパラメータのcodeに応じて
    # 下記のような感じでcoeeを用いてトークンを取得する 
    # 参考：https://jq-jo.github.io/blog/2017/09/21/doorkeeper/
    # client = OAuth2::Client.new(CLIENT_ID, CLIENT_SECRET, site: SITE_URL)
    # token = client.auth_code.get_token(CODE, :redirect_uri => REDIRECT_URL, :grant_type => 'client_credentials')

    p "OK"
  end
end
