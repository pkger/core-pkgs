name = "neovim"
description = "Vim-fork focused on extensibility and usability"
homepage = "https://neovim.io"
license = "Apache-2.0"
manteiners = "Diogo-ss"
url = "https://github.com/neovim/neovim/releases/download/v${{ pkg.version }}/nvim-linux64.tar.gz"

bin = "bin/nvim-linux64/bin/nvim"

checkver = {
	url = "https://api.github.com/repos/neovim/neovim/releases/latest",
	jsonpath = "tag_name",
	regex = "[Vv]?(.+)",
}

function install()
	system({ "-xzf", "nvim-linux64.tar.gz" })
end

function test()
	system({ "nvim", "--version" })
end
