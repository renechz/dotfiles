import sublime, sublime_plugin

class EnterCommandModeOnSave(sublime_plugin.EventListener):
    def on_pre_save(self, view):
      # Activate it on your User preferences
      if view.settings().get("enter_command_mode_on_save") == True:
          # For Vintage package
          view.run_command("exit_insert_mode")
          view.run_command("exit_visual_mode")

          # For Vintageous package
          # view.run_command("vi_enter_normal_mode")
