Miscellaneous Homebrew recipes
==============================

These homebrew recipes provide some additional software I'm interested in and need to hack on without relying on the merge process at the main repo.

How do I install these formulae?
--------------------------------
Just `brew tap cdlm/custom` and then `brew install <formula>`.

If the formula conflicts with one from mxcl/master or another tap, you can `brew install cdlm/custom/<formula>`.

You can also install via URL:

```
brew install https://raw.github.com/cdlm/homebrew-custom/master/<formula>.rb
```

What's in here?
---------------

### MSP430 tools ⚠️ OBSOLETE ⚠️

Development tools for the [Texas Instruments MSP430][msp430] platform, and especially for the [eZ430-Chronos watch][chronos] (apparently it's also used in sensor networks). I copied these formulas from [reid's fork][reid] and adapted them a bit, since they were 2 years old.

**Status:**

- `mspdebug` builds, not tried further.
- `llvm-msp430` fails to build, with no clear cue why.
- I'll try `mspgcc` otherwise.

[msp430]: http://www.ti.com/lsds/ti/microcontroller/16-bit_msp430/overview.page
[chronos]: http://processors.wiki.ti.com/index.php/EZ430-Chronos
[reid]: https://github.com/reid/homebrew/
