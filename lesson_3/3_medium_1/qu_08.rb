# Question 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
p munsters

# {"Herman"=>{"age"=>74, "gender"=>"other"}, "Lily"=>{"age"=>72,
# "gender"=>"other"}, "Grandpa"=>{"age"=>444, "gender"=>"other"},
# "Eddie"=>{"age"=>52, "gender"=>"other"}, "Marilyn"=>{"age"=>65,
# "gender"=>"other"}}

# The family's hash is all changed! Spot is in trouble.
# As the `demo_hash` argument is not re-assigned inside the method,
# these changes in the method affect the original hash.
