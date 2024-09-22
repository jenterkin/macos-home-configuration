{ ... }:

{
  programs.zellij = {
    enable = true;

    settings = {
      default_layout = "compact";

      mouse_mode = true;
      ui.pane_frames.rounded_corners = true;
      keybinds = {
        unbind = [ "Ctrl n" "Ctrl r" ];

        normal = {
          "bind \"Alt H\"" = {
            MovePane = "Left";
          };
          "bind \"Alt J\"" = {
            MovePane = "Down";
          };
          "bind \"Alt K\"" = {
            MovePane = "Up";
          };
          "bind \"Alt L\"" = {
            MovePane = "Right";
          };
        };
      };

      theme = "custom";
      themes = {
        custom = {
          fg = "#0B0E14";
          bg = "#1F2430";
          black = "#0B0E14";
          red = "#D95757";
          blue = "#7FD962";
          yellow = "#FF8F40";
          green = "#73B8FF";
          magenta = "#73B8FF";
          cyan = "#FF8F40";
          white = "#BFBDB6";
          orange = "#FF8F40";
        };
      };
    };
  };
}
