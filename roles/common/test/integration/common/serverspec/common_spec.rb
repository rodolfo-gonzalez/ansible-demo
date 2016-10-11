require 'serverspec'
set :backend, :exec

context 'with packages ' do
  [
    'htop',
    'tree',
    'figlet',
    'cowsay'
  ].each do |pkg|
    describe package(pkg) do
      it { should be_installed}
    end
  end
 end
