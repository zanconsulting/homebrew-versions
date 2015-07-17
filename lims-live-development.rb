#
# LIMS live development server
#
class LimsLiveDevelopment < Formula
  desc "LIMS Live Development Server"
  homepage "https://github.com/zanconsulting/lims-live-development"
  revision 1 # This is used when there's no new version but it needs recompiling for another reason.
             # 0 is default & unwritten.

  # The URL of the archive. Prefer https (security and proxy issues):
  url "https://github.com/zanconsulting/lims-live-development/releases/download/0.0.1/lims-live-development-0.0.1.tar.gz"

  # Generate with shasum -a 256 lims-live-development-0.0.1.tar.gz
  sha256 "e8e96350054d84864babdbd43e587dc288e719ab29213686f6fcbbbe2eaeddcd"



  ## Dependencies

  depends_on "fswatch"

  ## The install method.

  def install
    # Now the sources (from `url`) are downloaded, hash-checked and
    # Homebrew has changed into a temporary directory where the
    # archive has been unpacked or the repository has been cloned.


    # Need to install into the bin but the makefile doesn't mkdir -p prefix/bin?
    bin.mkpath

    # No "make", "install" available?
    bin.install "lims-live-development"
  end


end

__END__
