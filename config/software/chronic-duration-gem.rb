name 'chronic-duration-gem'
default_version '0.10.6'

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  gem 'install chronic_duration' \
      " --version '#{version}'" \
      " --bindir '#{install_dir}/embedded/bin'" \
      ' --no-ri --no-rdoc', env: env
end
