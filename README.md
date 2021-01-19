# dcape-app-gomodproxy - Golang modules proxy

[![GitHub Release][1]][2] [![GitHub code size in bytes][3]]() [![GitHub license][4]][5]

[1]: https://img.shields.io/github/release/dopos/dcape-app-gomodproxy.svg
[2]: https://github.com/dopos/dcape-app-gomodproxy/releases
[3]: https://img.shields.io/github/languages/code-size/dopos/dcape-app-gomodproxy.svg
[4]: https://img.shields.io/github/license/dopos/dcape-app-gomodproxy.svg
[5]: LICENSE

[athens](https://github.com/gomods/athens) application package for [dcape](https://github.com/dopos/dcape).

## Docker image used

* [athens](https://hub.docker.com/r/gomods/athens)

## Requirements

* linux 64bit (git, make, wget, gawk, openssl)
* [docker](http://docker.io)
* [dcape](https://github.com/dopos/dcape)
* Git service ([github](https://github.com), [gitea](https://gitea.io) or [gogs](https://gogs.io))

## Usage

* Gitea: Fork or mirror this repo in your Git service
* Drone: Activate repo
* Gitea: "Test delivery", config sample will be saved to enfist
* Enfist: Edit config and remove .sample from name
* Gitea: "Test delivery" again (or Drone: "Restart") - app will be installed and started on webhook host

## See also

* [Deploy apps with dcape](https://dopos.github.io/dcape/usage/apps/)

## License

The MIT License (MIT), see [LICENSE](LICENSE).

Copyright (c) 2021 Aleksey Kovrizhkin <lekovr+dopos@gmail.com>
