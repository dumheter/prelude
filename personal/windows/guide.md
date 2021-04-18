# Auto Start Emacs Daemon for Windows
1. Open explorer and type `shell:startup`.
2. Now create a shortcut and write `"C:\path\to\runemacs.exe" --daemon`
3. Profit.

# Open With
1. create a shortcut, write '"C:\Program Files\Emacs\bin\emacsclientw.exe" -n "%1"'
2. place it somewhere where you can easily find it.

# Context Menu
1. Run the regedit scripts, no_alternative is the winner so far.

# Clangd
for clangd to understand windows compile commands, put something like the .clangd file in the project root (where .projectile is).
