# Maintainer: Sebastian Wiesner <sebastian@swsnr.de>
# Maintainer: Franklyn Tackitt <franklyn@tackitt.net>
# Maintainer: Kevin Del Castillo <quebin31@gmail.com>

pkgname=dracut-hook-uefi
pkgver=0.7.0
pkgrel=1
pkgdesc="Install/remove hooks for dracut unified kernel images for systemd-boot"
url=https://dracut.wiki.kernel.org/index.php/Main_Page
arch=('any')
license=('BSD')
depends=('dracut')
noextract=()
conflicts=(dracut-hook)
source=(
  "dracut-install"
  "dracut-remove"
  "90-dracut-install.hook"
  "60-dracut-remove.hook"
)
sha256sums=('7268f061a9de3dcaff8b5346fb8e3d85cee06140a33a18318b6b539db49ee60b'
            '85d5a588984c9c204064926bcdf61dcdbf8d2424efe91389e07669b08ab0ef75'
            '18778db39cd46c6efc7f8fb3b7d6a5007d53bd5dbb78f76b71de5074fe067c4e'
            '6907029a32d144669cb8d312a788598a43c1a45647c33fa66f2fdf165aea71f8')

package() {
  install -Dm644 "${srcdir}/90-dracut-install.hook" "${pkgdir}/usr/share/libalpm/hooks/90-dracut-install.hook"
  install -Dm644 "${srcdir}/60-dracut-remove.hook"  "${pkgdir}/usr/share/libalpm/hooks/60-dracut-remove.hook"
  install -Dm755 "${srcdir}/dracut-install"         "${pkgdir}/usr/share/libalpm/scripts/dracut-install"
  install -Dm755 "${srcdir}/dracut-remove"          "${pkgdir}/usr/share/libalpm/scripts/dracut-remove"
}
