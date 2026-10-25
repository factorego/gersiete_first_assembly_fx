local fuels = {}
if mods["pycoalprocessing"] then
    fuels = {"chemical", "jerry", "biomass"}
else
    fuels = {"chemical"}
end

data:extend(
{
  {
    type = "item",
    name = "first-assembling-machine",
    icon = "__gersiete_first_assembly_fx__/graphics/icons/burner-assembling-machine.png",
    icon_size = 32,
    order = "1[first-assembling-machine]",
    place_result = "first-assembling-machine",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "first-assembling-machine",
    enabled = false,
    ingredients =
    {
      {
     	type = "item",
	name = "iron-gear-wheel",
	amount = 5
      },
      {
     	type = "item",
	name = "iron-plate",
	amount = 9
      }
    },
    results = {
      {
	icon = "first-assembling-machine", 
	type = "item", 
	name = "first-assembling-machine", 
	amount_min = 1, 
	amount_max = 1
      }
    }
  },
  {
    type = "assembling-machine",
    name = "first-assembling-machine",
    icon = "__gersiete_first_assembly_fx__/graphics/icons/burner-assembling-machine.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "first-assembling-machine"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "assembling-machine",
graphics_set = {
    animation =
    {
      layers =
      {
        {
          filename = "__gersiete_first_assembly_fx__/graphics/entity/assembling-machine/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2 *2/3),
          scale = 2/3,
          hr_version =
          {
            filename = "__gersiete_first_assembly_fx__/graphics/entity/assembling-machine/hr-assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 *2/3),
            scale = 1/3
          }
        },
        {
          filename = "__gersiete_first_assembly_fx__/graphics/entity/assembling-machine/assembling-machine-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          repeat_count = 32,
          shift = {0.84 *2/3, -0.09 *2/3},
          scale = 2/3,
          tint = {r = 0.2, g = 0.2, b = 0.2},
        },
        {
          filename = "__gersiete_first_assembly_fx__/graphics/entity/assembling-machine/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5 *2/3, 5.5 *2/3),
          scale = 2/3,
          hr_version =
          {
            filename = "__gersiete_first_assembly_fx__/graphics/entity/assembling-machine/hr-assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 *2/3, 5 *2/3),
            scale = 1/3
          }
        }
      }
    }},
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting", "advanced-crafting"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "burner",
      fuel_categories = fuels,
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = {
            pollution = 20
        },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.5},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    energy_usage = "200kW",
    allowed_effects = {}
  },
}
)