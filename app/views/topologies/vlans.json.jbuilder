json.directed false
json.multigraph false

json.nodes do |json|
  json.partial! "node"
end
 
json.links do | i |
  json.partial! "link"
end