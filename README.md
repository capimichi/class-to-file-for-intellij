# Class to file

This is a simple class to file converter, born to work with intellij environments.

## Installation

```bash
$ curl "https://raw.githubusercontent.com/capimichi/class-to-file-for-intellij/main/class_to_file.sh" > /usr/local/bin/class_to_file
$ chmod +x /usr/local/bin/class_to_file
```

Then you need to create the external command on intellij:

1. Open the settings
2. Go to Tools -> External Tools

[![External Tools](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen1.png?raw=true)](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen1.png?raw=true)

3. Click on the "+" button and fill the form with the following values:

[![External Tools](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen2.png?raw=true)](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen2.png?raw=true)

## Usage

You can use it raw:
```bash
$ class_to_file "source_path.ext" "class_content"
```

Or you can use it in intellij:

[![External Tools](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen3.png?raw=true)](https://github.com/capimichi/class-to-file-for-intellij/blob/main/screenshots/screen3.png?raw=true)