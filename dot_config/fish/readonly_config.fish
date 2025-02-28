# ~/.config/fish/config.fish: DO NOT EDIT -- this file has been generated
# automatically by home-manager.

# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1

# Set default editor to helix
set -gx EDITOR hx

status is-login; and begin

    # Login shell initialisation

end

status is-interactive; and begin

    # Abbreviations

    # Aliases
    alias ls eza
    alias k kubectl
    alias chez chezmoi

    # ~/.config/fish/config.fish

    # initializations
    starship init fish | source
    zoxide init fish | source
    mcfly init fish | source
    # add completions generated by Home Manager to $fish_complete_path
    begin
        set -l joined (string join " " $fish_complete_path)
        set -l prev_joined (string replace --regex "[^\s]*generated_completions.*" "" $joined)
        set -l post_joined (string replace $prev_joined "" $joined)
        set -l prev (string split " " (string trim $prev_joined))
        set -l post (string split " " (string trim $post_joined))
        set fish_complete_path $prev "/Users/austinreifsteck/.local/share/fish/home-manager_generated_completions" $post
    end

end
