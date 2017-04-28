class UsersSerializer < ActiveModel::Serializer
	attributes :undieters, :vegans, :lowcarbers, :balancers, :fishatarians, :carnivores, :lumberjacks, :vampires, :junkers
end
