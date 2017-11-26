# -*- encoding: utf-8 -*-
# stub: carrierwave-video 0.5.6 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-video".freeze
  s.version = "0.5.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rheaton".freeze]
  s.date = "2014-05-16"
  s.description = "Transcodes to html5-friendly videos.".freeze
  s.email = ["rachelmheaton@gmail.com".freeze]
  s.homepage = "https://github.com/rheaton/carrierwave-video".freeze
  s.licenses = ["MIT".freeze]
  s.requirements = ["ruby, version 1.9 or greater".freeze, "ffmpeg, version 0.11.1 or greater with libx256, libfaac, libtheora, libvorbid, libvpx enabled".freeze]
  s.rubyforge_project = "carrierwave-video".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Carrierwave extension that uses ffmpeg to transcode videos.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.10.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<streamio-ffmpeg>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 2.10.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<streamio-ffmpeg>.freeze, [">= 0"])
      s.add_dependency(%q<carrierwave>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 2.10.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<streamio-ffmpeg>.freeze, [">= 0"])
    s.add_dependency(%q<carrierwave>.freeze, [">= 0"])
  end
end
