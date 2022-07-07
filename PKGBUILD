# Maintainer: Sebastian Wiesner <sebastian@swsnr.de>
# Maintainer: Franklyn Tackitt <franklyn@tackitt.net>
# Maintainer: Kevin Del Castillo <quebin31@gmail.com>

pkgname=dracut-hook-uefi
pkgver=12
pkgrel=1
pkgdesc="Install/remove hooks for dracut unified kernel images for systemd-boot"
url=https://codeberg.org/flausch/pkgbuilds/src/branch/main/dracut-hook-uefi
arch=('any')
license=('APACHE')
depends=('dracut')
noextract=()
conflicts=(dracut-hook)
source=(
    "dracut-uefi"
    "90-dracut-install.hook"
    "91-dracut-remove.hook"
)
sha256sums=('98fd28dce6462bed1d965235a4d3ca44e7cdd83d8349677c17d141f0624ebaf2'
    '86cc4578da4ceb8b36a677594d4e260fc5e4897392ee92cfee79a178b044bdec'
    '1daaad5f60d89c5198419db7e8a8d7599e9a4e252907437a1dc8f65f2ccd61b8')

package() {
    install -Dm644 "${srcdir}/90-dracut-install.hook" "${pkgdir}/usr/share/libalpm/hooks/90-dracut-install.hook"
    install -Dm644 "${srcdir}/91-dracut-remove.hook" "${pkgdir}/usr/share/libalpm/hooks/91-dracut-remove.hook"
    install -Dm755 "${srcdir}/dracut-uefi" "${pkgdir}/usr/share/libalpm/scripts/dracut-uefi"
}
