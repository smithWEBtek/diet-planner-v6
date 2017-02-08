params.md

params"log_type"=>"meal", "user"=><ActionController::Parameters {"logs_attributes"=>{"0"=>{"id"=>"1", "qty"=>"23", "note"=>"too many eggs"}}} permitted: false>, "user_id"=>"4", "diet_id"=>"Balanced Protein-Carb", "weight"=>"203", "created_at"=>"2017-01-20 00:37:37 UTC", "commit"=>"Add Log", "controller"=>"users", "action"=>"update", "id"=>"4"} permitted: false>


[3] pry(#<UsersController>)> params[:log_type]
=> "meal"
[4] pry(#<UsersController>)> params[:user]
=> <ActionController::Parameters {"logs_attributes"=>{"0"=>{"id"=>"1", "qty"=>"23", "note"=>"too many eggs"}}} permitted: false>
[5] pry(#<UsersController>)> params[:user][:logs_attributes]
=> <ActionController::Parameters {"0"=>{"id"=>"1", "qty"=>"23", "note"=>"too many eggs"}} permitted: false>
[6] pry(#<UsersController>)> params[:user][:logs_attributes][0]
=> nil
[7] pry(#<UsersController>)> params[:user][:logs_attributes][:0]
SyntaxError: unexpected tINTEGER, expecting tSTRING_CONTENT or tSTRING_DBEG or tSTRING_DVAR or tSTRING_END
params[:user][:logs_attributes][:0]
                                  ^
[7] pry(#<UsersController>)> params[:user][:logs_attributes][0]
=> nil
[8] pry(#<UsersController>)> params[:user][:logs_attributes]["0"]
=> <ActionController::Parameters {"id"=>"1", "qty"=>"23", "note"=>"too many eggs"} permitted: false>
[9] pry(#<UsersController>)> params[:user][:logs_attributes]["1"]
=> nil
[10] pry(#<UsersController>)> 

