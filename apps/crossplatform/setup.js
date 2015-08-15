require('shelljs/global')

whoami = exec('whoami').output
os = process.platform
// Sublime Text 3
subl3 = {
	darwin: '/Users/${whoami}/Library/Application Support/Sublime Text 3/Packages/User'
}
ln '-s', "${dotfiles}/apps/crossplatform/subl3", subl3[os]