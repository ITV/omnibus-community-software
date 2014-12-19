# Adapted from: chetan/omnibus-software-gpg

name 'cyrus-sasl'
default_version '2.1.26'

source :url => "ftp://ftp.cyrusimap.org/cyrus-sasl/cyrus-sasl-#{version}.tar.gz",
       :md5 => 'a7f4e5e559a0e37b3ffc438c9456e425'

relative_path "cyrus-sasl-#{version}"

configure_env = {
  'LDFLAGS'     => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  'CFLAGS'      => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  'LD_RUN_PATH' => "#{install_dir}/embedded/lib"
}

build do
  command "./configure --prefix=#{install_dir}/embedded", :env => configure_env
  command "make -j #{max_build_jobs}", :env => { 'LD_RUN_PATH' => "#{install_dir}/embedded/lib" }
  command 'make install'
end
