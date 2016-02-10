name 'rack-gem'
default_version '1.6.4'

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  gem 'install rack' \
      " --version '#{version}'" \
      " --bindir '#{install_dir}/embedded/bin'" \
      ' --no-ri --no-rdoc', env: env
end
