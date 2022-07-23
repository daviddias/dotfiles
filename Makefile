all: prepare dev productivity ctf cleanup

prepare:
	brew update
	brew upgrade
	
cleanup:
# Remove outdated versions from the cellar.
	brew cleanup

productivity:
# Install the Browsers
	brew install firefox
	brew install google-chrome
	brew install brave-browser
	brew install beaker-browser
# Apps
	brew install 1password
	brew install vlc
	brew install zoom
	brew install keybase
	brew install dropbox

social:
	brew install patchwork

dev:
# Install GNU core utilities (those that come with macOS are outdated).
	brew install coreutils
#	BREW_PREFIX=$(brew --prefix) 
#	ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
#	@echo "Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`."
# Install some other useful utilities like `sponge`.
	brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
	brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
	brew install gnu-sed
	brew install wget
# Install GnuPG to enable PGP-signing commits.
	brew install gnupg
# Install more recent versions of some macOS tools.
	brew install vim
	brew install grep
	brew install openssh
	brew install screen
# Install font tools.
	brew tap bramstein/webfonttools
	brew install sfnt2woff
	brew install sfnt2woff-zopfli
	brew install woff2
# Install other useful binaries.
	brew install ack
# brew install exiv2
	brew install git
	brew install git-lfs
	brew install imagemagick
	brew install lua
	brew install lynx
	brew install p7zip
	brew install pigz
	brew install pv
	brew install rename
	brew install rlwrap
	brew install ssh-copy-id
	brew install tree
	brew install vbindiff
	brew install zopfli
# Install more dev tools
	brew install node
	brew install git
	brew install diff-so-fancy
	brew install ipfs
	brew install wget
	brew install watch
	brew install imageoptim
	brew install gpg-suite
	brew install ag
	brew install docker
# Install node packages
	npm install -g n
	npm install -g ipfs
	npm install -g iim
	npm install -g asciify
	npm install -g speed-test
	npm install -g wifi-password-cli
	npm install -g standard
	npm install -g npm-check-updates
	npm install -g thanks

# Install some CTF tools; see https://github.com/ctfs/write-ups.
ctf:
	brew install aircrack-ng
	brew install bfg
	brew install binutils
	brew install binwalk
	brew install cifer
	brew install dex2jar
	brew install dns2tcp
	brew install fcrackzip
	brew install foremost
	brew install hashpump
	brew install hydra
	brew install john
	brew install knock
	brew install netpbm
	brew install nmap
	brew install pngcheck
	brew install socat
	brew install sqlmap
	brew install tcpflow
	brew install tcpreplay
	brew install tcptrace
	brew install ucspi-tcp 
	brew install xpdf
	brew install xz