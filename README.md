## pre-brunch
Want to run something on the command line everytime before [brunch](http://brunch.io) compiles? Easy.

## Usage
Add `"pre-brunch": "https://github.com/devel-pa/pre-brunch/archive/master.tar.gz"` to `package.json` of your brunch app.
Or `npm install pre-brunch --save`.

Then in your `config.coffee` just add any commands to the afterBrunch array.
For example, you might want to use styledocco to create a live styleguide of your stylesheets.

```coffeescript
exports.config =
  …
  plugins:
    preBrunch: [
      'styledocco -n "My Project" css'
    ]
```

Work as a linter.

## Credits

pre-brunch is a modified version of after-brunch: https://github.com/Creative-Licence-Digital/after-brunch
