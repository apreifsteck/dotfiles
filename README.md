Dotfiles managed with [Chezmoi](https://www.chezmoi.io/)

Here's a [guide](https://developer.1password.com/docs/ssh/agent/advanced/#use-multiple-github-accounts) to follow when you need to 
use multiple github accounts

## TODO:
- See if you can get a way to save your zen settings by default

## Manual setup steps
1. Install 1password
2. set the hostname chezmoi expects with `sudo hostnamectl set-hostname austin-arch`
3. keyboard key repeat delay: 300ms, rate: 40 repeats/s
4. install the bitwarden standalone CLI tool
5. install bitwarden from flatpak

## Things to note for Linux
- You configure how your tiling is done in system settings -> shortcuts -> kwin
- You configure copy paste stuff in system settings -> shortcuts -> file 

### Not automated actions
- https://www.reddit.com/r/linux_gaming/comments/11yp7ig/pipewire_audio_stuttering_when_playing_games_or/
  - This one seems to have fixed it. I did this and then restarted my computer, played 2 rounds of rocket league training without
  hearing anything.
  - Later, I haven't had this issue. Did factory reset my computer once though
  - [followed](https://discuss.cachyos.org/t/no-printer-option-in-settings/9163) for printer setup
