require 'bundler'
Bundler.require

set :bind, '0.0.0.0'

# トップページ
get '/' do
  "Hello Sinatra"
end

# トップ以外のページ
get '/hoge' do
  "hoge"
end

# パラメータの受け取り
get '/app/:hoge' do
  "got param: #{params[:hoge]}"
end

# htmlの表示
get '/form' do
"<h2>This is a header!!!!</h2>

<form action='/check' method='POST'>
  <label>名前:</label>
  <input type='text' name='name'>

  <label>年齢:</label>
  <input type='text' name='age'>

  <input type='submit'>
</form>
"
end

# postでパラメータの受け取り
post '/check' do
  "#{params[:name]}さんは#{params[:age]}歳です。"
end


# erbの利用
get '/calc' do
  erb :calc
end
