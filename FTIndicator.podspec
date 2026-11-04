Pod::Spec.new do |s|

  s.name         = "FTIndicator"
  s.version      = "1.2.9"
  s.summary      = "A lightwight UI package contains local notification, progress HUD, toast, with blur effect, elegant API and themes Support."
  s.description  = <<-DESC
          A lightwight UI package contains local notification, progress HUD, toast, with blur effect, elegant API and themes Support. Inspried by Apple's process indicator and notifications.
                   DESC
  s.author             = { "liufengting" => "wo157121900@me.com" }
  s.homepage     = "https://github.com/liufengting/FTIndicator"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.social_media_url   = "https://twitter.com/liufengting"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/liufengting/FTIndicator.git", :tag => "#{s.version}" }
  s.source_files  = "FTIndicator", "Sources/FTIndicator/**/*.{h,m}"
  s.resources    = "Sources/FTIndicator/**/*.{bundle}"
  s.requires_arc = true
  
  s.subspec 'FTNotificationIndicator' do |bs|
    bs.source_files  = "FTNotificationIndicator", "Sources/FTIndicator/FTNotificationIndicator/*.{h,m}", "Sources/FTIndicator/include/FTNotificationIndicator.h"
  end

  s.subspec 'FTProgressIndicator' do |bs|
    bs.source_files  = "FTProgressIndicator", "Sources/FTIndicator/FTProgressIndicator/*.{h,m}", "Sources/FTIndicator/include/FTProgressIndicator.h"
    bs.resources    = "Sources/FTIndicator/FTProgressIndicator/*.{bundle}"
  end

  s.subspec 'FTToastIndicator' do |bs|
    bs.source_files  = "FTToastIndicator", "Sources/FTIndicator/FTToastIndicator/**/*.{h,m}", "Sources/FTIndicator/include/FTToastIndicator.h"
  end

end
