# Copyright 2017 Xored Software, Inc.

import godot
import godotapi / [scene_tree, resource_loader, packed_scene, spatial,
                   global_constants, input_event_mouse_button, world, physics_direct_space_state]

gdobj MainPanel of Spatial:
  method ready*() =
    self.setProcessInput(true)

  method input*(event: InputEvent) =
    if event of InputEventMouseButton:
      let ev = event as InputEventMouseButton
      if ev.buttonIndex == BUTTON_LEFT:
        self.getTree().setInputAsHandled()
        let state = self.getWorld().directSpaceState
