REPOSITORY_URL="https://github.com/kws9/chhosts".freeze
HOMEBREW_CHHOSTS_VERSION="0.0.1".freeze

class Chhosts < Formula
  desc "Easy to switch hosts."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_CHHOSTS_VERSION}.tar.gz",
    :tag => HOMEBREW_CHHOSTS_VERSION.to_s
  sha256 "19a66112127978d3bfd44d43f5a74d1b8cdb8ab3e436dc3b3ed2507012446cee"
  head "#{REPOSITORY_URL}.git", :branch => "master"
  def install
    prefix.install "bin"
    prefix.install "hosts"
  end

  test do
    system "false"
  end
end
