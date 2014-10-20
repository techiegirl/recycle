json.array!(@state_recycle_laws) do |state_recycle_law|
  json.extract! state_recycle_law, :id, :item_id, :state_name, :state_abr, :description
  json.url state_recycle_law_url(state_recycle_law, format: :json)
end
