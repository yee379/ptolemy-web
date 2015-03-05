PtolemyWeb::Application.routes.draw do

  resources :replacements

  resources :hardwares

  # common regexps
  @pcre = /[0-9A-Za-z\-\.\,\\\_\(\)\|\*\$\"\']+/
  @id = /[0-9A-Za-z]+/
  @mac = /[0-9A-Fa-f]{4}\.[0-9A-Fa-f]{4}\.[0-9A-Fa-f]{4}/
  @ip = /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/

  # resources :devices
  get '/devices/list', to: 'devices#list', :as => 'device_list'
  get '/devices/?(:device)?', to: 'devices#index', :constraints => { :device => @pcre }
  # get '/devices/?', to: 'devices#index', :constraints => { :device => @pcre }
  get '/devices', to: 'devices#index', :as => 'devices'
  get '/api/devices/neighbours', to: 'devices#api_device_neighbours', :as => 'api_device_neighbours'
  get '/api/devices/ipsla', to: 'devices#api_device_ipsla', :as => 'api_device_ipsla'
  get '/api/devices/vlans', to: 'devices#api_device_vlans', :as => 'api_device_vlans'
  get '/api/devices/list', to: 'devices#api_devices', :as => 'autocomplete_device_list'
  # get '/api/devices', to: 'devices#api_index', :as => 'api_devices'

  # resources :ports
  get '/ports/by_utilisation', to: 'ports#port_graphs_by_device', :constraints => { :device => @pcre }, :as => 'port_graphs_by_device'
  get '/ports/by_utilisation/:device', to: 'ports#port_graphs_by_device', :constraints => { :device => @pcre }
  get '/ports/by_uplinks', to: 'ports#port_graphs_by_uplinks', :constraints => { :device => @pcre }, :as => 'port_graphs_by_uplinks'


  get '/ports/:device', to: 'ports#index', :constraints => { :device => @pcre }
  get '/ports', to: 'ports#index', as: 'ports', :constraints => { :device => @pcre }, :as => 'network_ports'

  get '/api/ports/neighbours', to: 'ports#api_port_neighbours', :as => 'api_port_neighbours'
  get '/api/ports/alias', to: 'ports#api_port_alias', :as => 'api_port_aliases'
  get '/api/ports/location', to: 'ports#api_port_location', :as => 'api_port_locations'
  get '/api/ports/type', to: 'ports#api_port_type', :as => 'api_port_type'
  get '/api/ports/utilisations', to: 'ports#api_port_utilisations', :as => 'api_port_utilisations'

  get '/api/ports', to: 'ports#api_index', :as => 'api_port'

  # resources :hosts
  get '/hosts/on_subnet(.:format)', to: 'hosts#on_subnet', :constraints => { :q => @pcre }, :as => 'hosts_on_subnet'
  get '/hosts/:q', to: 'hosts#index', :constraints => { :q => @pcre }
  get '/hosts', to: 'hosts#index', :constraints => { :q => @pcre }, :as => 'hosts'
  get '/api/hosts/locations', to: 'hosts#api_host_locations', :as => 'api_hostnames_locations'
  get '/api/hostnames/list', to: 'hosts#api_hostnames', :as => 'autocomplete_hostname_list'
  get '/api/ip_addresses/list', to: 'hosts#api_ips', :as => 'autocomplete_ipaddress_list'
  get '/api/mac_addresses/list', to: 'hosts#api_macaddresses', :as => 'autocomplete_mac_address_list'
  get '/api/hosts', to: 'hosts#api_index', :as => 'api_host'


  # resources :vlans
  get '/api/vlans/list', to: 'vlans#api_index', :as => 'autocomplete_vlan_list'
  get '/api/vlan_names/list', to: 'vlans#api_vlan_names', :as => 'autocomplete_vlan_name_list'

  # resources :statistics, :only => [:index]
  get 'stats(.:format)/:metric' => 'stats#get',
    :constraints => { :metric => @pcre },
    :as => 'stats'
  get 'stats(.:format)/:metric/:device' => 'stats#get',
    :constraints => { :metric => @pcre, :device => @pcre },
    :as => 'device_stats'
  get 'stats(.:format)/:metric/:name' => 'stats#get',
    :constraints  => { :metric => /subnet\..*/ },
    :as => 'subnet_stats_by_name'
  get 'stats(.:format)/:metric/:prefix/:len' => 'stats#get',
    :constraints  => { :metric => /subnet\..*/, :prefix => @ip, :len => /\d+/ },
    :as => 'subnet_stats'
  get 'stats(.:format)/:metric/:source/:target' => 'stats#get',
    :constraints  => { :metric => /(owamp|bwctl)\.?.*/, :source => @pcre, :target => @pcre }
  get 'stats(.:format)/:metric/:device/:physical_port' => 'stats#get',
    :constraints  => { :device => @pcre, :metric => @pcre, :physical_port => @pcre },
    :as => 'port_stats'

  # proxy graphite's render and metrics
  get 'render' => 'stats#proxy',
    :as => 'graphite_render'
  # get 'metrics/find' => 'stats#graphite_metrics',
  #   :as => 'graphite_metrics'

  # graphs
  # resources :dygraphs
  get 'graphs/:metric' => 'dygraphs#index',
    :constraints => { :metric => @pcre },
    :as => 'timeseries'
  get 'graphs/:metric/:device' => 'dygraphs#index', 
    :constraints => { :device => @pcre, :metric => @pcre },
    :as => 'device_timeseries'
  get 'graphs/:metric/:device/:physical_port' => 'dygraphs#index', 
    :constraints => { :device => @pcre, :metric => @pcre, :physical_port => @pcre },
    :as => 'port_timeseries'

  get 'graphs.horizon/:metric' => 'd3s#horizon',
    :constraints => { :metric => @pcre }
  get 'graphs.horizon/:metric/:device' => 'd3s#horizon', 
    :constraints => { :device => @pcre, :metric => @pcre }
  get 'graphs.horizon/:metric/:source/:target' => 'd3s#horizon', 
    :constraints => { :source => @pcre, :target => @pcre, :metric => /(owamp|bwctl)/ }
  get 'graphs.horizon/:metric/:device/:physical_port' => 'd3s#horizon', 
    :constraints => { :device => @pcre, :metric => @pcre, :physical_port => @pcre }
  get 'graphs.horizon/:metric/:device/:p1/:p2' => 'd3s#horizon', 
    :constraints => { :device => @pcre, :metric => @pcre }
  get 'graphs.horizon/:metric/:device/:p1/:p2/:p3' => 'd3s#horizon', 
    :constraints => { :device => @pcre, :metric => @pcre }
  get 'graphs.horizon/:metric/:device/:p1/:p2/:p3/:p4' => 'd3s#horizon', 
    :constraints => { :device => @pcre, :metric => @pcre }

  # performance and metrics
  # resources :performances
  get 'performance' => 'performances#index',
    :as => 'performance'
  get 'performance/wan/bandwidth' => 'performances#wan_bandwidth',
    :as => 'performance_wan_bandwidth'
  get 'performance/wan' => 'performances#wan',
    :as => 'wan_performances'
  get 'performance/lan' => 'performances#lan',
    :as => 'lan_performances'
  get 'performance/lan/campus' => 'performances#campus'

  get 'performance/services' => 'performances#services',
    :as => 'performance_services'
  get 'performance/visitor' => 'performances#visitor',
    :as => 'visitor_performances'
  get 'performance/slac-wireless' => 'performances#slac_wireless',
    :as => 'slac_wireless_performances'
    
  get 'performance/devices/temperatures' => 'performances#devices_temperature',
    :as => 'performance_devices_temperatures'
  get 'performance/devices/loss' => 'performances#devices_loss',
    :as => 'performance_devices_loss'

  # device status
  get 'performance/devices' => 'performances#devices',
    :as => 'devices_dashboard'
  get 'performance/device/:device' => 'performances#device',
    :constraints => { :device => @pcre },
    :as => 'performance_device'
  get 'performance/device' => 'performances#device',
    :constraints => { :device => @pcre },
    :as => 'new_performance_device'
  get 'ping/:device' => 'performances#device_ping',
    :constraints => { :device => @pcre },
    :as => 'performance_device_ping'

  # resources :delegates
  put 'delegate/port/:device/:physical_port' => 'ports#update',
      :constraints => { :device => @pcre, :physical_port => @pcre },
      :as => 'delegate_port'

  # subnet status
  get 'performance/subnets' => 'performances#subnets',
    :as => 'subnets_dashboard'
  get '/performance/subnets/wheel', to: 'performances#subnet_wheel', :as => 'subnets_wheel'
  get 'performance/subnet/:prefix/:len' => 'performances#subnet',
    :as => 'performance_subnet',
    :constraints => { :prefix => @pcre }
    
  # subnets
  # resources :subnets
  get '/api/subnets/list', to: 'subnets#api_subnet_name_list', :as => 'autocomplete_subnet_name_list'
  get '/api/subnet_graph', to: 'subnets#subnet_graph', :as => 'api_subnet_graph'
  get '/subnets/ips', to: 'subnets#ips', :as => 'subnet_ips'
  get '/subnets', to: 'subnets#index', :as => 'subnets'

  # telecoms
  # resource :telecoms
  get '/api/telecoms/telephones', to: 'telecoms#api_telephones', :as => 'api_telephones'
  get '/telecoms/telephones', to: 'telecoms#telephones'

  # wireless
  # resources :wirelesses
  # get 'wireless/voronoi' => 'wirelesses#voronoi'
  get 'wireless/map' => 'wirelesses#map',
    :as => 'wirelessmap'
  get 'wireless/map/edit' => 'wirelesses#map'
  # resources :wirelesses
  get 'wirelesses(.:format)' => 'wirelesses#index'
  post 'wirelesses(.:format)' => 'wirelesses#create'
  get 'wirelesses/new' => 'wirelesses#new',
    :as => 'new_wireless'
  get'wirelesses/:id/edit' => 'wirelesses#edit',
    :as => 'edit_wireless',
    :constraints => { :id => @id }
  get 'wirelesses/:id(.:format)' => 'wirelesses#show',
    :as => 'wireless',
    :constraints => { :id => @id }
  post 'wirelesses/:id(.:format)' => 'wirelesses#update',
    :constraints => { :id => @id }
  delete 'wirelesses/:id(.:format)' => 'wirelesses#destroy',
    :as => 'destroy_wireless',
    :constraints => { :id => @id }

  # resources :topologies
  get 'topologies/devices(.:format)' => 'topologies#devices',
    :as => 'topologies_devices'
  get 'topologies/hosts(.:format)' => 'topologies#hosts',
    :as => 'topologies_hosts'
  get 'topologies/vlans(.:format)' => 'topologies#vlans',
    :as => 'topologies_vlans'
  get 'topologies/paths(.:format)' => 'topologies#paths',
    :as => 'topologies_paths'

  # resources :netengs
  get 'neteng/transceivers(.:format)' => 'netengs#transceivers',
    :as => 'netengs_transceivers_paths'
  get 'neteng/uptimes(.:format)' => 'netengs#device_uptimes',
    :as => 'netengs_uptimes_paths'

  # resources :cybers
  get 'acls/check(.:format)' => 'acls#check',
    :as => 'acl_check'
  get 'acls/list(.:format)' => 'acls#list',
    :as => 'acl_list'

  get 'cfm/search(.:format)' => 'cfms#search',
    :as => 'cfm'


  # techcoords
  get 'api/techcoords/ports(.:format)' => 'techcoords#api_ports',
    :as => 'api_techcoords_ports',
    :constraints => { :device => @pcre }
  get 'techcoords/ports/:device' => 'techcoords#ports',
    # :as => 'techcoords_ports',
    :constraints => { :device => @pcre }
  get 'techcoords/ports' => 'techcoords#ports',
    :as => 'techcoords_ports',
    :constraints => { :device => @pcre }

  get 'api/techcoords/locations(.:format)' => 'techcoords#api_locations',
    :as => 'api_techcoords_locations',
    :constraints => { :hostname => @pcre }
    get 'techcoords/locations/:hostname' => 'techcoords#locations',
      # :as => 'techcoords_locations',
      :constraints => { :hostname => @pcre }
  get 'techcoords/locations' => 'techcoords#locations',
    :as => 'techcoords_locations',
    :constraints => { :hostname => @pcre }
  
  
  # home
  get 'home', :to => 'static#home'
  get 'netops', :to => 'static#netop'
  get 'techcoords', :to => 'static#techcoord'
  get 'itds', :to => 'static#itds'
  get 'telecoms', :to => 'static#telecom'
  get 'internals', :to => 'static#internal'
  get 'mccs', :to => 'static#mcc'
  get 'cybers', :to => 'static#cyber'
  get 'beta', :to => 'static#beta'
  
  # top
  root :to => 'static#home'

  resources :physical_securities

  resources :datacenters

  resources :helpdesks
  resources :techcoords
  
  get 'weathermaps/:map' => 'weathermaps#map',
    :as => 'weathermap_for'
  resources :weathermaps





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
