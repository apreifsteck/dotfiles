# ~/.config/fish/config.fish: DO NOT EDIT -- this file has been generated
# automatically by home-manager.

# Only execute this file once per shell.
set -q __fish_home_manager_config_sourced; and exit
set -g __fish_home_manager_config_sourced 1

source /nix/store/h82dihsv433jb5pw75ls4g6nf47g9cs1-hm-session-vars.fish

/nix/store/d1qkyhb65yzn9wi5hagrwy8ar58kxc5h-mcfly-0.8.4/bin/mcfly init fish | source

source /nix/store/mwl0k6sg86h0wxsrkqdd60chwzvr8k8z-br.fish


status is-login; and begin

    # Login shell initialisation


end

status is-interactive; and begin

    # Abbreviations


    # Aliases
    alias ls eza
    alias k kubectl
    alias chez chezmoi

    # Interactive shell initialisation
    /nix/store/ga9pan2qnxh4g79vn3648akcy61ppbbd-zoxide-0.9.4/bin/zoxide init fish | source

    if test "$TERM" != dumb
        eval (/etc/profiles/per-user/austinreifsteck/bin/starship init fish)

    end

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
