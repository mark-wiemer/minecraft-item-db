# Minecraft item DB

A simple item database generated from Minecraft Wiki. Includes the code to regenerate the database when Minecraft Wiki updates.

## Overall design

1. Get list of all items from https://minecraft.fandom.com/wiki/Category:Items
1. Fetch the wiki page for each individual item (e.g. https://minecraft.fandom.com/wiki/Amethyst_Shard)
1. Extract the relevant information from the wiki page
1. Add the info to a row in the DB
1. Repeat for all items

## Building from source

### Machine dependencies

1. NodeJS
1. npm (comes with NodeJS)
1. Visual Studio Code

### Project setup

1. Clone this project into a new repo
1. `npm i`
1. You're done!

Optional:

1. Install the [recommended VS Code extensions](./.vscode/extensions.json)
1. Enable [`keybindings.json](./.vscode/keybindings.json) following the instructions in that file
