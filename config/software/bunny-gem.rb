name 'bunny-gem'
default_version '1.4.0'

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  gem 'install bunny' \
      " --version '#{version}'" \
      " --bindir '#{install_dir}/embedded/bin'" \
      ' --no-ri --no-rdoc', env: env
end
