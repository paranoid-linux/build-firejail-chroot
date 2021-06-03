# Firejail Build Chroot
[heading__top]:
  #build-firejail-chroot
  "&#x2B06; Initializes new chroot file systems compatible with Firejail sandboxing utility"


Initializes new chroot file systems compatible with Firejail sandboxing utility


## [![Byte size of Firejail Build Chroot][badge__main__firejail_build_chroot__source_code]][firejail_build_chroot__main__source_code] [![Open Issues][badge__issues__firejail_build_chroot]][issues__firejail_build_chroot] [![Open Pull Requests][badge__pull_requests__firejail_build_chroot]][pull_requests__firejail_build_chroot] [![Latest commits][badge__commits__firejail_build_chroot__main]][commits__firejail_build_chroot__main] 


---


- [:arrow_up: Top of Document][heading__top]

- [:building_construction: Requirements][heading__requirements]

- [:zap: Quick Start][heading__quick_start]

  - [Clone][heading__clone]
  - [Install][heading__install]
  - [Uninstall][heading__uninstall]
  - [Upgrade][heading__upgrade]

- [&#x1F9F0; Usage][heading__usage]

- [&#x1F5D2; Notes][heading__notes]

- [:chart_with_upwards_trend: Contributing][heading__contributing]

  - [:trident: Forking][heading__forking]
  - [:currency_exchange: Sponsor][heading__sponsor]

- [:card_index: Attribution][heading__attribution]

- [:balance_scale: Licensing][heading__license]


---



## Requirements
[heading__requirements]:
  #requirements
  "&#x1F3D7; Prerequisites and/or dependencies that this project needs to function properly"


This project in intended to be used with [Firejail][firejail__source], ensure that Firejail is available, of version `0.9.63` or greater, and has `chroot` support enabled...


```Bash
firejail --version
#> firejail version 0.9.63
#>
#> Compile time support:
#> ...
#>         - chroot support is enabled
#> ...
```


---


This repository makes use of Git Submodules to track script dependencies, to avoid incomplete downloads clone with the `--recurse-submodules` option.


______


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; Perhaps as easy as one, 2.0,..."


> Perhaps as easy as one, 2.0,...


### Clone
[heading__clone]: #clone


If utilizing the project on a multi-user device then clone with `sudo`/`root` level permissions...


```Bash
cd /usr/local/etc

sudo git clone --recurse-submodules git@github.com:paranoid-linux/build-firejail-chroot.git
```


> Note, if installing system-wide then `upgrade`, and `uninstall` Makescript targets will require `sudo`/`root` level permissions too.


Else if using this project on a single-user device, then it _should_ be okay to clone to a user home directory path...


```Bash
mkdir ~/git/hub/paranoid-linux

cd ~/git/hub/paranoid-linux

git clone --recurse-submodules git@github.com:paranoid-linux/build-firejail-chroot.git
```


---


### Install
[heading__install]: #install


After cloning this repository run the `Makefile` script to symbolically link the project script...


```Bash
cd ~/git/hub/paranoid-linux/build-firejail-chroot

make install
```


---


### Uninstall
[heading__uninstall]: #uninstall


To remove symbolic links run the `uninstall` make target...


```Bash
cd ~/git/hub/paranoid-linux/build-firejail-chroot

make uninstall
```


---


### Upgrade
[heading__upgrade]: #upgrade


Run the `upgrade` make target to update this project...


```Bash
cd ~/git/hub/paranoid-linux/build-firejail-chroot

make upgrade
```


______


## Usage
[heading__usage]:
  #usage
  "&#x1F9F0; How to utilize this repository"


Print available command line parameters via `--help` or `-h` option...


```Bash
build-firejail-chroot.sh --help
```


Build a chroot file system based on Debian (accepts defaults)...


```Bash
sudo build-firejail-chroot.sh --mount-name debian jailed_server
```


Mount/start Firejailed chroot shell session with mount script...


```Bash
jailed_debian.sh
```


... or run command within Firejail chroot session...


```Bash
jailed_debian.sh ls -ahl /home
```


______


## Notes
[heading__notes]:
  #notes
  "&#x1F5D2; Additional things to keep in mind when developing"


This repository may not be feature complete and/or fully functional, Pull Requests that add features or fix bugs are certainly welcomed.


---


Run project script with `-h` or `--help` option to list available parameters and currently set values...


```Bash
build-firejail-chroot -h
```


---


To show available make command options run with `list` option...


```Bash
make list
```


______


## Contributing
[heading__contributing]:
  #contributing
  "&#x1F4C8; Options for contributing to build-firejail-chroot and paranoid-linux"


Options for contributing to build-firejail-chroot and paranoid-linux


---


### Forking
[heading__forking]:
  #forking
  "&#x1F531; Tips for forking build-firejail-chroot"


Start making a [Fork][firejail_build_chroot__fork_it] of this repository to an account that you have write permissions for.


- Add remote for fork URL. The URL syntax is _`git@github.com:<NAME>/<REPO>.git`_...


```Bash
cd ~/git/hub/paranoid-linux/build-firejail-chroot

git remote add fork git@github.com:<NAME>/build-firejail-chroot.git
```


- Commit your changes and push to your fork, eg. to fix an issue...


```Bash
cd ~/git/hub/paranoid-linux/build-firejail-chroot


git commit -F- <<'EOF'
:bug: Fixes #42 Issue


**Edits**


- `<SCRIPT-NAME>` script, fixes some bug reported in issue
EOF


git push fork main
```


> Note, the `-u` option may be used to set `fork` as the default remote, eg. _`git push fork main`_ however, this will also default the `fork` remote for pulling from too! Meaning that pulling updates from `origin` must be done explicitly, eg. _`git pull origin main`_


- Then on GitHub submit a Pull Request through the Web-UI, the URL syntax is _`https://github.com/<NAME>/<REPO>/pull/new/<BRANCH>`_


> Note; to decrease the chances of your Pull Request needing modifications before being accepted, please check the [dot-github](https://github.com/paranoid-linux/.github) repository for detailed contributing guidelines.


---


### Sponsor
  [heading__sponsor]:
  #sponsor
  "&#x1F4B1; Methods for financially supporting paranoid-linux that maintains build-firejail-chroot"


Thanks for even considering it!


Via Liberapay you may [![sponsor__shields_io__liberapay]][sponsor__link__liberapay] on a repeating basis.


Regardless of if you're able to financially support projects such as build-firejail-chroot that paranoid-linux maintains, please consider sharing projects that are useful with others, because one of the goals of maintaining Open Source repositories is to provide value to the community.


______


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."


- [GitHub -- `github-utilities/make-readme`](https://github.com/github-utilities/make-readme)


______


## License
[heading__license]:
  #license
  "&#x2696; Legal side of Open Source"


```
Initializes new chroot file systems compatible with Firejail sandboxing utility
Copyright (C) 2020 S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```


For further details review full length version of [AGPL-3.0][branch__current__license] License.



[branch__current__license]:
  /LICENSE
  "&#x2696; Full length version of AGPL-3.0 License"


[badge__commits__firejail_build_chroot__main]:
  https://img.shields.io/github/last-commit/paranoid-linux/build-firejail-chroot/main.svg

[commits__firejail_build_chroot__main]:
  https://github.com/paranoid-linux/build-firejail-chroot/commits/main
  "&#x1F4DD; History of changes on this branch"


[firejail_build_chroot__community]:
  https://github.com/paranoid-linux/build-firejail-chroot/community
  "&#x1F331; Dedicated to functioning code"


[issues__firejail_build_chroot]:
  https://github.com/paranoid-linux/build-firejail-chroot/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."

[firejail_build_chroot__fork_it]:
  https://github.com/paranoid-linux/build-firejail-chroot/
  "&#x1F531; Fork it!"

[pull_requests__firejail_build_chroot]:
  https://github.com/paranoid-linux/build-firejail-chroot/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"

[firejail_build_chroot__main__source_code]:
  https://github.com/paranoid-linux/build-firejail-chroot/
  "&#x2328; Project source!"

[badge__issues__firejail_build_chroot]:
  https://img.shields.io/github/issues/paranoid-linux/build-firejail-chroot.svg

[badge__pull_requests__firejail_build_chroot]:
  https://img.shields.io/github/issues-pr/paranoid-linux/build-firejail-chroot.svg

[badge__main__firejail_build_chroot__source_code]:
  https://img.shields.io/github/repo-size/paranoid-linux/build-firejail-chroot


[sponsor__shields_io__liberapay]:
  https://img.shields.io/static/v1?logo=liberapay&label=Sponsor&message=paranoid-linux

[sponsor__link__liberapay]:
  https://liberapay.com/paranoid-linux
  "&#x1F4B1; Sponsor developments and projects that paranoid-linux maintains via Liberapay"


[firejail__source]:
  https://github.com/netblue30/firejail
  "Source code repository for Firejail"

