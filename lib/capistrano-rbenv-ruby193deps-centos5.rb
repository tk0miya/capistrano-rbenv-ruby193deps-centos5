require "capistrano-platform-recognizer"
require "capistrano-rbenv-ruby193deps-centos5/version"


Capistrano::Configuration.instance.load do
  namespace :rbenv do
    namespace :ruby193deps do
      namespace :centos5 do
        task(:install_i386,
               :only => {:distro => :centos5, :arch => :i386},
               :except => { :no_release => true },
               :on_no_matching_servers => :continue) do
          install(:i386)
        end
        before 'rbenv:setup', 'rbenv:ruby193deps:centos5:install_i386'

        task(:install_x86_64,
               :only => {:distro => :centos5, :arch => :x86_64},
               :except => { :no_release => true },
               :on_no_matching_servers => :continue) do
          install(:x86_64)
        end
        before 'rbenv:setup', 'rbenv:ruby193deps:centos5:install_x86_64'

        def install(arch)
          urls = %w(http://dl.fedoraproject.org/pub/epel/5/x86_64/perl-Error-0.17010-1.el5.noarch.rpm
                    http://dl.fedoraproject.org/pub/epel/5/x86_64/perl-Git-1.7.4.1-1.el5.x86_64.rpm
                    http://dl.fedoraproject.org/pub/epel/5/x86_64/git-1.7.4.1-1.el5.x86_64.rpm
                    http://dl.iuscommunity.org/pub/ius/stable/Redhat/5/x86_64/autoconf26x-2.63-4.ius.el5.noarch.rpm)

          filenames = []
          urls.each do |url|
            url.gsub!('x86_64', arch.to_s)
            filename = "/tmp/#{File.basename(url)}"

            run "wget -O #{filename} #{url}"
            filenames << filename
          end

          run "#{sudo} rpm -ivh #{filenames.join(" ")} || true"
          run "rm #{filenames.join(" ")}"
        end
      end
    end
  end
end
