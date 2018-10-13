#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu          {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu       {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator            {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                    {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file   {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox    {raw => q(xml data)},
    begin_cat: beginning of a category              {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                    {end_cat => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                {exit => ["label", "icon"]},

=cut

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [
    # Format:  NAME, LABEL, ICON
    {item => ['echo hai', '', '/home/b3we/Pictures/icon/272727.png']},
    #{item => ['exo-open --launch TerminalEmulator', 'Terminal', 'terminal']},
    #{item => ['exo-open --launch WebBrowser ', 'Web Browser', 'web-browser']},
    #{item => ['exo-open --launch FileManager', 'File Manager', 'file-manager']},
    #{sep => undef},
    {begin_cat => ['Hell', '/home/b3we/Pictures/icon/devil-diablo.png']},
        {cat => ['utility', 'Accessories', 'applications-utilities']},
        {cat => ['development', 'Development', 'applications-development']},
        {cat => ['education', 'Education', 'applications-science']},
        {cat => ['game', 'Games', 'applications-games']},
        {cat => ['graphics', 'Graphics', 'applications-graphics']},
        {cat => ['audiovideo', 'Multimedia', 'applications-multimedia']},
        {cat => ['network', 'Network', 'applications-internet']},
        {cat => ['office', 'Office', 'applications-office']},
        {cat => ['other', 'Other', 'applications-other']},
        {cat => ['settings', 'Settings', 'gnome-settings']},
        {cat => ['system', 'System', 'applications-system']},
    {end_cat => undef},
    {begin_cat => ['Misc', '/home/b3we/Pictures/icon/gear.png']},
      {begin_cat => ['Openbox', 'openbox']},
        {item => ['obconf', 'Configuration', 'theme']},
        {item => ['kickshaw', 'Menu Editor', 'openbox']},
        {item => ['obkey', 'Keybind Editor', 'openbox']},
        {item => ['ob-autostart', 'GUI Autostart Editor', 'openbox']},
        {sep => undef},
        {item => ["exo-open ~/.config/openbox/menu.xml", 'Edit menu.xml', 'text-xml']},
        {item => ["exo-open ~/.config/openbox/rc.xml", 'Edit rc.xml', 'text-xml']},
        {item => ["exo-open ~/.config/openbox/autostart", 'Edit autostart', 'text-xml']},
        {sep => undef},
        {item => ['openbox --restart', 'Openbox Restart', 'openbox']},
        {item => ['openbox --reconfigure', 'Openbox Reconfigure', 'openbox']},
      {end_cat => undef},
      {pipe => ['manjaro-polybar-pipemenu', 'Polybar', 'polybar']},
      {pipe => ['manjaro-conky-pipemenu', 'Conky', 'conky']},
      {pipe => ['manjaro-tint2-pipemenu', 'Tint2', 'tint2']},
      {pipe => ['manjaro-compositor', 'Compositor', 'compton']},
      {begin_cat => ['System', 'system-settings']},
        {item => ['lxappearance', 'LXAppearance', 'theme']},
        {item => ['xfce4-appearance-settings', 'Apperance', 'theme']},
        {item => ['pavucontrol', 'Audio Settings', 'multimedia-volume-control']},
        {item => ['pamac-manager', 'Add/Remove Software', 'pamac-manager']},
        {item => ['arandr', 'Screen Layout', 'xfce4-display-settings']},
        {item => ['gksu thunar', 'Root File Manager', 'thunar']},
        {item => ['xfce4-settings-manager', 'Settings Manager', 'xfce4-settings-manager']},        
      {end_cat => undef},
      {sep => undef},
      {item => ['nitrogen', 'Change Wallpaper', 'nitrogen']},
      {item => ['manjaro-panel-chooser', 'Panel Chooser', 'panel']},
      {item => ['rofi-theme-selector', 'Rofi Theme', 'theme']},
    {end_cat => undef},    
    {sep => undef},
    {item => ['lockscreen -p', 'Kuncy', '/home/b3we/Pictures/icon/kisspng-padlock-computer-icons-user-clip-art-5b2fd9083c2209.0571308115298624082463.png']},
    {item => ['rofr.sh -l', 'Out Suw', '/home/b3we/Pictures/icon/power-512.png']},
    {item => ['echo hai', '', '/home/b3we/Pictures/icon/272727.png']},
    ]