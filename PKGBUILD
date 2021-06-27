# Maintainer: Greta Renzi <greta@lamu.ai>

pkgname=st
pkgver=0.8.4
pkgrel=1
pkgdesc='A simple terminal implementation for X.'
arch=('x86_64')
url=https://st.suckless.org
license=('MIT')
depends=(libxft)
optdepends=('picom: transparency support',
            'compton: transparency support',
            'picom-ibhagwan-git: transparency support')
source=(https://dl.suckless.org/$pkgname/$pkgname-$pkgver.tar.gz
	      https://st.suckless.org/patches/alpha/st-alpha-0.8.2.diff
      	https://st.suckless.org/patches/alpha_focus_highlight/st-focus-20200731-patch_alpha.diff
      	https://st.suckless.org/patches/anysize/st-anysize-0.8.4.diff
      	https://st.suckless.org/patches/bold-is-not-bright/st-bold-is-not-bright-20190127-3be4cf1.diff
      	https://st.suckless.org/patches/clipboard/st-clipboard-0.8.3.diff
      	https://st.suckless.org/patches/defaultfontsize/st-defaultfontsize-20210225-4ef0cbd.diff
      	https://st.suckless.org/patches/desktopentry/st-desktopentry-0.8.4.diff
      	https://st.suckless.org/patches/dynamic-cursor-color/st-dynamic-cursor-color-0.8.4.diff
      	https://st.suckless.org/patches/ligatures/0.8.3/st-ligatures-alpha-scrollback-20200430-0.8.3.diff
      	https://st.suckless.org/patches/scrollback/st-scrollback-20201205-4ef0cbd.diff
      	https://st.suckless.org/patches/scrollback/st-scrollback-mouse-20191024-a2c479c.diff
      	https://st.suckless.org/patches/scrollback/st-scrollback-mouse-altscreen-20200416-5703aa0.diff
      	https://st.suckless.org/patches/vertcenter/st-vertcenter-20180320-6ac8c8a.diff
      	https://st.suckless.org/patches/xresources/st-xresources-20200604-9ba7ecf.diff
        st-blinking_cursor-0.8.4-custom.diff
        st-delkey-0.8.4-custom.diff
        st-hidecursor-0.8.4-custom.diff
        st-newterm-0.8.4-custom.diff
        st-undercurl-0.8.4-custom.diff
      	patch
      	config)
sha256sums=('d42d3ceceb4d6a65e32e90a5336e3d446db612c3fbd9ebc1780bc6c9a03346a6'
            '9c5b4b4f23de80de78ca5ec3739dc6ce5e7f72666186cf4a9c6b614ac90fb285'
            'b24282d68d35ac6d797185b0ee1d10d2b2a9abc525406c8f6ebf41ff5316a0d2'
            '3851f7919e788cc6667ffdb28ca743188e2869a15f3fc34a8c0b39108d946ef0'
            '329169acac7ceaf901995d6e0897913089b799d8cd150c7f04c902f4a5b8eab2'
            '0f5ce33953abce74a9da3088ea35bf067a9a4cfeb9fe6ea9800268ce69e436c0'
            '159c4b83ebade7381d3dbc07faba40e5f1fd2a91b057765ef7f37e93c00d514a'
            '12d633b2157444d192e5645c9914a0fd82d52289a868d35dfa4c09db5670ffb3'
            'c942f73cd576c2d275dea21a733bc8bcfe66fb186b86563b03d42a123fbe93b8'
            'a7b3681d849fd8cca75cd38022a14fef2e26dc085bed1ebd8dcf0a65baa14898'
            '3b8c7d1815352cbfa2e100f6bb65e4c7d5a338952a6e7513b59a6a6297f32fb4'
            '319458d980195d18fa0f81a6898d58f8d046c5ff982ab872d741f54bb60e267d'
            'cb87eb654985da46ff63663407184402393ad3d3013c8795570552fe56a15b9d'
            '04e6a4696293f668260b2f54a7240e379dbfabbc209de07bd5d4d57e9f513360'
            '5be9b40d2b51761685f6503e92028a7858cc6571a8867b88612fce8a70514d5b'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP')

prepare () {
	cd "${srcdir}/${pkgname}-${pkgver}"
	cp -t . "${srcdir}/patch" "${srcdir}/config"
	./patch
	./config
  sed -i 's/tic -sx st.info//g' Makefile
}

build () {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make
}

package () {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make DESTDIR="${pkgdir}" PREFIX=/usr clean install
	install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/st/LICENSE"
	install -Dm644 README "${pkgdir}/usr/share/doc/st/README"
}
