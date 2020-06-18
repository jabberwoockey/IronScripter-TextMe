# IronScripter-TextMe
Iron Scripter: Text Me - A PowerShell Dialer Challenge

Powershell functions to convert letters to numbers and vice versa according to
the ITU E 1.161 International Standard.

You need WSL to be installed on your system for converting numbers to words,
also a package with dictionary words should be installed in WSL.

To install a package run one of the following commands in your default
distribution:

`sudo apt install wamerican` (102401 words)

`sudo apt install wamerican-large` (167303 words)

`sudo apt install wamerican-huge` (345470 words)

`sudo apt install wamerican-insane` (654895 words)

The biggest dictionary will be chosen automatically.

## Usage

`Convert-NumberToWord -Number 364,228`

`364 | Convert-NumberToWord`

`Convert-WordToNumber "cat"`

`"cat" | Convert-WordToNumber`

`(Convert-NumberToWord 364).Word`

---

https://ironscripter.us/text-me-a-powershell-dialer-challenge/

https://en.wikipedia.org/wiki/Telephone_keypad

https://en.wikipedia.org/wiki/E.161