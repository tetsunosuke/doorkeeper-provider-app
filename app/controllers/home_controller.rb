# frozen_string_literal: true
#
require 'oauth2'

class HomeController < ApplicationController
  def index
  end

  def code
    # ここではリクエストパラメータのcodeに応じて
    # 下記のような感じでcoeeを用いてトークンを取得する 
    # 参考：https://jq-jo.github.io/blog/2017/09/21/doorkeeper/
    # client = OAuth2::Client.new(CLIENT_ID, CLIENT_SECRET, site: SITE_URL)
    # token = client.auth_code.get_token(CODE, :redirect_uri => REDIRECT_URL, :grant_type => 'client_credentials')
    # 下記ではclient_id, secretをベタがきしているが本来はconfig（credentials）にうつす
    client = OAuth2::Client.new(
      "Fkyi6J-8R46kESpOBee0HYsJo1MkcWxWZW8GUZJy3cs",
      "_C1Q28938xGR2sM1krwjVRrEsZP4md6lzx0oZ_FUq0E",
      site: "http://localhost:3000/oauth/token"
    )
    token = client.auth_code.get_token(
      params[:code],
      :redirect_uri => "http://localhost/redirect",
      :grant_type => 'client_credentials',
    )

    # 画面にトークン系の情報が得られる
    render json: token
  end
end
