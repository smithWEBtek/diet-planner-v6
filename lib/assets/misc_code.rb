

  def validate_last_3_meals
    current_user.meals["#{current_user.meals.count}".to_i].valid?
    current_user.meals["#{current_user.meals.count+1}".to_i].valid?
    current_user.meals["#{current_user.meals.count+2}".to_i].valid?
  end


 id: nil,
 mealdate: nil,
 mealname_id: 1,
 user_id: 5,
 food_id: nil,
 new_food: "",
 qty: 1,
 note: nil,
 created_at: nil,
 updated_at: nil>
[2] pry(#<#<Class:0x007fc14f25dce0>>)> meal_builder.object.errors.any?
=> false
[3] pry(#<#<Class:0x007fc14f25dce0>>)> 

    <% if meal_builder.object.errors.any? %>
      <div id="error_explanation" class="flash_style">
        <h2>There were some errors:</h2>
        <ul>
          <% meal_builder.object.errors.full_messages.each do |message| %>
            <li><%= message %></li>
          <% end %>
        </ul>
      </div>
    <% end %>

 
    if breakfast is nil?
      current_user.meals["#{current_user.meals.count}".to_i]

    if lunch is nil?  
    current_user.meals["#{current_user.meals.count+1}".to_i]

    if dinner is nil?
      current_user.meals["#{current_user.meals.count+2}".to_i]

