social_graph = {
  "auston"=>["juan","matt","kai"],
  "kai"=>["auston", "matt"],
  "matt"=>["jess","auston","kai"],
  "juan"=>["auston"],
  "jess"=>["matt", "roger"]
}

def path_exists?(from, to, graph)
  if graph[from].include? to
    return true
  else
    graph.each do |person, people|
      if people.include? to
        return path_exists?(from, person, graph)
      end
    end
    false
  end
end
