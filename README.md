# DSStoreDump

DSStoreDump is a Python script for recursively downloading files listed in `.DS_Store` files on a web server.

## Requirements

- Python 3
- `requests` library
- `ds_store` library

## Installation

1. Ensure Python 3 is installed on your system.
2. Install required Python libraries:

```bash
pip3 install requests ds_store
```

3. Clone this repository or download the `DSStoreDump` script.
4. Make the script executable and move it to a location in your PATH:

```bash
make install
```

## Usage

```bash
DSStoreDump <URL>
```

- Replace `<URL>` with the URL of the `.DS_Store` file you want to start with.

### Example

```bash
DSStoreDump https://example.com/wp-content/uploads/.DS_Store
```

This script will download the `.DS_Store` file from the specified URL, list all files referenced within, and then download those files. If any of these files are also `.DS_Store` files, the script will recursively process them as well.

## Uninstallation

To uninstall DSStoreDump, run:

```bash
make uninstall
```

## License

MIT License

Copyright (c) 2024 Dimitrios Vlastaras

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
