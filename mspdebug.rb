require 'formula'

class Mspdebug <Formula
  url 'http://downloads.sourceforge.net/project/mspdebug/mspdebug-0.19.tar.gz'
  sha1 '329ad2c4cd9496dc7d24fccd59895c8d68e2bc9a'
  homepage 'http://mspdebug.sf.net/'
  head 'git://mspdebug.git.sourceforge.net/gitroot/mspdebug/mspdebug'

  depends_on 'libusb'
  depends_on 'libusb-compat'
  depends_on 'libelf'

  def install
    ENV["PREFIX"] = prefix
    inreplace "Makefile", "/opt/local", HOMEBREW_PREFIX # The makefile assumes MacPorts...
    system "make install"
  end

  def caveats
    <<-EOS.undent
        If you're using a RF2500-like device like the TI LaunchPad, you must
        install a codeless kext for the device to be recognized by mspdebug.

        More information is available at http://mspdebug.sourceforge.net/faq.html#rf2500_osx
    EOS
  end
end
