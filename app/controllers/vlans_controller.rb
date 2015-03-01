class VlansController < ApplicationController

  def api_index
    v = vlan_params
    @vlans = Vlan.where( 'vlan = ?', v['query'] ).order('vlan')
  end

  def api_vlan_names
    @vlan_names = Vlan.where( 'lower(name) ~ ?', vlan_params['query'].downcase ).order('name').uniq.pluck('name')
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def vlan_params
      params.permit( :query )
    end
end
