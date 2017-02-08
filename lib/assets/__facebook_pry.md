

[1] pry(#<Users::OmniauthCallbacksController>)> request.env["omniauth.auth"]
=> {"provider"=>"facebook",
 "uid"=>"154020935087658",
 "info"=>
  {"email"=>"smithwebtek@gmail.com",
   "name"=>"Brad Smith",
   "image"=>"http://graph.facebook.com/v2.6/154020935087658/picture"},
 "credentials"=>
  {"token"=>
    "EAARV6fuoKTUBAN0fkAdBK44XUi30nSgiuvQiZByKoQgLDuMqKlZAG12WxoFbhS9lcSLbVz14plLtEyZB1hNlHOLdchCm3EcZCxZAcbyVLWKreJOA4ln9WQUCRtMZBPAlE3P1feRPdXaEVZAREIrK15FZBrMttHArXJL5l1yKFqPHqAZDZD",
   "expires_at"=>1489963003,
   "expires"=>true},
 "extra"=>{"raw_info"=>{"name"=>"Brad Smith", "email"=>"smithwebtek@gmail.com", "id"=>"154020935087658"}}}


request.env["omniauth.auth"]["uid"]

request.env["omniauth.auth"]["provider"]
=> "facebook"

request.env["omniauth.auth"]["info"][:email]
=> "smithwebtek@gmail.com"

request.env["omniauth.auth"]["info"][:name]
=> "Brad Smith"

request.env["omniauth.auth"]["info"][:image]
=> "http://graph.facebook.com/v2.6/154020935087658/picture"