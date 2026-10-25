script.on_init(function()
  if remote.interfaces["freeplay"] then
    local items_to_insert = remote.call("freeplay", "get_created_items")
    items_to_insert["first-assembling-machine"] = (items_to_insert["first-assembling-machine"] or 0) + 1
    remote.call("freeplay", "set_created_items", items_to_insert)
  end
end)